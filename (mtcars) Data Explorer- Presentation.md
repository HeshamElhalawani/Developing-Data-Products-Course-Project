(mtcars) Data Explorer Shiny Application- Presentation
========================================================
author: Hesham Elhalawani
date: July 1st, 2017
autosize: true

Introduction
========================================================

This presentation is part of the Developing Data Products Coursera.org course project submission.

It is an R Presentation generated with RStudio.

The Shiny application pitched by this presentation is at https://hmelhalawani.shinyapps.io/mtcars_data_explorer/

The Shiny app source code is available at https://github.com/HeshamElhalawani/Developing-Data-Products-Course-Project.


The (mtcars- Motor Trend Car Road Tests) database in a nutshell
========================================================

- The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).
- It's composed of a data frame with 32 observations on 11 variables.

- Source:
> Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.


Summary
========================================================


```r
head(mtcars)
```

```
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```


How it works
=======================================================

[1]   select an automobile attribute form the drop-down variables list


[2]	 check/uncheck the checkbox to include/exclude outliers

[3]	 Select the 'Boxplot' tab to get a boxplot representation of the data

[4]	 Select the 'Linear Regression Model' tab to view the corresponding plot


Ready to give it a try?
=======================================================


Use the Shiny app at https://hmelhalawani.shinyapps.io/mtcars_data_explorer/

Get the app source code at https://github.com/HeshamElhalawani/Developing-Data-Products-Course-Project.
                     

