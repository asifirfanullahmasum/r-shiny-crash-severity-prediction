# Load libraries so they are available
library("shiny")
library("ggplot2")

# Read data file
data <- read.csv("project_dataset.csv", stringsAsFactors = FALSE)

# Define a server function
server <- function(input, output){
  file <- "/Crash-Severity-Project.html"
  output$show <- renderUI({
    includeHTML(file)
  })
}
