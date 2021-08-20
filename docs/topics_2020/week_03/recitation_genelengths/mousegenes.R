
#This dataset contains protein coding genes from the mouse genome along with their chromosomal coordinates and GC content. 
#(Note:Non-standard chromosomes and ~1000 genes longer than 200kb have been removed to make the data easier to work with) 

# 0. Load required libraries (ggplot and dplyr)


# 1.import the "mousegenes.csv" file into an object called 'genes'


# 2. add a column called 'Length' containing gene lengths (Length=End coordinate minus Start coordinate)


# 3. use ggplot to make a histogram of gene lengths (try different bin sizes ~50-100 looks ok)


# 4. Since we will be adding more layers to this plot, make the fill color partially transparent so any added layers would be easier to see 
#(use the alpha command with black color and transparency of 0.25)


# 5. store this plot in an object called "genes_hist"


# 6. Add a dashed red line to "genes_hist" showing the the mean length (use the geom_vline command with the options color="red" and linetype="dashed") 


# 7. Add a dashed blue line at the median so you can see both the mean and the median on the plot. Is the data skewed?


# 8. Add a text label to lines calling them "mean" and "median"  
#You can add a text label to the plot at specific x/y coordinates using the annotate command e.g. + annotate("text",y=?,x=?,label="?",color=?)


# 9. store this plot as 'genes_hist_labelled'


# 10. Find the IQR of gene lengths 


# 11. calculate the mean and the median of gene lengths again but exclude any data points outside the IQR. Store as mean_iqr and median_iqr
#You can either use dplyr or base r to filter datapoints within the iqr 


# 12. Add the mean and median without outliers as dotted lines to the previously generated histogram "genes_hist_labelled"


# 13. Calculate the standard deviation for gene lengths and gene GC-content (use the command sd)


# 14. Calculate the coefficient of variation to compare the variation in gene lengths with gene GC-content


# 15. Use ggplot to make boxplot of gene lengths


# 16. Analyze the variation in gene lengths among chromosomes by generating a plot containing separate boxplots for each chromosome









