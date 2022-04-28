library(shiny)
library(shinydashboard)

card <- function(id, label, description, pic, link, status) {
  ns <- NS(id)
  tagList(
    box(
      width = 4,
      title = label,
      background = "black",
      solidHeader = TRUE,
      img(src = pic, height = '75px', width = '75px',
          onclick = paste0("window.open('", link,"', ","'_blank')")
      ),
      h4("Status: "), p(status),
      h4("Description: "), p(description),
      p("Repository")
    )
  )
}

ui <- dashboardPage(
  dashboardHeader(title = "Data Pack Homebase",
                  tags$li(a(
                            img(src = 'space-station.png',
                                title = "Company Home", height = "50px"),
                            style = "padding-top:10px; padding-bottom:10px;"),
                          class = "dropdown")
  ),
  dashboardSidebar(),
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "box.css")
    ),
    # Apps ----
    fluidRow(
      h4("Homebase was created in order to organize all the shiny apps and r packages maintained by the Data Pack team. Click on any of the items below to reach the corresponding application or package repository.")
    ),
    fluidRow(h3("Shiny Apps")),
    br(),
    fluidRow(
      card(
        id = "datapackr_app",
        label = "Datapackr App",
        pic = "datapackr.png",
        link = "https://github.com/pepfar-datim/datapackr-app",
        status= "active",
        description = "The datapackr app was built on top of the datapackr package as a self service application for countries to upload their datapacks."
      ),
      card(
        id = "datapackr_app_import",
        label = "Datapack Import App",
        pic = "datapackr.png",
        link = "https://github.com/pepfar-datim/datapackr-app",
        status= "active",
        description = "Coming soon: The datapackr import app was built to handle datapack imports to datim."  
        ),
      card(
        id = "datapackr_app_approvals",
        label = "Datapack Approval App",
        pic = "datapackr.png",
        link = "https://google.com",
        status= "active",
        description = "Coming soon: The datapackr import app was built to handle datapack imports to datim."
      )
    ),
    # Packages ----
    fluidRow(h3("R Packages")),
    br(),
    fluidRow(
      card(
        id = "datapackr_package",
        label = "Datapackr",
        pic = "datapackr.png",
        link = "https://github.com/pepfar-datim/datapackr",
        status= "active",
        description = "The primary package maintained by the datapack team, it handles processing datapack spreadsheets..."
      ),
      card(
        id = "datimutils_package",
        label = "Datimutils",
        pic = "datapackr.png",
        link = "https://github.com/pepfar-datim/datimutils",
        status= "active",
        description = "The datimutils package holds valuable functions to interact with the DATIM api."
      ),
      card(
        id = "datapackr_commons_package",
        label = "Datapack-commons",
        pic = "datapackr.png",
        link = "https://github.com/pepfar-datim/data-pack-commons",
        status= "active",
        description = "Not sure... we will see what this might be, currently not sure what it is"
      ),
      card(id = "datapack_package",
           label="Data-Pack",
           pic = "datapackr.png",
           link="https://github.com/pepfar-datim/Data-Pack",
           status= "active",
           description = "The original home of import scripts for importing data to DATIM once datapacks are approved."
           ),
      card(id = "datapackuserguide_package",
           label="Data Pack User Guide",
           pic = "datapackr.png",
           link="https://github.com/pepfar-datim/Data-Pack",
           status= "active",
           description = "This repository shows users how to utilize the datapack self service app."
      ),
   
    )
  )
)

server <- function(input, output) {
  
}

shinyApp(ui, server)
