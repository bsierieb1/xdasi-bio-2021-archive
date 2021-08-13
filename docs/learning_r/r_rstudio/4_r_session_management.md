---
title: R Session Management
parent: R and RStudio
grand_parent: Learning R
nav_order: 4
---

# R Session Management
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

# Key Concepts

There are **four components** you need to keep in mind in order to work effectively in R/RStudio:

[Working Directory](https://support.rstudio.com/hc/en-us/articles/200711843-Working-Directories-and-Workspaces){: .btn .btn-green }

Whenever you are working on a project, your code (scripts and markdown files), workspace (data structures), commandline history, and data files are located somewhere on your filesystem.

**You need to know where you are in order to keep your work organized!** It is recommended that you keep each of your projects in a separate folder containing all of the scripts, data, and any other relevant files pertaining to that project.

For example, it's a good idea to create a parent folder called something like "R_homework", and then create a separate folder for each week's assignment. Fortunately, RStudio can help you organize your work using **RProjects**. More on this below.


[Workspace](https://support.rstudio.com/hc/en-us/articles/200711843-Working-Directories-and-Workspaces){: .btn .btn-green }

All of the **R data objects** you create in your current session will be stored in a **file with the extension .Rdata** that can be reloaded next time you want to work on the same project. This will include anything like variables, vectors, data frames, etc.


[Command History](https://support.rstudio.com/hc/en-us/articles/200526217-Command-History-in-the-RStudio-IDE){: .btn .btn-green }

This file keeps a record of all the commands you have executed in the current R session.

[R Projects](https://support.rstudio.com/hc/en-us/articles/200526207){: .btn .btn-green }

R Projects are an RStudio convenience that enables you to easily manage workspaces and associated files for any R project.

**It is highly recommended to use R Projects for all of your work.**{: .text-green-200}


# Workspaces

The workspace contains the different **R objects** and **functions** from your current R session only (not the code; the commandline history and any code in your R scripts or R markdown files are saved separately).

Workspaces can be **saved** to preserve this data and a saved workspace file can be **loaded** to start using the previously created objects in them again.

At the end of each session, or when you change RProjects, you will be asked whether you want to save your current workspace. If you're just playing around, you won't need to save the temporary data objects you've created. Otherwise it's generally useful to save the state of the data structures you have created for a particular workflow.


## Default Workspace

The **default workspace**{: .text-green-200} is saved as **.Rdata**. This file will be automatically created when you fire up RStudio and you have not loaded a named workspace.


## Named Workspace

A **named workspace**{: .text-green-200} will have a filename of the form **myproject.Rdata**.

Instead of saving your current workspace with the default name .Rdata, you may save a workspace for a particular project you are working on as a named .RData file that you can load later (e.g. "myproject.Rdata").

If you are working in an **Rproject**, this file will be loaded automatically when you open the project.

## Saving and Loading Workspaces

You may save and load workspaces manually, however if you are using an **RProject** (see below) all of this will be handled magically for you.

To manually load a previously saved .RData file, set your **current working directory** to the one where .RData is located, and then use the **load()** command or use the RStudio menus to load it. You can do this using the Session menu or by clicking on the filename in the Files pane.

## Key Commands

The key commands for managing workspaces are:

**getwd()** - returns an absolute filepath representing the current working directory of the R process

**setwd(dir)** - set the working directory to dir

**load()** - load an existing (default or named) workspace

**save.image()** - save your current workspace

**ls()** - list the R data objects that belong to your current workspace

## Workspace Hygiene

It is good practice to save workspaces for different projects, along with associated scripts and data files, in different directories (folders). You can navigate and manage directories using either the commandline or RStudio drop-down menus (see below).

**If you are working in an Rproject, the workspace associated with that project will be loaded automatically when you open the project.**


# R History

A history of your commands is saved and it can be accessed by using the up and down keys. Your history is also saved as .Rhistory in your working directory. It is a good idea to save your successful commands in a separate file (or script) because your history will also contain your mistakes!


# R Editor and Scripts

YouTube Video: [R Scripting](https://youtu.be/NbBOss9CjuE)

But most of the time we will be creating a script that has a series of commands that can be executed. RStudio comes with an R script editor. Open editor by selecting "New Script" from the File Menu. Similar to Notepad, it will allow you to type and save code as text.

Once you have a list of commands that you want to execute, you save it with a .R extension. Any R script can be sourced in using the source() function. This essentially executes the commands in the R script line by line.

R Markdown and R Notebook files enable you to intersperse text and code for rendering as HTML or PDF. These provide a great way to document your work and prepare publication-ready materials. We will be using this R Markdowns to submit your homeworks.

*Note: It is not recommended to copy and paste from applications such as MS Word or even PDFs, since these can insert funny characters upon pasting the code into the console or the editor.*

# R Projects

RStudio simplifies management of workspaces and working directories using **Projects**. Projects provide a super easy way to collect all of your files and data associated with a particular project in one place. You can use the Projects menu in the top right-hand corner of RStudio to create, save, and select R Projects.

Whenever a Project is opened, the working directory is automatically set to the location of the project folder, the workspace is loaded, and any scripts or data files are available. You should see all of these in the Files menu, along with the **.Rproj** file. If you click on the .Rproj icon in the Files menu, a new window will pop up that displays all the configuration options for the project.

**It is good practice to keep workspaces for different projects saved in different directories (folders)**. You can navigate and manage directories using either the commandline or RStudio drop-down menus (see below).
