library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Calculate your Semester GPA"),
    sidebarPanel(
      numericInput('s1', 'GPA in subject 1', 3, min = 0, max = 4, step = 0.01),
      sliderInput('cdt1', 'Credit Hours Subject 1', 3, min = 0, max = 4, step = 0.5),
      numericInput('s2', 'GPA in subject 2', 3, min = 0, max = 4, step = 0.01),
      sliderInput('cdt2', 'Credit Hours Subject 2', 3, min = 0, max = 4, step = 0.5),
      numericInput('s3', 'GPA in subject 3', 3, min = 0, max = 4, step = 0.01),
      sliderInput('cdt3', 'Credit Hours Subject 3', 3, min = 0, max = 4, step = 0.5),
      numericInput('s4', 'GPA in subject 4', 3, min = 0, max = 4, step = 0.01),
      sliderInput('cdt4', 'Credit Hours Subject 4', 3, min = 0, max = 4, step = 0.5),
      numericInput('s5', 'GPA in subject 5', 3, min = 0, max = 4, step = 0.01),
      sliderInput('cdt5', 'Credit Hours Subject 5', 3, min = 0, max = 4, step = 0.5),
      numericInput('s6', 'GPA in subject 6', 3, min = 0, max = 4, step = 0.01),
      sliderInput('cdt6', 'Credit Hours Subject 6', 3, min = 0, max = 4, step = 0.5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Your Semester GPA'),
      verbatimTextOutput("GPA")
    )
  )
)