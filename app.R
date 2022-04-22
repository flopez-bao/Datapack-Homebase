library(shiny)
library(shinydashboard)


ui <- dashboardPage(
  dashboardHeader(title = "DataPack Homebase",
                  tags$li(a(
                            img(src = 'space-station.png',
                                title = "Company Home", height = "50px"),
                            style = "padding-top:10px; padding-bottom:10px;"),
                          class = "dropdown")
  ),
  dashboardSidebar(),
  dashboardBody(
    # Apps ----
    fluidRow(h3("Apps")),
    fluidRow(
      box(title = "Datapack App", background = "red", solidHeader = TRUE,
          img(src = 'datapackr.png', height = '100px', width = '100px',
              onclick ="window.open('https://github.com/pepfar-datim/datapackr-app', '_blank')"
          )
      ),
      box(title = "Datapack OPU App",  background = "red", solidHeader = TRUE,
          img(src = 'imagefile.png', height = '100px', width = '100px',
              onclick ="window.open('http://google.com', '_blank')"
          )),
      box(title = "Datapack Import App", background = "red", solidHeader = TRUE,
          img(src = 'imagefile.png', height = '100px', width = '100px',
              onclick ="window.open('http://google.com', '_blank')"
          ))
    ),
    # Packages ----
    fluidRow(h3("Packages")),
    fluidRow(
      box(title = "Datimutils", background = "black", solidHeader = TRUE,
          img(src = 'service.png', height = '100px', width = '100px',
              onclick ="window.open('https://github.com/pepfar-datim/datimutils', '_blank')"
          )),
      box(title = "Datapackr", background = "black", solidHeader = TRUE,
          img(src = 'datapackr.png', height = '100px', width = '100px',
              onclick ="window.open('https://github.com/pepfar-datim/datapack', '_blank')"
          )),
      box(title = "Datapack-commons", background = "black", solidHeader = TRUE,
          img(src = 'imagefile.png', height = '100px', width = '100px',
              onclick ="window.open('https://github.com/pepfar-datim/data-pack-commons', '_blank')"
          )),
      box(title = "Data-Pack", background = "black", solidHeader = TRUE,
          img(src = 'imagefile.png', height = '100px', width = '100px',
              onclick ="window.open('https://github.com/pepfar-datim/Data-Pack', '_blank')"
          ))
    )
  )
)

server <- function(input, output) {
  
}

shinyApp(ui, server)