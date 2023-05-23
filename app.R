library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      h2("Installation"),
      p("Shiny is avaliable on CRAN"),
      code('install.packages("shiny")'),
      br(),
      br(),
      img(src = "rstudio.png", height = 50, width = 150),
      p("Shiny is a product of ", span("RStudio", style = "color:blue"))
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a pckage from RStudio", em("very easy")),
      br(),
      p("visit the", a(href="https://shiny.posit.co/", "Shiny homepage!")),
      br(),
      h1("Features"),
      p("Shiny is like", strong("spreadsheets")),
     
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)