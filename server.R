
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# Shiny
# by RStudio
# A web application framework for R
# Turn your analyses into interactive web applications
# No HTML, CSS, or JavaScript knowledge required

library(shiny)

source("twitterMAP.R")
# DEBUG
# cat("source(twitterMAP.R)")

library(tm)
library(wordcloud)
library(RColorBrewer)

apiKey   	<- "sVebuSJA0mtUAPXufbeT9tYRI"
apiSecret 	<- "yTv7nFSE7IU2JROF7tCYIxCfaYNNMQh8WfKGc6AFCO5SFW6Tws"
token 		<- "34754876-N5hfoMJnj8KkGihI6y3DqA9e4rtDf1SeTr6G9vcxB"
tokenSecret <- "N1w1oDQdpzOnuGQ2JjshYutpFh7li53GGs1HW9VHoEqFR"

# Direct authentication
setup_twitter_oauth(apiKey, apiSecret, token, tokenSecret )

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    input$goButton
    
    # DEBUG
    # cat("twitterMap(input$twitterUser)")
    isolate(twitterMap(input$twitterUser))
    

  })

})
