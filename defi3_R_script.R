#DEFI_3
#fusionner les 2 tableaux
MLR_corrige=read.table("MLR_Infos_corrige.txt", header=T, row.names = 1)
Mito_Genes=read.table("Mito_Genes.txt", header=T, row.names = 1)
fusionTable=cbind(Mito_Genes, MLR_corrige)

#sortir les tableaux avec les differentes classes I, II, III
ClassI=subset(fusionTable, (MLRClassification=="ClassI"))
ClassII=subset(fusionTable, (MLRClassification=="ClassII"))
ClassIII=subset(fusionTable, (MLRClassification=="ClassIII"))

#sortir les temps 1, 10, 15 et 30 pour les tableaux avec les differentes classes I, II, III
subClassI_1=ClassI[ , 1]
subClassI_10=ClassI[ , 10]
subClassI_15=ClassI[ , 15]
subClassI_30=ClassI[ , 30]


subClassII_1=ClassII[ , 1]
subClassII_10=ClassII[ , 10]
subClassII_15=ClassII[ , 15]
subClassII_30=ClassII[ , 30]


subClassIII_1=ClassIII[ , 1]
subClassIII_10=ClassIII[ , 10]
subClassIII_15=ClassIII[ , 15]
subClassIII_30=ClassIII[ , 30]


#histogrammes ClassI
histog_ClassI = par(mfrow = c(1,4))
x1range= c(min(subClassI_1),max(subClassI_1) )
x10range= c(min(subClassI_10),max(subClassI_10) )
x15range= c(min(subClassI_15),max(subClassI_15) )
x30range= c(min(subClassI_30),max(subClassI_30) )

histo_ClassI_1 = hist(subClassI_1, xlab = "genes",
                    ylab = "reads",
                    breaks = 20,col ="slateblue4", 
                    xlim=x1range, main = "subClassI_1" )

histo_ClassI_10 = hist(subClassI_10, xlab = "genes",
                    ylab = "reads", 
                    breaks = 20,col ="cyan",
                    xlim=x10range, main = "subClassI_10" )
histo_ClassI_15 = hist(subClassI_15, xlab = "attempt",
                    ylab = "success_R_response",
                    breaks = 20, col ="snow",
                    xlim=x15range, main = "subClassI_15" )
histo_ClassI_30 = hist(subClassI_30,
                    xlab = "attempt",
                    ylab = "success_R_response",
                    breaks = 20,col ="red",
                    xlim=x30range,
                    main = "subClassI_30" )

#histogrammes ClassII
histog_ClassII = par(mfrow = c(1,4))
x1rangeII= c(min(subClassII_1),max(subClassII_1) )
x10rangeII= c(min(subClassII_10),max(subClassII_10) )
x15rangeII= c(min(subClassII_15),max(subClassII_15) )
x30rangeII= c(min(subClassII_30),max(subClassII_30) )

histo_ClassII_1 = hist(subClassII_1, xlab = "genes",
                      ylab = "reads",
                      breaks = 20,col ="slateblue4", 
                      xlim=x1rangeII, main = "subClassII_1" )

histo_ClassII_10 = hist(subClassII_10, xlab = "genes",
                       ylab = "reads", 
                       breaks = 20,col ="cyan",
                       xlim=x10rangeII, main = "subClassII_10" )
histo_ClassII_15 = hist(subClassII_15, xlab = "attempt",
                       ylab = "success_R_response",
                       breaks = 20, col ="snow",
                       xlim=x15rangeII, main = "subClassII_15" )
histo_ClassII_30 = hist(subClassII_30,
                       xlab = "attempt",
                       ylab = "success_R_response",
                       breaks = 20,col ="red",
                       xlim=x30rangeII,
                       main = "subClassII_30" )


#histogrammes ClassIII
histog_ClassII = par(mfrow = c(1,4))
x1rangeIII= c(min(subClassIII_1),max(subClassIII_1) )
x10rangeIII= c(min(subClassIII_10),max(subClassIII_10) )
x15rangeIII= c(min(subClassIII_15),max(subClassIII_15) )
x30rangeIII= c(min(subClassIII_30),max(subClassIII_30) )

histo_ClassIII_1 = hist(subClassIII_1, xlab = "genes",
                       ylab = "reads",
                       breaks = 20,col ="slateblue4", 
                       xlim=x1rangeIII, main = "subClassIII_1" )

histo_ClassIII_10 = hist(subClassIII_10, xlab = "genes",
                        ylab = "reads", 
                        breaks = 20,col ="cyan",
                        xlim=x10rangeIII, main = "subClassIII_10" )

histo_ClassIII_15 = hist(subClassIII_15, xlab = "attempt",
                        ylab = "success_R_response",
                        breaks = 20, col ="snow",
                        xlim=x15rangeIII, main = "subClassIII_15" )

histo_ClassIII_30 = hist(subClassIII_30,
                        xlab = "attempt",
                        ylab = "success_R_response",
                        breaks = 20,col ="red",
                        xlim=x30rangeIII,
                        main = "subClassIII_30" )
