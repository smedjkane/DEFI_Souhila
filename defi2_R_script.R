#DEFI_2


#importer les tables
Mito_Genes=read.table("Mito_Genes.txt", header=T, row.names = 1)
MLR_Infos=read.table("MLR_Infos_2errors.txt", header=T, row.names = 1)


#creer 2 vecteurs contenant les nom des gènes
gene_Mito_list=row.names(Mito_Genes)
gene_MLR_list=row.names(MLR_Infos)
gene_Mito_list
gene_MLR_list
genes_differents=gene_Mito_list!=gene_MLR_list
which(genes_differents)

#si les 2 listes à comparer ne sont pas ordonner de la même manière , alors utiliser plutot la fonction %in% qui peut etre utilisé dans tous les cas de figure
gene_Mito_list%in%gene_MLR_list


#status des gènes erronés dans les 2 
Mito_Genes[48, ]
MLR_Infos[26, ] 

Mito_Genes[26, ]
MLR_Infos[48, ]


