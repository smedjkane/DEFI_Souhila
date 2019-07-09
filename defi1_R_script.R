#DEFI_R

#DEFI_1
#generation vecteur

vec1 = rnorm(10)
print(vec1)

vec2 = rnorm(100)
print(vec2)

vec3 = rnorm(1000)
print(vec3)

#histogrammes sur la même ligne (1 ligne et 3 colonnes)
all_histog = par(mfrow = c(1,3))
histo_vec1 = hist(vec1, xlab = "attempt", ylab = "success_R_response", breaks = 5,  col ="slateblue4", xlim=c(-3, 3), main = "histogramme_vec1" )
histo_vec2 = hist(vec2, xlab = "attempt", ylab = "success_R_response",breaks = 5,  col ="snow",xlim=c(-3, 3), main = "histogramme_vec2" )
histo_vec3 = hist(vec3, xlab = "attempt", ylab = "success_R_response", breaks = 5, col ="red",xlim=c(-3, 3), main = "histogramme_vec3" )

pdf(file="all_histog.pdf")
dev.off()
