---
title: R Intro
parent: R Tutorial
grand_parent: Learning R
nav_order: 1
has_children: false
---

# Introduction to R -- NEED TO REORGANIZE - moved a lot of stuff here to individual pages
{: .no_toc }


## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# R Console Prompt

R is used by typing in a list of commands Commands are entered after the prompt **&gt;** After you type a command and its arguments, simply press the Return Key Separate commands using **;** or **newline** \(enter\)

```r
print("hello")
```

```
## [1] "hello"
```

# R session

## Default Workspace

Workspace contains the different R objects only \(not the code\) The name of the default workspace is saved as .Rdata To load .RData, set the directory where .RData is located as current directory and then select to "load Default workspace"

## Working Directory

It is a good idea to have separate workspace and history for different projects saved in different directories\(folders\)

```r
#Getting you working directory
(CWD=getwd())
```

```
## [1] "/Users/manpreetkatari/Google Drive/Rworkshop"
```

```r
#Create a folder to use for working directory
dir.create("R_project_folder")
```

```
## Warning in dir.create("R_project_folder"): 'R_project_folder' already
## exists
```

```r
#Changing your working directory
setwd("R_project_folder")

#List the contents of your working directory
dir()
```

```
## [1] "Icon\r"
```

```r
#return to your directory
setwd(CWD)

#Save a workspace
save.image("Name_of_workspace.RData")

#Load a workspace
load("Name_of_workspace.RData")
```

# R editor and Scripts

A history of your commands is saved and it can be accessed by using the up and down keys. Your history is saved as .Rhistory in your working directory. It is a good idea to save your successful commands in a separate file because your history will also contain your mistakes. Open editor by selecting "New Script" from the File Menu. Similar to Notepad, it will allow you to type and save code as text. MS Word is not a good choice for this because when you paste it can insert funny characters. You can execute an entire R script by using the "Source R code" using source\(\) function.

# Familiar commands that work in R

### Ctrl-c : copy

### Ctrl-v : paste

### Ctrl-1 : clear the console

### Esc : stop
