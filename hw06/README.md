# HW06

## Description

This homework investigates character data, including using regular expressions; writing functions in R and also some code with nested data frame.

## IMPORTANT: Instruction for viewing this homework

Since in Part 1 of this homework I used `str_view()` to see the matches of strings and it is a html widget that cannot be displayed in github properly. Try the following to view it:

(1) Go to the [homepage](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue)
(2) Click up-right corner "Clone or Download" and click "Download Zip"
(3) After download and unzip, click on the folder of hw06, find the hw06.html and you can view it now!

## Links to homework submissions

[MD File of hw06](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw06/hw06.md)

[RMD File of hw06](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw06/hw06.Rmd)

[HTML File of hw06](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw06/hw06.html)

[Return to main directory](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue)

## Describe Process of hw06

- Part 1: Q5 str_pad does not work if there are already white spaces in between
- Part 1: Q26: ", and |, " is different from ", |, and " which I'm not sure why this is the case.
- Part 2: Writing functions: I initially tried to plot the regression lines using function output, but do not know how to do it, especially with quadratic fit and robust fit. (linear fit is already encoded by method = "lm" in ggplot)
- Part3: I tried to use a robust regression to fit life expectancy vs. time but I found that "rlm' failed to converge in 20 steps", so maybe rlm cannot handle the dataset in this case.