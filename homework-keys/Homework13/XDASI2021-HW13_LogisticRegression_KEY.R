## ----setup, include=FALSE-----------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = FALSE)
rm(list = ls())
library(ggplot2)


## -----------------------------------------------------------------------------------------------------------
# load the dataset and inspect it
cancer_data = read.csv("cancer_data.csv", stringsAsFactors = FALSE)
cancer_data$diagnosis = factor(cancer_data$diagnosis,
                               levels = c("M","B"))
str(cancer_data)
#head(cancer_data)
#glimpse(cancer_data)
#View(cancer_data)


## -----------------------------------------------------------------------------------------------------------
# make the dataset smaller!
cancer_data = cancer_data[,2:12]
str(cancer_data)

# remove trailing "_mean" from the column names
colnames(cancer_data) = sub("_mean","",colnames(cancer_data))

# examine the resulting df
str(cancer_data)
head(cancer_data)


## ---- message=FALSE-----------------------------------------------------------------------------------------
# normalize the data
scaled_data = data.frame(diagnosis = cancer_data$diagnosis,
                         scale(cancer_data[,-1]))

# alternative method
# scaled_data = cancer_data
# scaled_data[,-1] = scale(cancer_data[,-1])

str(scaled_data)
head(scaled_data)


## -----------------------------------------------------------------------------------------------------------
#install.packages("reshape2") # uncomment to install (only needed once)
library(reshape2)

# melt the dataframe and take a look at it
scaled_data_melt = melt(scaled_data)
str(scaled_data_melt)
head(scaled_data_melt)

# make multiple boxplots
ggplot(data = scaled_data_melt, 
       aes(x = variable, y = value, fill = diagnosis)) +
  geom_boxplot() +
  facet_wrap(~variable, scale="free") 

ggplot(data = scaled_data_melt, 
       aes(x = variable, y = value, fill = diagnosis)) +
  geom_boxplot() +
  facet_grid(~variable, scale="free")



## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## "concave.points" seems to have the best separation between the benign and malignant cancer samples.
## 
## "fractal_dimension" seems to show no difference between the tumor classes.


## -----------------------------------------------------------------------------------------------------------
# p-value for observed difference between B and M outcomes for each feature
for (i in c(2:11)) {
  wt = wilcox.test(scaled_data[scaled_data$diagnosis == "B",i], 
                   scaled_data[scaled_data$diagnosis == "M",i] )
  print(paste0(i,": ",colnames(scaled_data)[i]," = ",wt$p.value))
}


## -----------------------------------------------------------------------------------------------------------
scaled_data = scaled_data[,-11] # remove last column ("fractal_dimension")


## ---- message=F---------------------------------------------------------------------------------------------
# just print out the correlations
cor(scaled_data[,2:10], method="pearson")

# correlogram
#install.packages("GGally")  # only needed once
library(GGally)
ggpairs(scaled_data, columns = 2:10, title = "Tumor Feature Correlations",
        upper = list(continuous = wrap("cor",size = 3)),
        lower = list(continuous = wrap("points",
                                       alpha = 0.3,
                                       size = 0.1)),
        mapping = aes(color = diagnosis))


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## Pairwise:
## Radius/perimeter, radius/area, perimeter/area, concave points/concavity.
## 
## Groups:
## - radius, area, perimeter (perimeter gives better separation based on wilcox.test)
## - concavity and concave.points (concave.points better)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## - Texture looks the least correlated with other variables but did not look like it
## had the most discriminating power above.
## - Smoothness and symmetry look less correlated with most other variables also.
## 
## - After taking away highly correlated vars, radius/area/perimater look better.
## - Concavity/concave.points show moderately high correlations with a bunch of other vars.


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## To focus on factors that are most likely to predict cancer outcomes, remove potential confounding variables and reduce chances of overfitting.


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## Once we have performed PCA, we lose a little interpretability (even though we would find out which features contribute the most variability).


## -----------------------------------------------------------------------------------------------------------
# subset the data based on B or M diagnosis
B_all = subset(scaled_data, diagnosis == "B")
M_all = subset(scaled_data, diagnosis == "M")

# recode the diagnoses as binary outcomes
B_all$diagnosis = 0
M_all$diagnosis = 1


## -----------------------------------------------------------------------------------------------------------
# select random samples: 80/20 split
set.seed(20211204)  # set a seed for reproducibility
B_sample = sample(1:nrow(B_all),
                  floor(0.2*nrow(B_all)))

set.seed(20211204)  # set a seed for reproducibility
M_sample = sample(1:nrow(M_all),
                  floor(0.2*nrow(M_all)))

# combine the test data into a single data.frame
BM_test = rbind(B_all[B_sample,],
                M_all[M_sample,])

# combine the training data into a single data.frame
# (use negation of test data sets)
BM_train = rbind(B_all[-B_sample,],
                 M_all[-M_sample,])

# make sure the diagnosis variable in each df is a FACTOR
BM_test$diagnosis = as.factor(BM_test$diagnosis)
BM_train$diagnosis = as.factor(BM_train$diagnosis)



## -----------------------------------------------------------------------------------------------------------
# models with individual predictors
glm_radius      = glm(diagnosis ~ radius, 
                      data = BM_train, family="binomial", maxit = 100)

glm_texture     = glm(diagnosis ~ texture, 
                      data = BM_train, family="binomial", maxit = 100)

glm_perimeter   = glm(diagnosis ~ perimeter, 
                      data = BM_train, family="binomial", maxit = 100)

glm_area        = glm(diagnosis ~ area, 
                      data = BM_train, family="binomial", maxit = 100)

glm_smoothness  = glm(diagnosis ~ smoothness, 
                     data = BM_train, family="binomial", maxit = 100)

glm_compactness = glm(diagnosis ~ compactness, 
                      data = BM_train, family="binomial", maxit = 100)

glm_concavity   = glm(diagnosis ~ concavity, 
                      data = BM_train, family="binomial", maxit = 100)

glm_concave.points = glm(diagnosis ~ concave.points, 
                      data = BM_train, family="binomial", maxit = 100)

glm_symmetry    = glm(diagnosis ~ symmetry, 
                      data = BM_train, family="binomial", maxit = 100)

# model with linear combination of all predictors (do not include interaction terms)
glm_all         = glm(diagnosis ~ . , 
                      data = BM_train, family="binomial", maxit = 100)



## -----------------------------------------------------------------------------------------------------------
summary(glm_all)


## -----------------------------------------------------------------------------------------------------------
# reduced model (-area)
glm_reduced = glm(diagnosis ~ radius + texture + perimeter + smoothness +
                    compactness + concavity + concave.points + symmetry, 
                    data = BM_train, family="binomial", maxit = 100)

summary(glm_reduced)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## The coefficient for radius decreased dramatically and the other ones shifted around a bit.


## -----------------------------------------------------------------------------------------------------------
# logistic regression model (-area, -perimeter, -concavity)
glm_nonredundant = glm(diagnosis ~ radius + texture + smoothness +
                       compactness + concave.points + symmetry, 
                       data = BM_train, family="binomial", maxit = 100)
summary(glm_nonredundant)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## Removing redundant variables made the remaining ones from those sets more significant.
## 
## Some of the redundant features contribute little to the overall model and can
## probably be safely discarded.


## ---- echo=T, eval=T----------------------------------------------------------------------------------------
## Individual predictors
cancer_pred_radius  = predict(glm_radius,
                              newdata = BM_test, type="response")

cancer_pred_texture    = predict(glm_texture,
                                 newdata = BM_test, type="response")

cancer_pred_smooth     = predict(glm_smoothness,
                                 newdata = BM_test, type="response")

cancer_pred_compact    = predict(glm_compactness,
                                 newdata = BM_test, type="response")

cancer_pred_concave.points  = predict(glm_concave.points,
                                 newdata = BM_test, type="response")

cancer_pred_symmetry   = predict(glm_symmetry,
                                 newdata = BM_test, type="response")

# nonredundant features
cancer_pred_nonredundant = predict(glm_nonredundant,
                                   newdata = BM_test, type="response")


## -----------------------------------------------------------------------------------------------------------
ggplot(data.frame(prob=cancer_pred_nonredundant)) +
  geom_histogram(aes(x=prob))


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## The plot shows that the model is pretty confident about most of the test data, but it has a hard time deciding on the diagnosis for some of them.


## -----------------------------------------------------------------------------------------------------------
# 20% probability
neg_pos = as.numeric(cancer_pred_nonredundant >= 0.2)
table(neg_pos)                    # predictions
table(neg_pos, BM_test$diagnosis) # predictions vs. observed

# 50% probability
neg_pos = as.numeric(cancer_pred_nonredundant >= 0.5)
table(neg_pos)
table(neg_pos, BM_test$diagnosis)

# 80% probability
neg_pos = as.numeric(cancer_pred_nonredundant >= 0.8)
table(neg_pos)
table(neg_pos, BM_test$diagnosis)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## As the stringency of the threshold is increased, the number of false positives
## goes down, but the number of false negatives goes up.


## -----------------------------------------------------------------------------------------------------------
# install.packages("AUC")  # uncomment to install (you only need to do this once)
library(AUC)

# set up the plots
par(mfrow=c(2,2))

## individual predictors ===================================================== #

# compare PREDICTIONS on held-out data with TRUE data from BM_test

# radius
type = "Radius"
roc_result = roc(cancer_pred_radius, BM_test$diagnosis)
plot(roc_result, main=paste(type, ": AUC = ", signif(auc(roc_result),3), sep=""))

# texture
type = "Texture"
roc_result = roc(cancer_pred_texture, BM_test$diagnosis)
plot(roc_result, main=paste0(type, ": AUC = ", signif(auc(roc_result),3)))

# smoothness
type = "Smoothness"
roc_result = roc(cancer_pred_smooth, BM_test$diagnosis)
plot(roc_result, main=paste0(type, ": AUC = ", signif(auc(roc_result),3)))

# compactness
type = "Compactness"
roc_result = roc(cancer_pred_compact, BM_test$diagnosis)
plot(roc_result, main=paste0(type, ": AUC = ", signif(auc(roc_result),3)))

par(mfrow=c(2,2))

# concave points
type = "Concave_points"
roc_result = roc(cancer_pred_concave.points, BM_test$diagnosis)
plot(roc_result, main=paste0(type, ": AUC = ", signif(auc(roc_result),3)))

# symmetry
type = "Symmetry"
roc_result = roc(cancer_pred_symmetry, BM_test$diagnosis)
plot(roc_result, main=paste0(type, ": AUC = ", signif(auc(roc_result),3)))


## combined predictors ======================================================= #
type = "Nonredundant"
roc_result = roc(cancer_pred_nonredundant, BM_test$diagnosis)
plot(roc_result, main=paste0(type, ": AUC = ", signif(auc(roc_result),3)))


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## The full nonredundant model looks best, since it contains the most information.
## However a couple of the individual features seem to do almost as well.


## -----------------------------------------------------------------------------------------------------------
# generate all the objects and plots for models with top 4 or 5 predictors, as above

## top 3 predictors ======================================================= ##
glm_top.features = glm(diagnosis ~ radius + compactness + concave.points,
               data = BM_train, family="binomial", maxit = 100)

summary(glm_top.features)

cancer_pred_top.features = predict(glm_top.features,
                           newdata = BM_test, type="response")

roc_result_top.features = roc(cancer_pred_top.features, BM_test$diagnosis)
plot(roc_result_top.features, main=paste("Top features: AUC = ", 
                            signif(auc(roc_result_top.features),3), sep=" "))

roc_result_nonredundant = roc(cancer_pred_nonredundant, BM_test$diagnosis)

## alternative method for plotting with ggplot ##########################
# install.packages("ggpubr")  # only need to do this once
library(ggpubr)
# theme_set(theme_pubr())

p1 = ggplot(data.frame(FPR=roc_result_top.features$fpr,
                       TPR=roc_result_top.features$tpr)) +
     geom_line(aes(x=FPR, y=TPR)) +
     ggtitle(paste("Top features: AUC = ", signif(auc(roc_result_top.features),3), sep=" "))

p2 = ggplot(data.frame(FPR=roc_result_nonredundant$fpr,
                       TPR=roc_result_nonredundant$tpr)) +
     geom_line(aes(x=FPR, y=TPR)) +
     ggtitle(paste("All features: AUC = ", signif(auc(roc_result_nonredundant),3), sep=" "))

ggarrange(p1, p2, nrow = 1, ncol = 2)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here.
## 
## In this case, the top 3 predictors seem to do just about as well as the full model.
## 
## Occam's razor would suggest using the simplest model possible. Using a lot of
## predictors can lead to "overfitting", where the model is optimized for the
## training data but performs less well on new data.


## -----------------------------------------------------------------------------------------------------------
# simple vs glm_nonredundant
anova(glm_texture, glm_nonredundant, test = "Chisq")
anova(glm_area, glm_nonredundant, test = "Chisq")
anova(glm_compactness, glm_nonredundant, test = "Chisq")

# glm_top.features vs. glm_nonredundant
anova(glm_top.features, glm_nonredundant, test = "Chisq")


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## Even though they gave a similar AUC, it looks like the full redundant model is
## better than the one with the top 3 predictors.
## 


## -----------------------------------------------------------------------------------------------------------
summary(glm_top.features)$aic
summary(glm_nonredundant)$aic


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## The full model still looks better by this criterion.


## -----------------------------------------------------------------------------------------------------------
# perform step-wise model evaluation of nonredundant glm
step(glm_nonredundant)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## This analysis indicates that we can do a little better (but not much) with just four of the 6 non-redundant predictors.
## 
## Both are much better than the "top 3" model based on the AIC.


## -----------------------------------------------------------------------------------------------------------
#install.packages("DAAG") # only do this once
library(DAAG)

lr.fold = glm(formula = diagnosis ~ radius + texture + smoothness + 
                compactness + concave.points + symmetry, 
              family="binomial", maxit = 100, 
              data=scaled_data) 
nonredundant_10fold = CVbinary(lr.fold,
                               rand=NULL,
                               nfolds=10,
                               print.details=TRUE)

lr.fold<-glm(formula = diagnosis ~ radius + texture + smoothness + concave.points, 
             family="binomial", maxit = 100,
             data=scaled_data) 
reduced_10fold = CVbinary(lr.fold,
                          rand=NULL,
                          nfolds=10,
                          print.details=TRUE)


## ----eval=FALSE---------------------------------------------------------------------------------------------
## # your answer here
## 
## Cross-validation indicates that the reduced model performs a tiny bit better on
## the training data, and the two models perform almost identically on the hold-out
## data. Based on this I'd probably go with the simpler model.

