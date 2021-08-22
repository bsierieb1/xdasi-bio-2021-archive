---
title: Week 3 - Data cleaning
parent: Recitations
nav_order: 1
has_children: false
---



**Please download this data set** [(download link)](https://github.com/kriscgun/xdasi-bio-2021/blob/main/docs/recitations/week_3_recitation_data.gct)

### Data set description

The data set that contains the expression values of ~20,000 genes for 185 pancreatic cancer tumors. The expression matrix is accompanied by a meta data table that describes each patient from whom the tumor sample was taken.
The data originally come from [this study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6084949/). They were downloaded from [kaggle](https://www.kaggle.com/abhiparashar/cancer-prediction/version/1) and a few modifications were introduced.

### Assignment

1. Import the data.
	- As long as the data are in a human-readable (i.e. not binary) format, always start by opening the file in a text editor.
		- Are the data organized as a table? What are the dimensions?
		- Is there a header?
		- Are there row names?
		- Are there any extra lines above the header or below the last data row?
		- What are the field delimiters/separators?
	- Decide on the R function to import the data, identify which arguments need to be provided.
	- Try to import the data in R, troubleshoot, repeat.
2. Re-organize the data, if necessary.
	- Are samples in rows and variables in columns?
	- Are row names and column names correctly specified, if applicable?
	- Split the data into a meta data table and a gene expression matrix.
	- Do the data in each column have a correct type? If not, fix this.
3. Explore the meta data. Correct mistakes if you find any.
	- How many samples of each gender does the data set have?
	- How many samples of each race and ethnicity does the data set have?
	- What is the distribution of ages at initial pathologic diagnosis? Does it drastically differ between genders?
	- Does the survival (`vital_status`) visibly differ between genders?
4. Explore the gene expression data.
	- Calculate the standard deviation of the expression levels of each gene across all samples using a `for` loop.
	- Repeat this using `apply()`.
