# STAT545-hw08-Tang-Qiaoyue

## Description
I used the [dataset from BC liquor store](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw08/BC_Liquor_Store/bcl-data.csv) given in class, and I added the following features to the original BC Liquor Store App:
- Add an option to sort the results table by price.
- Add an image of the BC Liquor Store to the UI.
- Use the DT package to turn the current results table into an interactive table.
- Add parameters to the plot.
- The app currently behaves strangely when the user selects filters that return 0 results. For example, try searching for wines from Belgium. There will be an empty plot and empty table generated, and there will be a warning message in the R console. Try to figure out why this warning message is appearing, and how to fix it.
- Place the plot and the table in separate tabs.
- Show the number of results found whenever the filters change.
- Allow the user to download the results table as a ..csv file.
- Provide a way for the user to show results from all countries (instead of forcing a filter by only one specific country).

## Links

[Link to BC Liquor Store App](https://qiaoyuet.shinyapps.io/bc_liquor_store/)

[Link to code of ui.R](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw08/BC_Liquor_Store/ui.R)

[Link to the code of server.R](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw08/BC_Liquor_Store/server.R)

[Return to main homework directory](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue)

## Report process
I think this homework is a lot of fun because it is interesting to discover that `shiny` can be so powerful in building apps. The biggest cofusion for me was to figure out where should I put the changes, in `ui.R` or `server.R` and in which part of either `ui.R` and `server.R`. After figuring that out and following the hint, the implementation is not so difficult. I found [this tutorial](https://shiny.rstudio.com/tutorial/) really useful when implementing the changes and figuring out what do those shiny functions do.