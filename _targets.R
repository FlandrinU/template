library(targets)

tar_source()

list(
    tar_target(path, "data/raw-data"),
    tar_target(df_fish, load_fish(path)),
    tar_target(clean_df_fish, tidy_fish(df_fish)),
    tar_target(plot_species, plot_species_on_map(clean_df_fish)),
    tarchetypes::tar_quarto(report, "Quarto/QUARTOTEST.qmd")
)


