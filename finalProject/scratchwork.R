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
# Obtain all fungi observations
park.fungi = subset(species, Category == "Fungi")
# Remove those not marked as "Present"
park.fungi = subset(park.fungi, Occurrence == "Present")
# Build into frequency table of each park name occurrence.
# This corresponds to a separate species entry for each park
park.fungi = data.frame(table(park.fungi$Park.Name))

set.seed(1)
# Let's try 3 clusters
kmeans.out = kmeans(park.fungi$Freq, 3, nstart = 50)
plot(kmeans.out$cluster)

## nativeness

native.species = subset(species, Nativeness == "Native")

