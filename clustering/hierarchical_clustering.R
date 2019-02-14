dataset = read.csv('Mall_Customers.csv')
X = dataset[4:5]

dendrogram = hclust(dist(X, method = 'euclidean'), method = 'ward.D')
plot(dendrogram, main = paste('Dendrogram'), xlab = 'Customers', 
     ylab = 'Euclidean distance')
#Optimal number of clusters  = 5, using elbow method

hc = hclust(dist(X, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, k = 5)

library(cluster)
clusplot(X, y_hc, lines = 0, shape = TRUE, color = TRUE, labels = 2,
         plotchar = FALSE, span = TRUE, main = paste('Cluster of clients'),
         xlab = "Annual income",
         ylab = "Spending score")