# STAT545-hw09-Tang-Qiaoyue

## Description
I worked through [tutorial by Jenny Bryan](http://stat545.com/packages06_foofactors-package.html) and added more functions and updated documentations and tests for this `foofactor` package.

The three functions I added to this package are:
- detect_fct(): detect factors that should be character because # unique values = length
- reorder_desc(): write a version of reorder() that uses desc() a la (d)plyr
- factor_asis(): write a version of factor() that sets levels to the order in which they appear in the data, i.e. set the levels “as is”

## Links

[Link to foofactor package](https://github.com/qiaoyuet/foofactors)

[Link to functions in foofactor package](https://github.com/qiaoyuet/foofactors/tree/master/R)

[Link to tests in foofactor package](https://github.com/qiaoyuet/foofactors/tree/master/tests/testthat)

[Link to foofactor package vignettes](https://github.com/qiaoyuet/foofactors/blob/master/vignettes/hello-foofactors.md)

[Return to main homework directory](https://github.com/qiaoyuet/STAT545-hw-Tang-Qiaoyue)

## Report process
- One thing that I keeps forgetting when writting functions is to call `other_package_name::` in front of functions that are from other packages. Especially, basic packages such as `stats` and `base` should both be called. Otherwise warnings would appear during `check()`.
- I didn't quite get the difference between the README documentation and the vignettes documentation. In Jenny's tutorial, these two documents contain exactly the same information. I found this [issue](https://github.com/STAT545-UBC/Discussion/issues/249) that students post for this question from past years. To summarize, vignettes are more for the package development while README is more for Github. The contents for vignettes should be more formal in real cases. To see a real example, we can compare `browseVignettes("dplyr")` with the [README for dplyr](https://github.com/tidyverse/dplyr).