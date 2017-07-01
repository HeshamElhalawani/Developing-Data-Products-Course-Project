library(shiny)

shinyUI(
  navbarPage("My First Shiny Application",
             tabPanel("Data Explorer",
                      fluidPage(
                        titlePanel("(mtcars) Data Explorer"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Attribute:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Linear Regression Model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
            tabPanel("Check the database",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description : "),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)."),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables.")
                    
                                 ),
             tabPanel("Check the Source Code",
                      h2("All the Source code can be find in github"),
                      hr(),
                      h3("Here : https://github.com/HeshamElhalawani/Developing-Data-Products-Course-Project"),
                      helpText("There you will find both server.R & ui.R files")
                               
             ),
             tabPanel("How to use this app 101",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description"),
                      helpText("This shiny application generates the linear regression between two variables of the “mtcars” dataset. One of these 2 variables is always miles per gallon which is surrogate for fuel consumption.",
                               "Thus, this application can simply correlate fuel consumption to 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973–74 models)."),
                      h3("How to use"),
                      p("Please follow these steps:"),
                      
                      p("  [1]   select an automobile attribute form the drop-down variables list"),
                      p("  [2]	 check/uncheck the checkbox to include/exclude outliers"),
                      p("  [3]	 Select the 'Boxplot' tab to get a boxplot representation of the data"),
                      p("  [4]	 Select the 'Linear Regression Model' tab to view the corresponding plot")
                     
             ),
             tabPanel("Go back to my Github repository",
                      a("https://github.com/HeshamElhalawani/Developing-Data-Products-Course-Project"),
                      hr(),
                      h2("Please enrich this application with your comments/feedback."),
                      h2("Github repository: Developing-Data-Products-Course-Project")
             )
  )
)
