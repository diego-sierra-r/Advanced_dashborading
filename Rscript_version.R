## ----setup, include=FALSE-------------------------------
library(flexdashboard)
library(tidyverse)
library(palmerpenguins)#dataset
library(plotly)
library(DT)
library(fontawesome)
data("penguins")



## -------------------------------------------------------
valueBox(nrow(penguins), icon = "fa-linux")


## -------------------------------------------------------
avg_mass <- round(mean(penguins$body_mass_g, na.rm = T), 2)
flexdashboard::gauge(avg_mass,
                     min = (0),
                     max = max(penguins$body_mass_g, na.rm = T),
                     gaugeSectors(success = c(4000,6300),
                                  warning = c(2000,3999),
                                  danger = c(0,1999)))


## -------------------------------------------------------
a <- penguins |> 
        ggplot(aes(bill_length_mm, 
                   bill_depth_mm,
                   color = species)) + 
        geom_point()

ggplotly(a)


## -------------------------------------------------------
penguins |> 
        ggplot(aes(flipper_length_mm, 
                   fill = species)) + 
        geom_histogram()+
        facet_wrap(~species)


## -------------------------------------------------------
penguins |> 
        ggplot(aes(body_mass_g, 
                   sex,
                   fill = sex)) + 
        geom_boxplot() 


## -------------------------------------------------------
penguins |>   datatable(extensions = "Buttons",
                        options = list(dom = "Blfrtip",
                                       buttons = c("copy",
                                       "csv",
                                       "excel",
                                       "print")))

