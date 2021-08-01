library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Interactive visualization of non-linear logistic regression decision boundaries"),
  

  
  sidebarLayout(
    sidebarPanel(
      selectInput("pattern", "Pattern:",
                  c("Test1" = "test1",
                    "Test2" = "test2")),
      sliderInput("degree",
                  "Degree polynomial:",
                  min = 1,
                  max = 20,
                  value = 1),
      sliderInput("lambda",
                  "Lambda:",
                  min = 1,
                  max = 10,
                  value = 1),
      selectInput("opt", "Optimization algorithm:",
                  c("BFGS Quasi-Newton" = "BFGS",
                    "Nelder-Mead" = "Nelder-Mead",
                    "Conjugate Gradient" = "CG"))
    ),
    
    mainPanel(
      plotOutput("da.plot")
    )
  )
))