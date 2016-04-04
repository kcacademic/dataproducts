library(shiny)
library(caret)

model <- train(mpg~cyl+disp, method="glm", data=mtcars)
mileage <- function(cyl, disp) {
  inputData <- data.frame(cyl=c(cyl), disp=c(disp))
  predict(model, newdata=inputData)
}

shinyServer(
  function(input, output) {
    output$cyl <- renderPrint({input$cyl})
    output$disp <- renderPrint({input$disp})
    output$prediction <- renderPrint({as.numeric(mileage(input$cyl, input$disp))})
  }
)
