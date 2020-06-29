library(shiny)

ui <- fluidPage( 
  downloadButton("button_pdflatex", label = "Pdflatex"),
  downloadButton("button_lualatex", label = "Lualatex")
)

server <- function(input, output) {    
  # Pdflatex engine
  output$button_pdflatex <- downloadHandler(
    filename = function() {
      "pdflatex.pdf"
    },
    content = function(con) {
      rmarkdown::render("pdflatex.Rmd",
                        output_file = con,
                        envir = new.env())
    }
  )
  
  # Lualatex engine
  output$button_lualatex <- downloadHandler(
    filename = function() {
      "lualatex.pdf"
    },
    content = function(con) {
      rmarkdown::render("lualatex.Rmd",
                        output_file = con,
                        envir = new.env())
    }
  )
}

shinyApp(ui = ui, server = server)