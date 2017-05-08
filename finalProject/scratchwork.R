park.names = read.table("~/Documents/MATH448/finalProject/parks.csv", header = TRUE, sep = ",", quote="\"'", dec=".")
species = read.csv("~/Documents/MATH448/finalProject/species.csv", header = TRUE, sep = ",")

species.count = as.data.frame(table(species$Scientific.Name))
speciesnum = nrow(species.count)

################################
## Perform k-means clustering ##
################################

set.seed(1)
x = matrix(rnorm(50*2), ncol=2)
plot(x)
x[1:25,1] = x[1:25,1] + 3
x[1:25,2] = x[1:25,2] - 4
plot(x)
plot(kmeans(x,2,nstart=20))
kmeans.out = kmeans(x,2,nstart=20)
plot(kmeans.out)
kmeans.out$cluster
plot(x, col=(kmeans.out$cluster +1), main="Pop vs. Lazarus", xlab="", ylab="", pch=20, cex=2)

## Prep data ##

#fungi
park.fungi = subset(species, Category == "Bird")
species.fungi = subset(species.fungi.middle, Occurrence == "Present")
park.fungi = data.frame(table(species.fungi$Park.Name))
rownames(park.fungi) <- park.fungi$Var1
park.fungi = subset(park.fungi, select = -Var1)

#latitude
parks.lat = subset(park.names, select = c(Park.Name, Latitude))

park.fungi = data.frame(park.fungi, parks.lat$Latitude)
# renaming
colnames(park.fungi)[colnames(park.fungi)=="parks.lat.Latitude"] <- "Latitude"
colnames(park.fungi)[colnames(park.fungi)=="Freq"] <- "Fungi.Freq"

## Begin k-means with 2 clusters ##
set.seed(1)
x = data.frame(park.fungi$Fungi.Freq, park.fungi$Latitude)
View(x)
kmeans(x,2,nstart=20)
kmeans.out = kmeans(x,2,nstart=20)
plot(kmeans.out)
kmeans.out$cluster
plot(kmeans.out$cluster)
kmeans.out$centers
