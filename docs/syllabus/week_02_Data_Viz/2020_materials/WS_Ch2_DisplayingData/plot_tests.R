```{r}
library(ggplot2)
twitch = data.frame(samples = round(c(rpois(100, 5), rnorm(100, 20, 5))),
                    group = factor(rep(c("control", "drug"), each=100)))

p.twitch = ggplot(twitch, aes(x=samples, fill=group, color=group))  +
  geom_histogram(alpha=0.5, binwidth=1)
p.twitch

# compute group means and plot them
avg.twitch = twitch %>% group_by(group) %>% summarize(avg = mean(samples))
p.twitch + 
  geom_vline(data=avg.twitch,
             aes(xintercept=avg,color=group),linetype="dashed")


wormpheno = data.frame(Phenotype = c("Dpy","Rol","Pvl","Bmd"),
                       Count = c(15,12,3,7))

ggplot(wormpheno, aes(x=Phenotype,y=Count)) +
  geom_bar(stat="identity", fill="lightblue", color="black")






par(mfrow=c(2,2))
#print(matrix(colnames(iris[,-1]),nrow=2,byrow=T))
plots=sapply(1:4, function(z){
  boxplot(iris[,z]~iris$Species,
          main=colnames(iris[,-1])[z],xlab="Species",ylab='cm')
})
```