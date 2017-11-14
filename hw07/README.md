# HW07

## Description
In this homework I mainly practised how to use make to automate data analysis pipelines. There are 5 main steps in this homework:

Download gapminder dataset from github
Clean the original dataset and write a new one for analysis later
Perform some analysis using the new dataset
Generate some figures to help visualization
Create a makefile to automate the analysis

## Links to homework submissions
### IMPORTANT: This homework is in a new repository since it needs makefile. Please check out the below link.

[Repository of hw07](https://github.com/qiaoyuet/STAT545-hw07-Tang-Qiaoyue)

[Return to main directory](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue)

## Report process
- The difficulties in this homework was mainly to create the makefile. I followed the examples given in the lecture and it helped me a lot when completing this homework. I found makefile very useful since it now only needs one click to generate all the files I need for analysis. And most importantly, if I correctly tell it all the dependencies, it can reporduce itself after I make changes in the scripts. It's a very neat way to keep track of the scripts and changes. Some code in the analysis part of this assignment is recycled from my previous homeworks.
- The other thing I encountered is to make for loop to run all the highly-replicated code. I had difficulties when including ggsave() in the for loop expecially when giving each output a different name. I eventually used paste0 to do that.