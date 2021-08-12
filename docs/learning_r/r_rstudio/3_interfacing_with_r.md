---
title: Interfacing with R
parent: R and RStudio
grand_parent: Learning R
nav_order: 3
---

# Interfacing with R {#top}
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

Once you have installed R on your computer, you can start an interactive R session either on the **commandline** or using **RGui**, the built-in R graphical user interface (GUI). **RStudio** provides a richer and more powerful interface for R that we will use in this class. Below is a brief introduction to each of these interfaces.


# Using R on commandline

Once you have installed R, you may start a `terminal` on a MAC or `cmd` on a PC to get a commandline window with a prompt. Type **R** and you should see something like what is shown below. You can start typing R commands here directly after the R the prompt, `>`(below the command `print("Hello world!")` has already been executed).

![](images/R_commandline.png)

Although this is a very cumbersome way of interacting with R, it is useful to familiarize yourself with this environment as you may need it in the future, for example when connecting to HPC (High Performance Computing) systems.


# The RGui Window System

R comes with a built-in GUI for R called **Rgui**, which can be started by clicking on the app icon on your computer. This is more convenient way to use R because it provides you with a windowing system that comes with buttons and tabs to help you navigate around the R environment.

The image below demonstrates the RGui script editor, which allows you to write R scripts in a separate window and execute them in the console. The first command, `print("Hello world!")` was entered directly on the console, and the second one, `print("Top of the day to you!")` , was executed from the simple script on the right.

![](images/Rgui.png)



# RStudio

<a href="https://www.rstudio.com/products/rstudio/"><img src="images/RStudioLogo.png" style="width:100px;" target="_blank"/></a> is an integrated development environment (IDE) that is the most convenient way to interact with R because it provides a much richer interface for writing and running R code.

RStudio is available in open source and commercial editions and runs on the desktop (Windows, Mac, and Linux) or in a browser connected to RStudio Server or RStudio Workbench (Debian/Ubuntu, Red Hat/CentOS, and SUSE Linux).


## RStudio Features

* A windows- and menu-driven GUI for writing, running, and debugging R scripts
* An easy way to manage working directories, workspaces, and R Projects
* An easy way to inspect functions, variables, and data structures in your environment
* A great toolbox for visualization of graphical output
* Generation of PDF, HTML, and Word documents; slide shows; interactive graphics; dynamic web pages
* Integration with specialized R packages for graphics and various analytical applications


## RStudio Interface

RStudio includes a console, syntax-highlighting editor that supports direct code execution, as well as tools for plotting, history, debugging, and workspace management.

The **top-level menus** (File, Edit, Code, etc.) provide a lot of options for managing all the different features of RStudio, including very convenient **keyboard shortcuts** (go to Tools => Keyboard Shortcuts Help).

The **graphical user interface** comprises four windows that display different kinds of information:

![](images/RStudio_windows_labeled.png)


- **Script Editor**{: .text-green-200} _(top left)_
    - This window will open when you create a new R script, R Markdown, or other kinds of files (all of these can be saved for future use)
    - Run scripts or code snippets within R documents
    - Provides suggestions for command completion
    - Provides menus for formatting code and other actions
- **Console**{: .text-green-200} _(bottom left)_
    - Displays all R commands executed within scripts and code snippets in the Editor
    - Provides direct access to the commandline - particularly useful for testing out commands and inspecting data structures
    - Get help with R command syntax
    - Access built-in tutorials
- **History and Environment**{: .text-green-200} _(top right)_
    - Shows all variables in the working environment
    - Shows all previous commands that you have executed, either from the console or within a script (even incorrect commands containing errors are included here, so be careful!)
    - Provides integration for version control (git, svn) -- connecting RStudio to a GitHub repository is a great way to back up and share your work!
- **Files, Plots, Packages, and Help**{: .text-green-200} _(bottom right)_
    - Easily peruse and navigate directories and files
    - Display plots as they are created
    - See which packages are installed
    - Display R documentation for command syntax

---

[Back to top](#top)
