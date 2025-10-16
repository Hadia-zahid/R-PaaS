# app.R
library(shiny)

ui <- fluidPage(
  titlePanel("Hadia Zahid - Portfolio"),

  sidebarLayout(
    sidebarPanel(
      h4("About Me"),
      p("Hi! I'm Hadia Zahid, a Computer Science student at Lahore College for Women University (2021–2025). 
         I’m passionate about full-stack development, WordPress customization, and mobile app integration."),
      p("With 2 years of experience in web and backend development, I specialize in creating secure, 
         user-friendly applications using PHP, JavaScript, and Flutter."),
      hr(),
      h4("Contact"),
      p("📧 Email: hadiazahid@example.com"),
      p("🌐 LinkedIn: linkedin.com/in/hadiazahid"),
      p("💻 GitHub: github.com/hadiazahid"),
      hr(),
      downloadButton("downloadResume", "📄 Download Resume")
    ),

    mainPanel(
      tabsetPanel(
        tabPanel("Skills",
                 h3("Technical Skills"),
                 tags$ul(
                   tags$li("Frontend: HTML, CSS, JavaScript"),
                   tags$li("Backend: PHP, MySQL, Django (Python)"),
                   tags$li("CMS: WordPress"),
                   tags$li("Mobile: Flutter (Android App Integration)"),
                   tags$li("Tools: VS Code, Android Studio, Git, XAMPP")
                 ),
                 tags$img(src = "vector_coding.svg", height = "200px", width = "auto", alt = "Vector Art: Coding")
        ),

        tabPanel("Projects",
                 h3("Highlighted Projects"),
                 fluidRow(
                   column(6,
                          h4("📚 Online Tutor Finder and AI Test Session App"),
                          p("A web and Android platform connecting students with tutors and counsellors. 
                             Features include AI quiz generation, digital library, and Google Maps integration."),
                          tags$img(src = "project1_vector.svg", height = "180px", width = "100%", alt = "Tutor Finder App")
                   ),
                   column(6,
                          h4("🛍️ E-Commerce Store"),
                          p("A full-stack e-commerce store with shopping cart, user authentication, and MongoDB database."),
                          tags$img(src = "project2_vector.svg", height = "180px", width = "100%", alt = "E-Commerce Store")
                   )
                 ),
                 br(),
                 fluidRow(
                   column(6,
                          h4("💬 Real-Time Chat App (MERN)"),
                          p("A real-time chat system with socket.io, user authentication, and MongoDB backend."),
                          tags$img(src = "project3_vector.svg", height = "180px", width = "100%", alt = "Chat App")
                   )
                 )
        ),

        tabPanel("Experience",
                 h3("Professional Experience"),
                 p("✔ Internship: Backend and WordPress plugin development."),
                 p("✔ Freelance Projects: CMS websites and backend systems built with PHP and WordPress."),
                 tags$img(src = "vector_experience.svg", height = "200px", width = "auto", alt = "Experience Vector")
        ),

        tabPanel("Goals",
                 h3("Career Goals"),
                 p("🌟 To become a full-stack developer capable of building secure, scalable, and user-friendly systems."),
                 p("🌟 To gain practical experience through internships and collaborative projects:)"),
                 p("🌟 To explore AI integration, cloud platforms, and automation tools."),
                 tags$img(src = "vector_goal.svg", height = "200px", width = "auto", alt = "Goals Vector Art")
        )
      )
    )
  )
)

server <- function(input, output, session) {
  # Resume download functionality
  output$downloadResume <- downloadHandler(
    filename = function() {
      "Hadia_Zahid_Resume.pdf"
    },
    content = function(file) {
      file.copy("www/Hadia_Zahid_Resume.pdf", file)
    }
  )
}

shinyApp(ui = ui, server = server)
