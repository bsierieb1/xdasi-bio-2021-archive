---
title: Week 3 - Import, cleaning, and manipulation of data
parent: Recitations
nav_order: 1
has_children: false
---



Please download this data set []()

The data set that contains the expression values of ~20,000 genes for 185 pancreatic cancer tumors. The expression matrix is accompanied by a meta data table that describes each patient from whom the tumor sample was taken.
The data originally come from [this study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6084949/). They were downloaded from [kaggle](https://www.kaggle.com/abhiparashar/cancer-prediction/version/1) and a few modifications were introduced.

List of challenges:
1. Import the data.
	1a. As long as the data are in a human-readable (i.e. not binary) format, always start by opening the file in a text editor.
	1b. In the text editor, check how the data are organized.
		- If it is a table, what are the dimensions?
		- Is there a header?
		- Are there row names?
		- Are there any extra lines above the header or below the last data row?
		- What are the separators?
	1c. Decide on the R function to import the data, identify which arguments need to be provided.
	1d. Try, troubleshoot, repeat.
2. Re-organize the data, if necessary.
	2a. Are samples in rows and variables in columns?
	2b. Are row names and column names correctly specified, if applicable?
	2c. Split the data into a meta data table and a gene expression matrix.
	2d. Do the data in each column have a correct type? If not, fix this.
3. Explore the meta data. Correct mistakes if you find any.
	3a. How many samples of each gender does the data set have?
	3b. How many samples of each race and ethnicity does the data set have?
	3c. What is the distribution of ages at initial pathologic diagnosis? Does it drastically differ between genders?
	3d. Does the survival ("vital status") visibly differ between genders?
4. Explore the gene expression data.
	4a. Calculate the standard deviation of the expression levels of each gene across all samples using a for loop.
	4b. Repeat this using an apply function.