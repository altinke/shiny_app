# Load the Shiny library
library(shiny)

# We are going to build a Fluid Page for our app
shinyUI(fluidPage(
  
  # Show a Title Panel and display the title
  titlePanel("Calculate the year of your birth"),
  
  # We will use a sidebar layout with a sidebar and a main panel
  sidebarLayout(
    sidebarPanel(
      # Explain to the visitor what is expected
      h3("Getting started:"),
      p("This app calculates the year you were born in. It does so by asking your age and if you had your birthday."),
      p("Simply enter your age by using the slider and remove the check if your birthday is yet to come this year"),
      p("After you are done, press the Submit button to check if the app calculated the correct year."),
      
      # Ask for input to collect the needed data
      sliderInput("ageSlider", "What is your age?", 0, 100, 35),
      checkboxInput("hadBirthday", "Did you have your birthday this year?", value = TRUE),
      
      # Hold the calculations until the visitor presses the Submit button
      submitButton("Submit")
    ),
    
    # The main panel is used to display the output
    mainPanel(
      # Explain what is shown
      h3("You were born in"),
      # Output the calculated result
      textOutput("yearOfBirth")
    )
  )
))
