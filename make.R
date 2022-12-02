#' template: A Research Compendium
#' 
#' @description 
#' A paragraph providing a full description of the project and describing each 
#' step of the workflow.
#' 
#' @author Ulysse Flandrin \email{ulysse.flandrin@gmail.com}
#' 
#' @date 2022/12/01

## Install Dependencies (listed in DESCRIPTION) ----

# renv::restore()
# renv::init()
# renv::install()
# renv::status()
# renv::snapshot()

## Global Variables ----

# You can list global variables here (or in a separate R script)

targets::tar_visnetwork()
targets::tar_make()

## Run Project ----

targets::tar_make()
