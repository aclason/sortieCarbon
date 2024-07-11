
#data table that healps split out all categories of downed wood in SORTIE:
vollog_cat <- data.table::data.table(grid = c(paste0("vloggroup",
                                                     c(rep(1,5),rep(2,5),rep(3,5)),
                                                     "small","decay",rep(seq(1,5),3)),
                                  paste0("vloggroup",c(rep(1,5),rep(2,5),rep(3,5)),
                                         "large","decay",rep(seq(1,5),3))),
                         group = rep(c(rep(1,5),rep(2,5),rep(3,5)),2),
                         size = c(rep("small",15),rep("large",15)),
                         decay = c(rep(seq(1,5),6)))

usethis::use_data(vollog_cat, overwrite = TRUE)
