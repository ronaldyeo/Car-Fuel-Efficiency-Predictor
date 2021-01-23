library(shiny)

# Define UI for application
shinyUI(fluidPage(

    # Application title
    titlePanel("Car Fuel Efficiency Predictor"),

    # Sidebar with a slider input
    sidebarLayout(
        sidebarPanel(
            sliderInput("cyl", "Number of cylinders:",
                        min = 2, max = 8, value = 4),
            
            sliderInput("hp", "Gross horsepower:",
                        min = 50, max = 300, value = 120),
    
            sliderInput("wt", "Weight (lbs):",
                        min = 1000, max = 6000, value = 3000)
            ),

        # Display output on mainpanel
        mainPanel(
            h3("The predicted Miles per US gallon for the vehicle:"),
            h3(textOutput("text"))
        )
    )
))
