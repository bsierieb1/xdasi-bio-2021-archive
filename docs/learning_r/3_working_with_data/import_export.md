---
title: Import / Export
parent: Working with Data
grand_parent: Learning R
nav_order: 3
has_children: false
---

# Reading and Writing Data Files
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# File Types

R can import many different types of data files:

- Comma delimited (.csv)
- Tab delimited text file in ASCII format (.tsv, .txt)
- Microsoft Excel (.xls)
- ASCII (American Standard Code for Information Interchange)
- SPSS, Minitab, SAS, Stata, WEKA, Octave
- XML (Extensible Markup Language)
- Databases such as MS Access (.mdb), Relational databases (mysql), and SQLite3
- Other commercial and open source software

# Data Import Methods

The most common type of data files you will encounter will consist of "flat" text files containing data arranged in some sort of tabular (table) format. There are three main ways you can use to load and parse data files:

## Base R

The core R distribution includes several built-in commands to read and parse data files and turn them into data frames. All of them can be configured to some extent by changing the default parameters.

To learn more about the syntax for each of these, you can always use R's Help function by typing `?command_name`, `help(command_name)`, or typing the command name into the query box in the Help pane in RStudio.

+ `read.table()`  - base method for reading tables, with many configurable parameters
+ `read.csv()`    - comma-delimited files
+ `read.csv2()`   - semicolon-delimited files (commonly used in Europe, where the decimal sign is a comma)
+ `read.delim()`  - tab-delimited files (decimal sign defaults to a period)
+ `read.delim2()` - tab-delimited files (decimal sign defaults to a comma)

Usually if you are writing an R script, you will use these commands, however you can also import datasets using [RStudio's Envirionment or File menus](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-the-RStudio-IDE
){: target="blank"}.

## readr package (part of the Tidyverse)

**readr** supports seven file formats with seven `read_` functions:

+ `read_csv()`   - comma separated (CSV) files
+ `read_tsv()`   - tab separated files
+ `read_delim()` - general delimited files
+ `read_fwf()`   - fixed width files
+ `read_table()` - tabular files where columns are separated by white-space.
+ `read_log()`   - web log files

Differences in behavior compared to Base R functions:

+ Around 10x faster than base R equivalents
+ Produce tibbles
+ Don't convert character vectors to factors, use row names, or munge the column names
+ Are independent of environment variables
+ Are more reproducible across different operating systems and are

To use readr, you can install the entire tidyverse with `install.packages("tidyverse")` or just load readr by itself using `install.packages("readr")`, and then load it using `library(tidyverse)` or `library(tibble)`

RStudio also provides a [menu-driven option](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-the-RStudio-IDE){: target="blank"} to import data using readr (look in the File menu).

You can read more about **readr** here:

+ [**Tidyverse: readr**](https://readr.tidyverse.org/){: target="blank"}
+ [**R for Data Science: Data import**](https://r4ds.had.co.nz/data-import.html){: target="blank"}
+ [**Cheatsheet**](https://github.com/rstudio/cheatsheets/blob/master/data-import.pdf){: target="blank"}


## data.table package

The data.table package provides a function called `fread()` with terse syntax that imports tables up to ~100x faster than the default `read.table()` functions (and somewhat faster than readr, but with different default behavior). It creates a `data.table` object that inherits from `data.frame` and can be operated on in the same way.

Like readr, data.table does not convert characters to factors by default, and it does not use row names. To use it you'll need to learn its syntax. You can read more about data.table [here](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html){: target="blank"}.

Some people really like this package, but I haven't used it so can't tell you more about it here!


# Viewing Data Tables

There are a variety of ways to inspect a dataset that you have imported, as shown below using the built-in `iris` dataset:

+ `View(iris)` - shows a data frame in the Editor pane in RStudio
  - allows you to sort, filter, and search within data frames
  - [RStudio documentation](https://support.rstudio.com/hc/en-us/articles/205175388-Using-the-Data-Viewer-in-the-RStudio-IDE){: target="blank"}
+ `data(iris)` - shows a "promise" of the data frame in RStudio's Environment pane
  + clicking on the name of the data frame then issues the `force(iris)` command, which loads the data frame and prints it in the Console pane

Often you just want to get a peek at the data. To do this you can use the following commands:

+ `head(iris)`    - show just the first six lines of the data frame
+ `tail(iris)`    - same as `head()`, but show the last six lines of the data frame
+ `str(iris)`     - list the size, columns, data types, factors, and the first several values of a data frame
+ `glimpse(iris)` - similar to `str()`, but formats the output a bit differently


## Example : read.table()

Download these files for the following exercise: [data/example.txt](example.txt) [data/example.csv](example.csv)

``` r
data = read.table("example.txt")
data
```

    ##           V1    V2        V3       V4     V5          V6   V7  V8 V9
    ## 1  patientid grade nodesexam nodespos extent nodalstatus size pgr er
    ## 2   pid00001     3        32        3     10           6   60   2  2
    ## 3   pid00002     2        13        1     10           6   15   1  1
    ## 4   pid00003     3         8        0     10           0    8   1  1
    ## 5   pid00004     3        20        0     10           0   10   2  2
    ## 6   pid00005     2        16        8     10           6   15   2  1
    ## 7   pid00006     3        19        0     10           0   48   1  1
    ## 8   pid00007     3         3        0     10           0   32   2  2
    ## 9   pid00008     2        13        0     10           0   15   1  1
    ## 10  pid00009     3        21        0     10           0   22   1  1
    ## 11  pid00010     2        15        0     10           0    6   2  1

What's wrong with data?

``` r
data = read.table("example.txt",
                  header=T,
                  row.names=1)
data
```

    ##          grade nodesexam nodespos extent nodalstatus size pgr er
    ## pid00001     3        32        3     10           6   60   2  2
    ## pid00002     2        13        1     10           6   15   1  1
    ## pid00003     3         8        0     10           0    8   1  1
    ## pid00004     3        20        0     10           0   10   2  2
    ## pid00005     2        16        8     10           6   15   2  1
    ## pid00006     3        19        0     10           0   48   1  1
    ## pid00007     3         3        0     10           0   32   2  2
    ## pid00008     2        13        0     10           0   15   1  1
    ## pid00009     3        21        0     10           0   22   1  1
    ## pid00010     2        15        0     10           0    6   2  1

Much better.

We can also use the `read.csv()` to read in our csv files. The defaults are different for the different varieties of the command.

``` r
data2 = read.csv("example.csv",row.names=1)
data2
```

    ##          grade nodesexam nodespos extent nodalstatus size pgr er
    ## pid00001     3        32        3     10           6   60   2  2
    ## pid00002     2        13        1     10           6   15   1  1
    ## pid00003     3         8        0     10           0    8   1  1
    ## pid00004     3        20        0     10           0   10   2  2
    ## pid00005     2        16        8     10           6   15   2  1
    ## pid00006     3        19        0     10           0   48   1  1
    ## pid00007     3         3        0     10           0   32   2  2
    ## pid00008     2        13        0     10           0   15   1  1
    ## pid00009     3        21        0     10           0   22   1  1
    ## pid00010     2        15        0     10           0    6   2  1

To create a file we will use the `write.table()` command.


[Back to top](#top)

---

# Writing data tables to files

Functions for exporting data are similar to those for importing data and follow the same syntax as their counterparts in the different packages. Check the Help documentation for details on usage and syntax (links also provided below).

+ Base R: [`write.table()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/write.table){: target="blank"} family of functions
+ Tidyverse: [`write_*()`](https://readr.tidyverse.org/reference/write_delim.html){: target="blank"} function family
+ data.table: [`fwrite()``](https://www.rdocumentation.org/packages/data.table/versions/1.14.0/topics/fwrite){: target="blank"}

## Example: write.table()

``` r
write.table(data, "adatafile.txt",
            sep="\t")
```

Open your new file and check to see how it is formatted. The command below the column names are adjusted slightly better. Also note that since the files was created using an .xls extension, your operative system will assume you want to open it with Excel, which it can.

``` r
write.table(data,
            "adatafile.xls",
            col.names=NA,
            sep="\t")
```

---

[Back to top](#top)
