library(shiny)
library(MsatAllele)
#DB <- readRDS("../Main_DB/Main_DB_new.rds")
#locs <- as.character(unique(DB$Marker))

shinyUI(
  
  pageWithSidebar(
    
    headerPanel("MsatAllele Explorer"),
    
    sidebarPanel(
      
      fileInput("file", "Input file", multiple = FALSE, accept = NULL),
      
      conditionalPanel(
        condition = "input.file != NULL",
        uiOutput("locNames")
      ),
      
      sliderInput("limit", label = "Bin Range:",
                  min = 0.1, max = 2, value = 0.8, step = 0.05),
      
      numericInput("ymin", label = "ymin",
                  min = 0, max = 700, value = 50, step = 0.5),
      
      numericInput("ymax", label = "ymax",
                  min = 0, max = 700, value = 650, step = 0.5),
      
      actionButton("goButton", "Run")
      
    ),
    
    mainPanel(
      plotOutput("myplot")
    ))
)