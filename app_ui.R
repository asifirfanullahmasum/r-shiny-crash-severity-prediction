# Load libraries so they are available
library("shiny")


intro_panel <- tabPanel(
  title = "Introduction",
  titlePanel(
    "Introduction"
  ),
)

objective_panel <- tabPanel(
  title = "Project Objective",
  titlePanel("Project Objective"),

) 

architecture_panel <- tabPanel(
  title = "Architecture and Methodology",
  titlePanel("Architecture and Methodology"),
  
)

preprocessing_panel <- tabPanel(
  title = "Data Pre-processing",
  titlePanel("Data Pre-processing"),
  div(
    includeHTML("Data Preprocessing.html")
  )
  
)

exploration_panel <- tabPanel(
  title = "Data Exploration",
  titlePanel("Data Exploration"),
  div(
    includeHTML("Data Exploration.html")
  )
  
)

model_evaluation_panel <- tabPanel(
  title = "Model Evaluation",
  titlePanel("Model Evaluation"),
  div(
    includeHTML("Model Evaluation.html")
  )
)

conclusion_panel <- tabPanel(
  title = "Conclusion",
  titlePanel("Conclusion"),
)
  
sidebar_content <- sidebarPanel(
  #sliderInput("percentile", "Income Percentile",
  #            min = 0, max = 100, value = 0
  #)
)

ui <- navbarPage(
  title = "Crash Severity Prediction",
  intro_panel,
  objective_panel,
  architecture_panel,
  preprocessing_panel,
  exploration_panel,
  model_evaluation_panel,
  conclusion_panel
)