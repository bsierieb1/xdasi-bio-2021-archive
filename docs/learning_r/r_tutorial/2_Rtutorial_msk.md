---
title: Manny's R Tutorial
parent: R Tutorial
grand_parent: Learning R
nav_order: 3
has_children: false
---

# NEED TO REORGANIZE -- a lot of this is now redundant with other pages
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

## What is R ?

#### YouTube Video: [Intro to R (v1)](https://youtu.be/WHf43ZssdNs)

-   R is a powerful statistical programming language that allows scientists to perform statistical computing and visualization.
-   R is based on a well developed programming language ("S" - which was developed by John Chambers at Bell Labs) thus contains all essential elements of a computer programming language such as conditionals, loops, and user defined functions.
-   R is open source and available to the community at no charge. This has made it much more accessible and encouraged contribution from other developers.
-   R has the ability to store large datasets and efficiently query them. Additionally it can also query other database management systems such as MySQL.
-   R has made it very easy to make plots quickly. For example creating a histogram is created by using simply one command **hist()**

## Main websites to learn more about R project

### R-project

<http://www.r-project.org> - Main destination to find everything you want to know about R including links to tutorials and learning about how you can contribute.

### CRAN - Comprehensive R Archive Network

<https://cran.r-project.org/> - Place to download R and other packages.


## Installing R

There are many tutorials on the web that will help you install R and R Studio, the popular IDE we will use in this course to help us manage our R data and code.

You can check out Manny Katari's cool video:

[![Installing R and RStudio on a MAC](installingR_RStudio_Youtube_Link.png)](https://www.youtube.com/watch?v=0Ii_rpTc03k)

 ... or, simply go to the following sites:

-   [**Download R**](https://cran.r-project.org/)
-   [**Download RStudio**](https://www.rstudio.org/)

Please install R first and then RStudio. Make sure to download the RStudio Desktop Free version.

## Interfacing with R

Once you have R installed on your computer, there are two main main ways that you can start interactive with R: - R command line - R GUI

### Using R on command line

To use R on command line simply start a `terminal` on a MAC or `cmd` on a PC to get a black box with a prompt. Type **R** and you should see something like what is shown below. You can start typeing R commands here directly. Although this is a very cumbersome way of interacting with R, you should familiarize yourself with this environment as you may need it in the future, for example when connecting to the HPC ( High Performance Computing ) systems.

![](UsingR-Commandline.png)

### The Window System (Rgui)

Once you have installed R on your desktop, you are also provided with a GUI (Graphical User Interface) to R. This is much more convenient way to use R because it provides you with a windowing system which comes with buttons and tabs to help you navigate around the R environment. The image below also demonstrates an R script editor which allows you to write commads on a separate window and execute them in the console.

![](UsingRGUI.png)

### RStudio (www.rstudio.org)

<https://www.rstudio.org/>

RStudio is the a very powerful way of interacting with R. In addition to the features provided in RGui, RStudio also provides:
- Easy way to look at the functions and variables that are in your environment.
- Integration with packages to enable easily repeatable code ( more on this later )
- Project management that allows you to change workspace and working directory with a simple selection from a pull down menu.

Note that RStudio does not come with R, R needs to be installed first separately.

![](RStudio/Slide3.png)

#### The RStudio interface is separated into 4 sections:

- **Script Editor** (top left)
    - This window opens when you select to create a new R script
- **History and Environment** ( top right)
    - This window shows all previous commands that you have typed, even the ones that are incorrect so be careful. Ideally you want to save the correct ones to the R script window on the left.
- **Console** (bottom left)
    - The way to send commands to R directly.
- **Files, Plots, Packages, and Help** (bottom right)
    - Easy way to look for files in the directories and packages that are installed. It also has a tab for all the plots that are created.


## Data Management

### YouTube Video: [Data Management](https://youtu.be/LO13lbX_inY)

### Default Workspace

The workspace contains the different R objects only (not the code). The name of the default workspace is saved as .Rdata. To load .RData, set the directory where .RData is located as the current directory, and then select "load Default workspace".

### Working Directory

It is a good idea to have separate the workspace and history for different projects saved in different directories (folders).

``` r
# Getting your working directory
(CWD=getwd())

# Note: the extra set of parentheses above causes the output of the command to be printed below.
```

    ## [1] "/Users/manpreetkatari/Google Drive/Rworkshop"

``` r
# Create a folder to use for working directory
dir.create("R_project_folder")
```

    ## Warning in dir.create("R_project_folder"): 'R_project_folder' already
    ## exists

``` r
# Changing your working directory
setwd("R_project_folder")

# List the contents of your working directory
dir()
```

    ## [1] "Icon\r"

``` r
# Return to your directory
setwd(CWD)

# Save a workspace
save.image("Name_of_workspace.RData")

# Load a workspace
load("Name_of_workspace.RData")
```

RStudio has buttons that allow you to set your current directory as the working directory.

![](RStudio/Slide4.png)

There is also a tab that allows you to easily save and load workspaces.

![](RStudio/Slide5.png)


### R Packages

#### YouTube Video: [R Packages](https://youtu.be/e7h9_Gq7qPU)

Several packages such as `multcomp` are available on [**CRAN**](https://cran.r-project.org/). They contain specialized functions and data that can be used for your analysis.

``` r
# To view the names of the packages installed
library()

# To load a library
library(cluster)

# View all packages loaded
search()
```

    ##  [1] ".GlobalEnv"        "package:cluster"   "package:stats"    
    ##  [4] "package:graphics"  "package:grDevices" "package:utils"    
    ##  [7] "package:datasets"  "package:methods"   "Autoloads"        
    ## [10] "package:base"

``` r
# To install packages
install.packages("multcomp",repos='http://cran.us.r-project.org')
```

    ##
    ## The downloaded binary packages are in
    ##  /var/folders/q3/yzvt5fr95056x4frykp7p6kh0000gn/T//RtmpqvxipJ/downloaded_packages

RStudio allows you to install and load packages using the **packages** tab.

![](RStudio/Slide7.png)


### Bioconductor

Another excellent source for Biology related R packages is **Bioconductor**. The R packages for Bioconductor are easily accessible via CRAN. To install a Bioconductor packages you must first load the installation script using the `source()` function and then use the `biocLite()` function to install a package. We will get into the details in the later lectures, but below is the code.

``` r
source("http://bioconductor.org/biocLite.R")
```

    ## Bioconductor version 3.5 (BiocInstaller 1.26.0), ?biocLite for help

``` r
biocLite("DESeq2")
```

    ##
    ## The downloaded binary packages are in
    ##  /var/folders/q3/yzvt5fr95056x4frykp7p6kh0000gn/T//RtmpqvxipJ/downloaded_packages

    ## Bioconductor version 3.5 (BiocInstaller 1.26.1), ?biocLite for help

    ## 'BiocInstaller' updated to version 1.26.1

    ## BioC_mirror: https://bioconductor.org

    ## Using Bioconductor 3.5 (BiocInstaller 1.26.1), R 3.4.1 (2017-06-30).

    ## Installing package(s) 'DESeq2'

    ##
    ## The downloaded binary packages are in
    ##  /var/folders/q3/yzvt5fr95056x4frykp7p6kh0000gn/T//RtmpqvxipJ/downloaded_packages

    ## Old packages: 'AnnotationForge', 'BH', 'boot', 'IRanges', 'Matrix',
    ##   'mgcv', 'Rcpp', 'rlang', 'sandwich', 'scales', 'tibble', 'tidyr',
    ##   'tidyselect'


## Executing R commands

### R Console Prompt

#### YouTube Video: [R Console](https://youtu.be/NbBOss9CjuE)

R is used by typing in a list of commands. Commands are entered after the prompt **&gt;**. After you type a command and its arguments, simply press the Return Key. Separate commands using **;** or **newline** (enter).

``` r
print("hello")
```

    ## [1] "hello"


### R History

A history of your commands is saved and it can be accessed by using the up and down keys. Your history is also saved as .Rhistory in your working directory. It is a good idea to save your successful commands in a separate file (or script) because your history will also contain your mistakes!

### R Editor and Scripts

#### YouTube Video: [R Scripting](https://youtu.be/NbBOss9CjuE)

RStudio comes with and R script editor. Open editor by selecting "New Script" from the File Menu. Similar to Notepad, it will allow you to type and save code as text. It is not recommended to copy and paste from applications such as MS Word or even PDFs. When you paste the code into the console or the script, it can insert funny characters.

Once you have a list of commands that you want to execute, you save it with a **.R** extension. Any R script can be **sourced** in using the `source()` function. This essentially executes the commands in the R script line by line.

![](RStudio/Slide8.png)


### R Objects

#### YouTube Video: [R Objects](https://youtu.be/8GXsn8qd7Gc)

An R object that is stored in the R environment is simply a container for data or lines of code. Objects can be named so they can be accessed at any point. There are three ways to assign data to a named object:

``` r
x <- 1
x
```

    ## [1] 1

``` r
assign("y", 1)
y
```

    ## [1] 1

``` r
z = 1
z
```

    ## [1] 1

You can add comments to your code by preceding them with the \# sign. Any text to the right of the hashtag will be ignored by the interpreter (i.e. it will not be executed as code).

``` r
x<-1 # everything on the right side is a comment.
```

## R Functions

Functions contain lines of pre-written code that perform some task. They can be used to:
- Gather information about R environment
- Change properties of an environment
- Perform tasks on one or more data structures

Below is an example of the function sum():

``` r
a = 6
b <- 9
c = 15
55 -> e # notice that here the variable is on the right.
        # this only works with the arrow operator
d = sum(a,b,c,e)
d
```

    ## [1] 85


## Basic Syntax

In order to see the contents of an object, you can simply type the name of the object. If you type a word that is not an object, you will get an error. Names of objects are case sensitive, so "Print" is not the same as "print":

``` r
# Try typing the word hello
hello
```

In a case when not all the code can fit in one line, or you want to make the command more readable, you can press **Return** and R will simply start the prompt with `+`:

``` r
x<-1
print(
x)
```

    ## [1] 1


## Getting Help with Functions and Features

Below are some examples of how to get help about a command.

``` r
# Different commands to get help for a command
help(sum)
?sum


# In case you don’t know the full name of the command
apropos("mean")
```

    ##  [1] ".colMeans"     ".rowMeans"     "colMeans"      "kmeans"       
    ##  [5] "mean"          "mean.Date"     "mean.default"  "mean.difftime"
    ##  [9] "mean.POSIXct"  "mean.POSIXlt"  "meanabsdev"    "rowMeans"     
    ## [13] "weighted.mean"

``` r
# To only get an example of how to use the command
example("mean")
```

    ##
    ## mean> x <- c(0:10, 50)
    ##
    ## mean> xm <- mean(x)
    ##
    ## mean> c(xm, mean(x, trim = 0.10))
    ## [1] 8.75 5.50
