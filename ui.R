library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Calculate your Semester GPA"),
    sidebarPanel(
      sliderInput('s1', 'GPA in subject 1', 0, min = 0, max = 4, step = 0.01),
      sliderInput('cdt1', 'Credit Hours Subject 1', 0, min = 0, max = 5, step = 0.5),
      sliderInput('s2', 'GPA in subject 2', 0, min = 0, max = 4, step = 0.01),
      sliderInput('cdt2', 'Credit Hours Subject 2', 0, min = 0, max = 5, step = 0.5),
      sliderInput('s3', 'GPA in subject 3', 0, min = 0, max = 4, step = 0.01),
      sliderInput('cdt3', 'Credit Hours Subject 3', 0, min = 0, max = 5, step = 0.5),
      sliderInput('s4', 'GPA in subject 4', 0, min = 0, max = 4, step = 0.01),
      sliderInput('cdt4', 'Credit Hours Subject 4', 0, min = 0, max = 5, step = 0.5),
      sliderInput('s5', 'GPA in subject 5', 0, min = 0, max = 4, step = 0.01),
      sliderInput('cdt5', 'Credit Hours Subject 5', 0, min = 0, max = 5, step = 0.5),
      sliderInput('s6', 'GPA in subject 6', 0, min = 0, max = 4, step = 0.01),
      sliderInput('cdt6', 'Credit Hours Subject 6', 0, min = 0, max = 5, step = 0.5),
      submitButton('Calculate!')
    ),
    mainPanel(
      h3('Your Semester GPA'),
      verbatimTextOutput("GPA")
    )
  )
)