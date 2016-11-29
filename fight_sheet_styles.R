# Define colors
cc_blue_1   = "#1D064C"
cc_blue_2   = "#172168"
cc_blue_3   = "#0FC6FF"
cc_green_1  = "#00A398"
cc_green_2  = "#14F867"
cc_purple_1 = "#C41BFC"
cc_purple_2 = "#FF22CA"
cc_lemon    = "#EBF83B"
cc_red_1    = "#B91E2C"
cc_red_2    = "#DD0514"

# Bar charts
cc_bar_chart_percent <- function(data, x, y, z) {
  P1 <- ggplot(data, aes(x    = character,
                 y    = win_rate,
                 fill = character)) +
    geom_bar(stat = "identity") +
    geom_text(aes(label = percent(round(win_rate, digits = 4)))) +
    scale_y_continuous(label  = percent,
                       limits = c(0,1),
                       breaks = seq(0,1, 0.05)) +
    scale_fill_manual(values = c(cc_blue_1, cc_purple_2, cc_green_1, cc_blue_3, cc_purple_1, cc_blue_2, cc_green_1
                                                                      ))
  return(P1)
}
