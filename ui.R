
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Conoces tu red de Twitter"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      
      
      HTML('
        <label for="twitterUser">Cuenta de Twitter:</label>
        <input id="twitterUser" type="text" class="form-control" value="@StartupsPal"/>
      '),
        
      sliderInput("followers",
                  "Numero de followers:",
                  min = 1,
                  max = 5000,
                  value = 1000),
      
      actionButton("goButton", "Go!")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
