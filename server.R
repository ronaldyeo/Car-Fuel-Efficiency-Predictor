library(shiny)
library(tidyverse)
library(caret)

# Regression model
lm_model <- train(mpg ~ cyl + hp + wt, data=mtcars, method="lm")


# Define server logic required
shinyServer(function(input, output) {

    output$text <- renderText({
        # Prediction
        new_data <- data.frame(cyl = input$cyl , hp = input$hp , wt = input$wt/1000)
        
        predict(lm_model, new_data)

    })

})
