load_fish = function(path){
  
  fish_list = list.files(path, full.names = T, pattern = ".csv")
  
  read_data = lapply(fish_list, read.csv)
  df_fish = data.table::rbindlist(read_data)
}

tidy_fish = function(df_fish) { 
  filter_df_fish = df_fish |> 
    dplyr::select(scientificname, 
                  decimallongitude, 
                  decimallatitude, 
                  bathymetry) |>
    dplyr::rename(species = "scientificname", 
                  longitude = "decimallongitude",
                  latitude = "decimallatitude")
    }
