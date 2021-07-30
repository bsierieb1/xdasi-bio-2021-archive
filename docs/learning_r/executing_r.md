---
title: Executing R
layout: default
parent: R and RStudio
nav_order: 4
has_children: false
---

##  Executing R commands

YouTube Video: [R Console](https://youtu.be/NbBOss9CjuE)

R is used by typing in a list of commands. Commands are entered after the prompt >. After you type a command and its arguments, simply press the Return key. Separate commands using ; or newline (enter).

### R Command Abbreviations

A lot of commands in R use abbreviations to make it easier to type and read code. However it can be difficult to remember them if you don't know what they stand for! This blog provides an explanation of >150 (250?) abbreviations used by R commands. Check it out whenever you find yourself wondering what the heck things like "mfrow" or "las" stand for!

### R History

A history of your commands is saved and it can be accessed by using the up and down keys. Your history is also saved as .Rhistory in your working directory. It is a good idea to save your successful commands in a separate file (or script) because your history will also contain your mistakes!

### R Editor and Scripts

YouTube Video: [R Scripting](https://youtu.be/NbBOss9CjuE)

But most of the time we will be creating a script that has a series of commands that can be executed. RStudio comes with an R script editor. Open editor by selecting "New Script" from the File Menu. Similar to Notepad, it will allow you to type and save code as text.

Once you have a list of commands that you want to execute, you save it with a .R extension. Any R script can be sourced in using the source() function. This essentially executes the commands in the R script line by line.

R Markdown and R Notebook files enable you to intersperse text and code for rendering as HTML or PDF. These provide a great way to document your work and prepare publication-ready materials. We will be using this R Markdowns to submit your homeworks.

*Note: It is not recommended to copy and paste from applications such as MS Word or even PDFs, since these can insert funny characters upon pasting the code into the console or the editor.*
