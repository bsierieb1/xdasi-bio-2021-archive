---
title: Import / Export
parent: R Tutorial
grand_parent: Learning R
nav_order: 5
has_children: false
---

# Reading, Importing, and Writing Data Files
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

YouTube Video - <https://youtu.be/gN-WL5rYb7s>

R can import many different types of data files - Tab delimited text file in ASCII format (.txt) - American Standard Code for Information Interchange - Comma delimited (CSV) - Microsoft Excel file (.xls) - Commercial and open source software - SPSS, Minitab, SAS, Stata, WEKA, Octave - XML (Extensible Markup Language) - Databases such as MS Access (.mdb), Relational databases (mysql), and SQLite3

Download these files for the following exercise: [example.txt](example.txt) [example.csv](example.csv)

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
