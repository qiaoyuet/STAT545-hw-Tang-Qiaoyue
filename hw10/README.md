# STAT545-hw10-Tang-Qiaoyue

## Description

In this homework, I demonstrated how to scrape a webpage using r packages `rvest`. I extract some information from the billboard 200 best albums [link](https://www.billboard.com/charts/greatest-billboard-200-albums). The extracted information are then stored in a dataframe. Some basic downstream analysis was performed with this cleaned dataframe.

## Links

[Link to md file](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw10/hw10.md)

[Link to the cleaned dataframe](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue/blob/master/hw10/billboard.csv)

[Return to main homework directory](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue)

## Report process
- Used str_trim to remove white spaces
- There are several pages that are broken and R returns an error. But `get_stats_safe` is able to handle it with returning "None available": bruce-springsteen; herb-alperts-tijuana-brass; original-cast-recording; diana-ross-the-supremes; herb-alpert-the-tijuana-brass
- Some of the albums have artist listed as "soundtrack" because the album is from a movie or TV show. Billboard gives the same link for all "soundtrack" artists so it is not informative.
- The `mutate(Stats = map(Link, get_stats_safe))` runs very slow. Probably because it needs to iterate 200 times. I'm not sure if there's another way to make it faster.