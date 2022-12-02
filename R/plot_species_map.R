#' plot_species_map.R
#' 
#' @description Plot species occurrences on world map, save the plot in "figures" file.
#'
#' @return the path to the saved plot
#' @export
#'
#' @examples


plot_species_on_map <- function( species_occurrences, 
                                 crop_longitude = c(-180, 180), 
                                 crop_latitude =  c(-80, 80)
                                 ){
  
  coast <- sf::st_read("data/raw-data/ShapeFiles coast/GSHHS_h_L1.shp")

  library(ggplot2)
  
  map <- ggplot(coast) + 
    geom_sf() +
    coord_sf(xlim = crop_longitude, 
             ylim = crop_latitude) +
    geom_point(data = species_occurrences, 
               aes(x = longitude, 
                   y = latitude, 
                   color =species, 
                   fill = species),
               size=0.5) +
    ggtitle("OBIS observations of species")+
    theme_light()+
    theme(
      plot.title = element_text(size = 15L,
                                face = "bold",
                                hjust = 0.5),
      axis.title.y = element_text(face = "bold"),
      axis.title.x = element_text(face = "bold")
      )
  
  ggsave("outputs/species_occurrences.png", plot = map, width=15, height=10)
  
  return(here::here("outputs", "species_occurrences.png"))
  
} # end of function