library("shiny")

# Define a server function
server <- function(input, output){
  file <- "/Crash-Severity-Project.html"
  output$show <- renderUI({
    includeHTML(file)
  })
}
