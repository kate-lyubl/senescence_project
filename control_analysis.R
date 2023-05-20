setwd("/home/kate/bioinf_project/")
##########################
# 1. Read data
##########################

df_1 <- read.table("early_counts.txt", sep="\t", header = T)
df_2 <- read.table("old_analysis.txt", sep="\t", header = T)

df <- cbind(df_1, df_2[, -1])
head(df)

df <- df[, c(1:3, 14, 16, 18, 13, 15, 17)]

for (i in 2:3){
  colnames(df)[i] <- paste0("Young", i-1)
}

for (i in 4:6){
  colnames(df)[i] <- paste0("Medium", i-3)
}

for (i in 7:9){
  colnames(df)[i] <- paste0("Old", i-6)
}

row.names(df) <- df[, 1]
df <- as.matrix(df[, -1])

head(df)

##########################
# 2. Cut off
##########################

library(DESeq2)
library(ggplot2)
library(ggprism)

cond_1 <- rep("Young", 2)
cond_2 <- rep("Medium", 3)
cond_3 <- rep("Old", 3)

thresholds <- seq(0, 20, 1)
dge_genes <- c()

for (threshold in thresholds){
  keep <- rowSums(df>threshold) >= 2
  df_filtered <- df[keep,]
  samples <- colnames(df_filtered)
  condition <- factor(c(cond_1, cond_2, cond_3))
  colData <- data.frame(samples=samples, condition=condition)

  # Create DESEq2 dataset.
  dds <- DESeqDataSetFromMatrix(countData=df_filtered, colData=colData, design = ~condition)

  #Set the reference to be compared
  dds$condition <- relevel(dds$condition,"Young")

  # Run deseq
  dds <- DESeq(dds)

  # Format the results.
  res_1 <- results(dds, contrast=c("condition", "Medium", "Young"))
  res_2 <- results(dds, contrast=c("condition", "Old", "Young"))


  # Sort the results data frame by the padj and foldChange columns.
  sorted_1 <- res_1[with(res_1, order(padj, -log2FoldChange)), ]
  sorted_2 <- res_2[with(res_2, order(padj, -log2FoldChange)), ]
  # Turn it into a dataframe to have proper column names.
  sorted.df_1 <- data.frame("id"=rownames(sorted_1),sorted_1)
  sorted.df_2 <- data.frame("id"=rownames(sorted_2),sorted_2)

  # Select significant by Bonferoni
  sig.df_1 <- subset(sorted.df_1, padj < 0.05)
  sig.df_2 <- subset(sorted.df_2, padj < 0.05)

  # Save significant genes
  sig_genes_1 <- unique(sig.df_1$id)
  sig_genes_2 <- unique(sig.df_2$id)
  dge_genes <- c(dge_genes, length(unique(c(sig_genes_1, sig_genes_2))))
}

ggplot(data.frame(t = thresholds, n = dge_genes), aes(t, n))+
  geom_point()+
  theme_prism()

##########################
# 3. DEG
##########################
library(DESeq2)

cond_1 <- rep("Young", 2)
cond_2 <- rep("Medium", 3)
cond_3 <- rep("Old", 3)

# Read the data from the standard input.
keep <- rowSums(df>4) >= 2
df_filtered <- df[keep,]
countData <- df_filtered

# Build the dataframe from the conditions

samples <- colnames(df_filtered)
condition <- factor(c(cond_1, cond_2, cond_3))
colData <- data.frame(samples=samples, condition=condition)

# Create DESEq2 dataset.
dds <- DESeqDataSetFromMatrix(countData=df_filtered, colData=colData, design = ~condition)

#Set the reference to be compared
dds$condition <- relevel(dds$condition,"Young")

# Run deseq
dds <- DESeq(dds)

# Format the results.
res_1 <- results(dds, contrast=c("condition", "Medium", "Young"))
res_2 <- results(dds, contrast=c("condition", "Old", "Young"))


# Sort the results data frame by the padj and foldChange columns.
sorted_1 <- res_1[with(res_1, order(padj, -log2FoldChange)), ]
sorted_2 <- res_2[with(res_2, order(padj, -log2FoldChange)), ]
# Turn it into a dataframe to have proper column names.
sorted.df_1 <- data.frame("id"=rownames(sorted_1),sorted_1)
sorted.df_2 <- data.frame("id"=rownames(sorted_2),sorted_2)

# Select significant by Bonferoni
sig.df_1 <- subset(sorted.df_1, padj < 0.05)
sig.df_2 <- subset(sorted.df_2, padj < 0.05)

# Save significant genes
sig_genes_1 <- unique(sig.df_1$id)
sig_genes_2 <- unique(sig.df_2$id)

df_dge <- merge(sig.df_1[, c(1, 3, 7)], sig.df_2[, c(1, 3, 7)], by = "id", all = T)

colnames(df_dge)[2:5] <- c("FC_M", "pvalue_M", "FC_S", "pvalue_S")
colnames(df_dge)[1] <- "gene"

# Save significant genes
sig_genes <- unique(c(sig.df_1$id, sig.df_2$id))

# Get normalized counts and write this to a file
nc <- counts(dds,normalized=TRUE)
nc_sig <- nc[sig_genes, ]


##########################
# 4. Heatmap
##########################
library(gplots)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(ggprism)

dds_norm <- rlog(dds)
# Calculate the variance for each gene
variances <- apply(assay(dds_norm), 1, var)
# Determine the upper quartile variance cutoff value
upper_var <- quantile(variances, 0.75)
# Filter the data choosing only genes whose variances are in the upper quartile
df_by_var <- data.frame(assay(dds_norm)) %>%
  dplyr::filter(variances > upper_var)
vals <- as.matrix(df_by_var)
gene <- row.names(df_by_var)

# Adds a little noise to each element
# To avoid the clusteing function failing on zero
# variance datalines.
vals <- jitter(vals, factor = 1, amount=0.00001)


# Calculate zscore
score <- NULL
for (i in 1:nrow(vals)) {
  row <- vals[i,]
  zscore <- (row-mean(row))/sd(row)
  score <- rbind(score,zscore)
}

row.names(score) <- gene
zscore <- score

# Generate heatmap
mat <- as.matrix(zscore)

colors <- colorRampPalette(c("red", "black", "green"),space="rgb")(256)
heatmap.2(mat,col=colors,density.info="none",
          trace="none", dendrogram = "column",
          ColSideColors = c(rep("#fcdfa6", 2), rep("#7ab643", 3), rep("#de7053", 3)), srtCol=45)


plotPCA(dds_norm) +
  geom_text(aes(label=name),vjust=-1)+
  ylim(NA, 15)+
  xlim(-35, NA)+
  theme_prism()



##########################
# 5. Venn Diagrams
##########################
library(VennDiagram)
library(RColorBrewer)

venn_plot_two <- function (x, names, filename){
  myCol <- brewer.pal(2, "Pastel2")
  library(VennDiagram)
  grid.newpage()
  venn_object <- venn.diagram(x,
                              filename = filename,
                              category.names = names,
                              disable.logging = T,
                              lwd = 2,
                              lty = 'blank',
                              fill = myCol[1:2],
                              imagetype="png" ,
                              height = 700 ,
                              width = 700 ,
                              resolution = 300,
                              compression = "lzw",
                              cex = .6,
                              fontface = "bold",
                              fontfamily = "sans",
                              cat.cex = 0.6,
                              cat.fontface = "bold",
  )
}

venn_main_two <- function (data, sample_index, samples, filename){
  first <- unique(na.omit(data[abs(data[, sample_index[1]]) > 1, c(1, sample_index[1])])$gene)
  second <- unique(na.omit(data[abs(data[, sample_index[2]]) > 1, c(1, sample_index[2])])$gene)
  venn_plot_two(list(first, second), samples, paste0(filename, "_all.png"))

  first_down <- unique(na.omit(data[data[, sample_index[1]] < -1, c(1, sample_index[1])])$gene)
  second_down <- unique(na.omit(data[data[, sample_index[2]] < -1, c(1, sample_index[2])])$gene)
  venn_plot_two(list(first_down, second_down), samples, paste0(filename, "_down.png"))

  first_up <- unique(na.omit(data[data[, sample_index[1]] > 1, c(1, sample_index[1])])$gene)
  second_up <- unique(na.omit(data[data[, sample_index[2]] > 1, c(1, sample_index[2])])$gene)
  venn_plot_two(list(first_up, second_up), samples, paste0(filename, "_up.png"))
}

venn_main_two(df_dge, c(2, 4), c("Medium", "Senescent"), "iDEP_control/venn")

##########################
# 6. Pathway analysis
##########################
library(ReactomePA)
library(dplyr)
library(org.Hs.eg.db)

df_dge <- df_dge %>%
  mutate(entrez = mapIds(org.Hs.eg.db, keys = df_dge$gene,
                         column = "ENTREZID", keytype = "SYMBOL")) %>%
  filter(!is.na(entrez))

original_gene_list <- df_dge$FC_M
names(original_gene_list) <- df_dge$entrez
gene_list<-na.omit(original_gene_list)
gene_list = sort(gene_list, decreasing = TRUE)

barplot(gene_list)

y <- gsePathway(gene_list,
                pvalueCutoff=0.2,
                pAdjustMethod="BH", verbose=FALSE)
pathways_M <- as.data.frame(y)

library(DOSE)
dotplot(y, title = "Enriched Pathways" , split=".sign") + facet_grid(.~.sign)

original_gene_list <- df_dge$FC_S
names(original_gene_list) <- df_dge$entrez
gene_list<-na.omit(original_gene_list)
gene_list = sort(gene_list, decreasing = TRUE)

y <- gsePathway(gene_list,
                pvalueCutoff=0.2,
                pAdjustMethod="BH", verbose=FALSE)
pathways_S <- as.data.frame(y)

library(DOSE)
dotplot(y, title = "Enriched Pathways" , split=".sign") + facet_grid(.~.sign)

##########################
# 7. Pathway trees
##########################
library(igraph)
library(ggraph)

pathways <- list(pathways_M, pathways_S)
gene_id <- read.csv("genes_id.csv")
pathways_cat <- list()
for (i in 1:2){
  pathways_cat[[i]] <- merge(pathways[[i]], gene_id, by.x="ID", by.y="id")
  colnames(pathways_cat[[i]])[12] <- "Cluster"
}
pathways_cat[[1]]$group <- ifelse(pathways_cat[[1]]$NES > 0,"Up", "Down")
pathways_cat[[2]]$group <- ifelse(pathways_cat[[2]]$NES > 0,"Up", "Down")

reactome_db <- read.csv("reactome_pathways_hierarchy.csv", sep = '\t')

categories <- unique(pathways_cat[[2]]$Cluster)


cat <- categories[18]
for(cat in categories){
  M_db <- data.frame(from = -1, to = -1)
  to <- subset(pathways_cat[[2]], Cluster == cat)$ID
  while (T){
    from <- reactome_db$from[match(to, reactome_db$to)]
    M_db <- unique(rbind(M_db, na.omit(data.frame(from = from, to = to))))
    to <- unique(na.omit(from))
    if (length(from) == 1){
      if (is.na(from)){
        break
      }
    }
  }
  M_db <- M_db[-1, ]

  decoder <- read.csv("reactome_pathways_decoder.csv", sep = "\t")
  M_db$from <- decoder$name[match(M_db$from, decoder$id)]
  M_db$to <- decoder$name[match(M_db$to, decoder$id)]

  name <- unique(c(as.character(M_db$from), as.character(M_db$to)))
  vertices <- data.frame(
    name=name,
    group=ifelse(name %in% pathways_cat[[2]]$Description, pathways_cat[[2]]$group[match(name, pathways_cat[[2]]$Description)], "No Change"),
    pval=ifelse(name %in% pathways_cat[[2]]$Description, signif(pathways_cat[[2]]$p.adjust[match(name, pathways_cat[[2]]$Description)], 3), "NA"),
    id=ifelse(name %in% pathways_cat[[2]]$Description, pathways_cat[[2]]$ID[match(name, pathways_cat[[2]]$Description)], "NA")
  )

  mygraph <- graph_from_data_frame( M_db, vertices=vertices)

  pal <- c("red", "black", "green")
  if (!"Down" %in% vertices$group){
    pal <- c("black", "green")
  }
  if (!"No Change" %in% vertices$group){
    pal <- c("red", "green")
  }
  if (!"No Change" %in% vertices$group & !"Down" %in% vertices$group){
    pal <- c("green")
  }

  plot <- ggraph(mygraph, layout = 'dendrogram') +
    geom_edge_link() +
    #geom_node_text(aes( label=str_wrap(name, width = 10), filter=leaf) , vjust = 1.2) +
    #geom_node_text(aes( label=str_wrap(name, width = 20), filter=!leaf), nudge_y = 0.2) +
    geom_node_text(aes( label=pval) , vjust = -1.5) +
    geom_node_text(aes( label=id) , vjust = 1.5) +
    geom_node_point(aes(color=group), size = 5) +
    theme_void()+
    scale_color_manual(values=pal)+
    xlim(-1, NA)


  print(plot)
}

##########################
# 8. Most Enriched Pathways
##########################
library(tidyverse)
library(scales)

senescent_cat <- data.frame(Name = "", pvalue = 1)
for (cat in categories){
  p <- ifelse(cat %in% pathways_cat[[2]]$Description, pathways_cat[[2]]$p.adjust[match(cat, pathways_cat[[2]]$Description)], NA)
  senescent_cat <- rbind(senescent_cat, c(cat, p))
}
senescent_cat <- senescent_cat[-1, ]
senescent_cat$pvalue <- as.numeric(senescent_cat$pvalue)

most_sig_pathways <- pathways_cat[[2]][order(pathways_cat[[2]]$p.adjust)[1:41], 2]
data_pathways <- merge(subset(pathways_cat[[1]], Description %in% most_sig_pathways)[, c(2,5)], subset(pathways_cat[[2]], Description %in% most_sig_pathways)[, c(2,5)], by = "Description", all = T)
colnames(data_pathways)[2:3] <- c("Medium", "Senescent")
data_pathways[is.na(data_pathways)] <- 0

data_pathways <- data_pathways %>%
  pivot_longer(!Description, values_to = "NES", names_to = "Sample")

ggplot(data_pathways, aes(Description, NES, fill = Sample))+
  geom_col(position = "dodge", color = "black")+
  theme_classic()+
  xlab("")+
  scale_x_discrete(labels = label_wrap(80)) +
  scale_fill_manual(values=c("#7ab643", "#de7053"))+
  coord_flip()
