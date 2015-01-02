library(MsatAllele)
#DB <- readRDS("../Main_DB/Main_DB_new.rds")

#locs <- as.character(unique(DB$Marker))

shinyServer(function(input, output, session){
  
   Dat <- reactive({
     if(is.null(input$file)){
       return(NULL)
     }
      infile <- input$file$datapath
      fastReadFrag(in.file = infile, 
                   date = as.character(Sys.Date()),
                   "test")
   })
  
  
   output$locNames <- renderUI({
     if(is.null(input$file)){
       return(NULL)
     }
     DB <- Dat()
     nms <<- levels(DB$Marker)
     selectInput("locus", label = "Locus:", selected = NULL,
                 choices = nms)
   })
  
  #DB <- readRDS(input$file)
  #locs <- as.character(unique(DB$Marker)) 
  output$myplot <- renderPlot({
    if(input$goButton == 0) return(NULL)
    isolate({
      DB <- Dat()
      allCum(DataBase = DB, loci = as.character(input$locus), 
             limit = input$limit, ymin = input$ymin, 
             ymax = input$ymax)$plt
    })
  })
})