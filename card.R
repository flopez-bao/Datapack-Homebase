card <- function(id, label, description) {
  ns <- NS(id)
  tagList(
    box(
      title = label, background = "black", solidHeader = TRUE
    )
  )
}

