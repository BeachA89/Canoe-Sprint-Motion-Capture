

sidebar <-  dashboardSidebar(
    fileInput("Files", "Choose Vicon csv Files", multiple = TRUE),
    selectInput("Report_Type", "Report Type:",
                c("Single Session" = "Single Session",
                  "Two Sessions" = "Two Sessions")),    
    
    actionButton("goButton", "Go!"),
    
    uiOutput("select_Name"),
    uiOutput("select_Date"),
    uiOutput("select_Speed"),
    uiOutput("select_Name2"),
    uiOutput("select_Date2"),
    uiOutput("select_Speed2")
    
)
# sidebar <- dashboardSidebar(
#   sidebarMenu(
#     menuItem("SpatioTemporal", tabName = "SpatioTemporal", icon = icon("app")),
#     menuItem("JointAngles", tabName = "JointAngles", icon = icon("app")),
#     menuItem("PelvicThoraxAngles", tabName = "PelvicThoraxAngles", icon = icon("app")),
#     menuItem("JointVelocities", tabName = "JointVelocities", icon = icon("app")),
#   ),
#   
#   fileInput("Athletes", "Choose Athlete Data"),
#   fileInput("Benchmark", "Choose Benchmark Data"),
#   actionButton("goButton", "Go!"),
#   
#   uiOutput("select_Event"),
#   uiOutput("select_Name"),
#   uiOutput("select_Name2")
# )


body <-   dashboardBody(
    # tabItems(
    #   tabItem(
    #     tabName = "SpatioTemporal", h2("SpatioTemporal data"),
    fluidRow(
        tabsetPanel(
            tabPanel("Paddle",
                     fluidRow(column(4,box(title = "Paddle Movement (Back View)", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPaddleBack"))),
                              # column(6,box(title = "Knee Flexion/Extension Left/Right Difference", status = "primary", solidHeader = TRUE,width = 12,
                              #              plotOutput("ggplotKneeDiff")))),
                     column(4,box(title = "Paddle Movement (Top View)", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPaddleTop"))),
                     column(4,box(title = "Paddle Movement (Side View)", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPaddleSide")))),
                     
                     
                     ),        
            tabPanel("Joint Angles",
                     fluidRow(column(4,box(title = "Knee Flexion/Extension", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotKnee"))),
                     column(4,box(title = "Knee Flexion/Extension Left/Right Difference", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotKneeDiff"))),
                     column(4,box(title = "Knee Flexion/Extension Velocity", status = "primary", solidHeader = TRUE,width = 12,
                                  plotOutput("ggplotKneeVel")))),
                     fluidRow(column(4,box(title = "Thorax Rotation", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotThorax"))),
                     column(4,box(title = "Thorax Rotation Left/Right Difference", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotThoraxDiff"))),
                     column(4,box(title = "Thorax Rotation Velocity", status = "primary", solidHeader = TRUE,width = 12,
                                  plotOutput("ggplotThoraxVel")))),
                     fluidRow(column(4,box(title = "Pelvis Rotation", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPelvis"))),
                     column(4,box(title = "Pelvis Rotation Left/Right Difference", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPelvisDiff"))),
                     column(4,box(title = "Pelvis Rotation Velocity", status = "primary", solidHeader = TRUE,width = 12,
                                  plotOutput("ggplotPelvisVel")))),
                     fluidRow(column(4,box(title = "Pelvis Shoulder Separation", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPelShoulder"))),
                     column(4,box(title = "Pelvis Shoulder Separation Left/Right Difference", status = "primary", solidHeader = TRUE,width = 12,
                                           plotOutput("ggplotPelShoulderDiff"))),
                     column(4,box(title = "Pelvic Shoulder Separation Velocity", status = "primary", solidHeader = TRUE,width = 12,
                                  plotOutput("ggplotPelShoulderVel"))))

            )
            
            

            # tabPanel("Forces",
            #          column(6,box(title = "Z GRF", status = "primary", solidHeader = TRUE,width = 12,
            #                       plotOutput("ggplotZ_GRF"))),
            #          column(6,box(title = "X GRF", status = "primary", solidHeader = TRUE,width = 12,
            #                       plotOutput("ggplotX_GRF")))
            #          
            # ),
            # tabPanel("JointAngles",
            #          fluidRow(column(6,box(title = "Joint Angle Summary", status = "primary", solidHeader = TRUE,width = 12,
            #                                dataTableOutput("JointAngletable"))),
            #                   column(6,box(title = "Joint Velocity Summary", status = "primary", solidHeader = TRUE,width = 12,
            #                                dataTableOutput("JointVeltable")))), 
            #          
            #          fluidRow(column(6,box(title = "Ankle Dorsiflexion", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotankle_dorsiflexion"))),
            #                   column(6,box(title = "Ankle DF/PF Velocity", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotankle_dorsiflexion_vel")))),                         
            #          fluidRow(column(6,box(title = "Knee Flexion", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotknee_flexion"))),
            #                   column(6,box(title = "Knee Flexion/Ext Velocity", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotknee_flexion_vel")))),
            #          
            #          fluidRow(column(6,box(title = "Hip Flexion", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplothip_flexion"))),
            #                   column(6,box(title = "Hip Flexion/Ext Velocity", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplothip_flexion_vel"))))
            #          
            #          
            #          
            #          
            # ),
            # tabPanel("Pelvic Thorax",
            #          fluidRow(box(title = "Pelvic/Thorax Summary", status = "primary", solidHeader = TRUE,width = 12,
            #                       dataTableOutput("PelvicThoraxAngletable"))),
            #          
            #          
            #          fluidRow(column(6,box(title = "Pelvis Tilt", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotpelvis_tilt"))),
            #                   column(6,box(title = "Thorax Tilt", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotthorax_tilt")))),                        
            #          fluidRow(column(6, box(title = "Pelvis Obliquity", status = "primary", solidHeader = TRUE,width = 12,
            #                                 plotOutput("ggplotpelvis_obliquity"))),
            #                   column(6,box(title = "Thorax Obliquity", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotthorax_obliquity")))),                        
            #          fluidRow(column(6,box(title = "Pelvis Rotation", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotpelvis_rotation"))),
            #                   column(6,box(title = "Thorax Rotation", status = "primary", solidHeader = TRUE,width = 12,
            #                                plotOutput("ggplotthorax_rotation"))))
        )
    )
)





#             )
#             )
#     ),
#     tabItem(tabName = "JointAngles",
#       h2("JointAngles data")),
#      tabItem(tabName = "PelvicThoraxAngles",
#              h2("PelvicThoraxAngles data")),
#      tabItem(tabName = "JointVelocities",
#              h2("JointVelocities data"))
#   )
# )






# 
#     )
#   
# 
#     ),
#     fluidRow(
#       box(title = textOutput("BoxTitle2"), status = "primary", solidHeader = TRUE, width = 12,
#           collapsible = TRUE,
#           dataTableOutput("table_Athlete"))
#     ),
#     fluidRow(
#       box(title = textOutput("BoxTitle3"), status = "primary", solidHeader = TRUE, width = 12,
#           collapsible = TRUE,
#           dataTableOutput("table_Athlete2"))
#       
#     )
#   )
#   fluidRow(
#     box(title = "Splits vs Top 10 average", status = "primary", solidHeader = TRUE,width = 12,
#         collapsible = TRUE,dataTableOutput("table3split"))
#   ),
#   fluidRow(
#     box(title = "Splits vs Top 10 average", status = "primary", solidHeader = TRUE,width = 12,
#         collapsible = TRUE,plotOutput("ggplotsplit"))
#     
#   )
#   
# )




dashboardPage(
    dashboardHeader(title = "Canoe Sprint 3D Analysis"),
    sidebar,
    body)






# Create Shiny app ----
# shinyApp(ui, server)