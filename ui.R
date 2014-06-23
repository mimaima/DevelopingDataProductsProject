library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Know Texas Electricity Prices!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
		helpText("In Texas, electricity prices in whole sale market are different for each hour each day."),
		
        helpText("Please choose the day you are interested to see the hourly electricity prices."),

		selectInput("wDay", "Choose a day:", 
                choices = c('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday')),
		
		helpText("Note: The median hourly electricity prices are based on the most recent 30 days data downloaded from ERCOT.com.")
	),
    
    # Show a plot of the generated curve
    mainPanel(
      plotOutput("curvePlot")
    )
  )
))