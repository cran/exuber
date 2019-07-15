## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE, warning = FALSE, message = FALSE,
  comment = "#>"
)

## ----load, echo=FALSE, message=FALSE-------------------------------------
library(exuber)

## ----generate simulated data---------------------------------------------
set.seed(125)
# The fundamental value from the Lucas pricing model
pf <- sim_div(400)

# The Evans bubble term
pb <- sim_evans(400)

# the scaling factor for the bubble
kappa <- 20
# 
# The simulated price
p <- pf + kappa*pb

## ----plot simulation, eval = TRUE, fig.width = 9, echo=FALSE-------------
library(ggplot2)
library(dplyr)

tibble(
  index = 1:NROW(p),
  "Price" = p
  ) %>% 
  ggplot(aes(x = index, y = Price)) + 
  geom_line() +
  theme_bw() +
  labs(y = "", x = "")

## ----simulate------------------------------------------------------------
library(ggplot2)
library(purrr)

processes <- tibble(
  sim_psy1 = sim_psy1(100),
  sim_psy2 = sim_psy2(100),
  sim_evans = sim_evans(100),
  sim_blan = sim_blan(100)
)

## ----autoplot-sim, fig.width = 9, fig.height=7---------------------------
processes %>% 
  map(autoplot) %>% 
  ggarrange()

## ----omit, eval=FALSE, include=FALSE-------------------------------------
#  
#  # procceses %>%
#    # tidyr::gather(name, value, -period, factor_key = TRUE) %>%
#    # ggplot(aes(x = period, y = value)) +
#    # geom_line() +
#    # labs(y = "", x = "") +
#    # facet_wrap(~name, ncol = 2, scales = "free_y")+
#    # theme_minimal() +
#    # theme(panel.border = element_rect(colour = "black", size = 1, fill = NA))

