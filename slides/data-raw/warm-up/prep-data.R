
# A list of active/current Seattle pet licenses, including animal type (species), pet's name, breed and the owner's ZIP code.
# https://data.seattle.gov/Community/Seattle-Pet-Licenses/jguv-t9rb/about_data

library(tidyverse)

seattle_pets <-
  read_csv(here::here("slides", "data-raw", "warm-up", "Seattle_Pet_Licenses_20240802.csv")) |>
  janitor::clean_names() |>
  rename(animal_name = animals_name)

seattle_pets |>
  write_csv(here::here("slides", "data", "warm-up", "seattle_pets.csv"))
