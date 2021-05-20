library(shiny)
library(shinycssloaders)
library(shinydashboard)
library(shinyWidgets)
library(shinyBS)

fluidPage(title="Template Title",
  tags$style("@import url(https://use.fontawesome.com/releases/v5.15.3/css/all.css);"),
  tags$head(includeHTML("www/wslh-theme/analytics.html")),
  useShinydashboard(),
  tags$link(rel = "stylesheet",type = "text/css", href = "wslh-theme/wslh.css"),
  titlePanel(
    title=tags$div(class="titlePanel",tags$a(href='https://dataportal.slh.wisc.edu/',tags$img(src='wslh-theme/wslh-logo.png', height = 90))),
    tags$head(tags$link(rel = "icon", href = "wslh-theme/w-favicon.ico"))
  ),
  fluidRow(HTML("<h2 style='margin-top:10px'>Dashboard Title</h2>")),
  navbarPage(id='navtabs',"",
    tabPanel("Nav 1",
      sidebarPanel("Side Bar 1"),
      mainPanel("Main One")
    ),
    tabPanel("Nav 2",
      sidebarPanel("Side Bar 2"),
      mainPanel("Main Two")
     )
  )
)
