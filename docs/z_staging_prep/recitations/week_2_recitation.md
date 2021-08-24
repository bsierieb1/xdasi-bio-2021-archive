---
title: Week 2 - R Basics
parent: Recitations
grand_parent: Staging
nav_order: 1
has_children: false
---



### Assignment

1. Data types in R that are most commonly used by biologists are `numeric`, `character`, and `logical`. Discuss what kind of data **can** be stored as each class. What kind of data **should** be stored as each class?
2. The most basic data structure is a `vector`.
	- Create a short (5-10 values) `vector` filled with `numeric` values.
	- Determine the length of the `vector`.
	- Subset first, second, last, first three, all but first, and all but second elements.
	- Multiply each value by 2.
		- Use a `for` loop.
		- Use matrix algebra.
3. A special kind of `vector` that is fairly commonly used is a `factor`.
	- Discuss what kind of data should be stored as `factors`.
	- Discuss which data types (e.g. `numeric`, `character`, `logical`) can be used in `factors`?
	- Create a short (5-10 values) `factor` filled with `character` values.
	- Extract the levels.
	- Count how many elements correspond to each level?
		- Use `which()`.
		- Use `table()`.
	- Substitute the names of the levels with another set of names.
		- Use `which()`.
		- Use an R shortcut.
4. The most commonly used 2-dimensional data structures are `matrix` and `data.frame`.
	- Discuss the differences between them.
	- Create a 5x3 `matrix` filled with `numeric` values.
	- Determine the dimensions of the `matrix`.
	- Subset first row, first column, last row, last column, all but second columns.
	- Multiply each value by 2 using matrix algebra.
	- Multiple first two columns by the third column.
	- Calculate the sum (the function for that is `sum()`) of each row.
		- Use a `for` loop.
		- Use `apply()`.
	- Modify the loop and the `apply()` expression above to calculate the sum of each column.
	- Convert the `matrix` to a `data.frame` and add a new column filled with `character` values.
	- Try subsetting the columns by column names.
	- Convert the `data.frame` back to `matrix` and check the data type in each column.
