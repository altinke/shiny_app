library(shiny)

shinyServer(function(input, output) {

  # We use a reactive function to calculate the year in which our visitor was born   
  yearOfBirth <- reactive({
    # The current year is the year we are living in
    currentYear <- as.integer(format(Sys.Date(), "%Y"))
    # The current age is given by the user
    currentAge <- input$ageSlider
    # If the visitor has had his or her birthday the year of birth is the current year minus the age
    if(input$hadBirthday) {
      currentYear - currentAge
    } else {
      # Otherwise it is one year earlier
      currentYear - currentAge - 1
    }
  })
  
  # Output the result as text
  output$yearOfBirth <- renderText({
    yearOfBirth()
  })
  
})
