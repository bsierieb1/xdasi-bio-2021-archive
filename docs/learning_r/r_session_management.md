---
title: R Session Management
layout: default
parent: R and RStudio
nav_order: 3
has_children: false
toc: true
---

# R Session Management

[R session management](https://youtu.be/LO13lbX_inY)

This ~5-minute video covers key concepts about R session management.

[R Session Management in R Studio](https://www.youtube.com/watch?v=lQw6WHWAhQw)

This ~14 minute video demonstrates the key concepts using R Studio and makes a case for R Studio projects.

### The key concepts:

**R Workspace** - the R data objects from your current session,

Default workspace (.Rdata)

Named workspace (myproject.Rdata)

**R History (.Rhistory)** - a record of all commands executed in the current R session

**Working Directory** - where your code (scripts and markdown files), workspace (data structures), commandline history, and data files are located on your filesystem

**R Project (.Rproj)** - an RStudio convenience for managing workspaces and associated files for any R project

### Quick Guides

[QuickR: The Workspace](https://www.statmethods.net/interface/workspace.html)

[RStudio Support: Working Directories and Workspaces](https://support.rstudio.com/hc/en-us/articles/200711843-Working-Directories-and-Workspaces)

[RStudio Support: Using Projects](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)

Workspaces

The workspace contains the different R objects and your functions from your current R session only (not the code; the commandline history and any code in your R scripts or R markdown files are saved separately).

The default workspace is saved as **.RData**. To load .RData, set the directory where .RData is located as the current directory, and then use the **load()** command or use the RStudio menus to load it. You can do this using the "Session" menu or by clicking on the filename in the Files pane.

You may save a workspace for a particular project you are working on as a named .RData file that you can load later (e.g. "myproject.Rdata").

The key commands for managing workspaces are:

**load()** - load an existing workspace - (may be the default workspace .Rdata or your_projectname.Rdata)

**save.image()** - save your current workspace

**ls()** - list the R data objects that belong to your current workspace

It is good practice to keep workspaces for different projects saved in different directories (folders). You can navigate and manage directories using either the commandline or RStudio drop-down menus (see below).

### R Projects

RStudio simplifies management of workspaces and working directories using **Projects**. Projects provide a super easy way to collect all of your files and data associated with a particular project in one place. You can use the Projects menu in the top right-hand corner of RStudio to create, save, and select R Projects.

Whenever a Project is opened, the working directory is automatically set to the location of the project folder, the workspace is loaded, and any scripts or data files are available. You should see all of these in the Files menu, along with the **.Rproj** file. If you click on the .Rproj icon in the Files menu, a new window will pop up that displays all the configuration options for the project.

**It is good practice to keep workspaces for different projects saved in different directories (folders)**. You can navigate and manage directories using either the commandline or RStudio drop-down menus (see below).
