library(shiny)
average <- function(s1, s2, s3, s4, s5, s6, cdt1, cdt2, cdt3, cdt4, cdt5, cdt6)
  (s1*cdt1 + s2*cdt2 + s3*cdt3 + s4*cdt4 + s5*cdt5 + s6*cdt6) / (cdt1+cdt2+cdt3+cdt4+cdt5+cdt6)



shinyServer(
  function(input, output) {
    output$GPA <- renderPrint({
      average(input$s1, input$s2, input$s3, input$s4, input$s5, input$s6, 
              input$cdt1, input$cdt2, input$cdt3, input$cdt4, input$cdt5, input$cdt6)
    })
  }
)  