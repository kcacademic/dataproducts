library(shiny)

# Define UI for dataset viewer application
shinyUI(
  fluidPage(
    # Application title
    headerPanel("Car Mileage Predictor Application"),
  
    fluidRow(
      column(2,
        h3('Input'),
        numericInput('cyl', 'Number of Cylinders', 4, min = 2, max = 8, step = 1),
        numericInput('disp', 'Displacement of Engine (in Cubic Inches)', 100, min = 60, max = 300, step = 10),
        submitButton('Submit')
      ),
      column(5,
          h3('Results of Prediction'),
          h4('You entered'),
          h6('Number of Cylinders'),
          verbatimTextOutput("cyl"), 
          h6('Displacement'),
          verbatimTextOutput("disp"),
          h4('Which resulted in a mileage prediction of '),
          verbatimTextOutput("prediction")
      ),
      column(5,
             h3('Guide to Application'),
             h6("This is a very simple application which makes use of the following input to predict the mileage of a car."),
             h6("* Number of Cylinders"),
             h6("* Displacement of Engine (in Cubic Inches)"),
             h6("You can easily get these details from the user manual of your car."),
             h6("The application makes use of the dataset mtcars available in R to build a regression model and predict the mileage of a new car."),
             h3('How to Use'),
             h6("Simply use the input buttons at the left side to enter your values and hit the submit button. 
                That should bring out the predicted mileage in the middle section."),
             h6("You will also see the values you entered in the middle section."),
             h6("So go ahead and check out this simple but cool application!")
      )
    )
  )
)

