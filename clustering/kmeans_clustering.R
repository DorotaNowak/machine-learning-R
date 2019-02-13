dataset = read.csv('Mall_Customers.csv')
X = dataset[4:5]

set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(X, i)$withins)
plot(wcss, type='b', xlab="Number of clusters")
#Optimal number of clusters = 5

set.seed(29)
kmeans = kmeans(X,5,iter.max = 300, nstart = 10)

library(cluster)
clusplot(X, kmeans$cluster, lines = 0, shape = TRUE, color = TRUE, labels = 2,
         plotchar = FALSE, span = TRUE, main = paste('Cluster of clients'),
         xlab = "Annual income",
         ylab = "Spending score")