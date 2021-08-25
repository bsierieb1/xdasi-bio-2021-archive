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

To work effectively in R/RStudio, you need to keep in mind the following **four components**:

[Working Directory](https://support.rstudio.com/hc/en-us/articles/200711843-Working-Directories-and-Workspaces){: .btn .btn-green target="blank"}

Whenever you are working on a project, your code (scripts and markdown files), workspace (data structures), commandline history, and data files are located somewhere on your filesystem.

**You need to know where you are in order to keep your work organized!**{: .text-green-200}

It is recommended that you keep each of your projects in a separate folder containing all of the scripts, data, and any other relevant files pertaining to that project.

For example, it's a good idea to create a parent folder called something like "R_homework", and then create a separate folder for each week's assignment. Fortunately, RStudio can help you organize your work using **RProjects**{: .text-green-200}. More on this below.


[Workspace](https://support.rstudio.com/hc/en-us/articles/200711843-Working-Directories-and-Workspaces){: .btn .btn-green target="blank"}

All of the **R data objects**{: .text-green-200} you create in your current session will be stored in a file with the extension **.Rdata**{: .text-green-200} that can be reloaded next time you want to work on the same project. This will include anything like variables, vectors, data frames, etc.


[Command History](https://support.rstudio.com/hc/en-us/articles/200526217-Command-History-in-the-RStudio-IDE){: .btn .btn-green target="blank"}

R keeps a record of all the commands you have executed in the current R session. Your command history can be accessed from the Console by using the **up**{: .text-green-200} and **down**{: .text-green-200} keys, or you can select to re-run previous commands from the History window in the GUI.

Your commandline history is also saved as an **.Rhistory**{: .text-green-200} file in your working directory. You may want to save your successful commands in a separate file (or script) because your history will also contain your mistakes!


[R Projects](https://support.rstudio.com/hc/en-us/articles/200526207){: .btn .btn-green target="blank"}

**R Projects**{: .text-green-200} are an RStudio convenience that enables you to easily manage working directories, workspaces, and associated files for any R project.

Projects provide a super easy way to collect all of your files and data associated with a particular project in one place. You can use the Projects menu in the top right-hand corner of RStudio to create, save, and select R Projects.

Whenever a Project is opened, the working directory is automatically set to the location of the project folder, the workspace is loaded, and any scripts or data files are available. You should see all of these in the Files menu, along with the **.Rproj**{: .text-green-200} file. If you click on the .Rproj icon in the Files menu, a new window will pop up that displays all the configuration options for the project.

**It is highly recommended to use R Projects for all of your work.**{: .text-green-200}

[Back to top](#top)

---

# R Editor and Scripts

RStudio's [**Script Editor**](https://support.rstudio.com/hc/en-us/articles/200484448){:target="_blank"} allows you to write a series of executable commands that can be saved for future use.

To **create a new script**{: .text-green-200}, select "New File" from the File menu. You will see many options for creating different types of files. Most commonly we will use the following two types of files:

- Simple **R scripts**{: .text-green-200} - these contain code and comments and are saved with the file extension **.R**{: .text-green-200}. Any R script can also be executed from the commandline using the `source()` function. This essentially executes the commands in the R script line by line.
- **R Markdown**{: .text-green-200} and **R Notebook**{: .text-green-200} files enable you to intersperse text and code for rendering as HTML, PDF, or other types of documents. These provide a great way to document your work and prepare publication-ready materials. You will become very familiar with these by the end of the course!

Once you have written some lines of code, you may run them one at a time, in chunks, or all at once using the "Run" button. You may also execute code using keyboard shortcuts (listed in the "Run" menu).

*Note: It is not recommended to copy and paste from applications such as MS Word or even PDFs, since these can insert funny characters upon pasting the code into the console or the editor.*

When you are done with a script, simply save and close it. RStudio will ask you if you want your files to be saved if you try to close them, to quit a Project, or to close RStudio without saving your work first.

[Back to top](#top)

---

# More on Workspaces

The workspace contains the different **R objects**{: .text-green-200} and **functions**{: .text-green-200} from your current R session only (not the code; the commandline history and any code in your R scripts or R markdown files are saved separately).

Workspaces can be **saved**{: .text-green-200} to preserve this data and a saved workspace file can be **loaded**{: .text-green-200} to start using the previously created objects in them again.

At the end of each session, or when you change RProjects, you will be asked whether you want to save your current workspace. If you're just playing around, you won't need to save the temporary data objects you've created. Otherwise it's generally useful to save the state of the data structures you have created for a particular workflow.

## Default Workspace

The **default workspace**{: .text-green-200} is saved as **.Rdata**{: .text-green-200}. This file will be automatically created when you fire up RStudio and you have not loaded a named workspace.


## Named Workspace

A **named workspace**{: .text-green-200} will have a filename of the form **myproject.Rdata**{: .text-green-200}.

Instead of saving your current workspace with the default name .Rdata, you may save a workspace for a particular project you are working on as a named .RData file that you can load later.

**If you are working in an RProject, a named .Rdata file will be created automatically when you set up the RProject and will be loaded each time you open the project.**{: .text-green-200}

## Managing Workspaces

You may save and load workspaces manually, however if you are using an **RProject**{: .text-green-200} (see below) all of this will be handled magically for you.

### Key Commands

The key commands for managing workspaces are:

**getwd()**{: .text-green-200} - returns an absolute filepath representing the current working directory of the R process

**setwd("path_to_dir")**{: .text-green-200} - set the working directory to dir

**load("myproject.Rdata")**{: .text-green-200} - load an existing (default or named) workspace

**save.image()**{: .text-green-200} - save your current workspace

**ls()**{: .text-green-200} - list the R data objects that belong to your current workspace

To manually load a previously saved .RData file, set your **current working directory** to the one where .RData is located, and then use the **load()** command or use the RStudio menus to load it. You can do this using the Session menu or by clicking on the filename in the Files pane.

## Examples

+ Code blocks below that include the R commandline prompt (`>`) show what was entered in the console window.
+ Comments begin with a hashtag (`#`).
+ The resulting output is shown below each command.
+ Note that some commands do not generate any output on the commandline.

```
> # Get working directory
> getwd()
[1] "/Users/kcg1/code/kriscgun/xdasi-bio-2021/exercises"

> # assign current dir to a variable
> CWD <- getwd()
```

```
# Create a folder to use for working directory
> dir.create("ex1")
Warning message:
In dir.create("ex1") : 'ex1' already exists
```

```
> # Change working directory
> setwd("ex1")
```

```
> # List the contents of your working directory
> dir()
[1] "example1.R"
```

```
> # Return to original directory
> setwd(CWD)
```

```
> # Save a (named) workspace
> save.image("Name_of_workspace.RData")
```

```
> # Load a workspace
> load("Name_of_workspace.RData")
>
> # Do not do this!
> load.image(".RData")
Error in load.image(".RData") : could not find function "load.image"
```


## Workspace Hygiene

It is good practice to save workspaces for different projects, along with associated scripts and data files, in different directories (folders). You can navigate and manage directories using either the commandline or RStudio drop-down menus.

**If you are working in an Rproject, the workspace associated with that project will be loaded automatically each time you open the project.**{: .text-green-200}

---

[Back to top](#top)
