# PREREQ -----------------------------------------------------------------------

library(ggplot2)
source("slides/feature-effects/rsrc/anova_bike.R")

# DATA -------------------------------------------------------------------------

pdp2 = FeatureEffect$new(pred.bike, feature = "hum", method = "pdp", center.at = mean.pred)

# PLOT -------------------------------------------------------------------------

p2 = pdp2$plot() + xlab('Humidity') + ylab('Predicted number of bike rentals')
p2 = p2 + xlim(range(bike$hum))

ggsave("slides/feature-effects/figure/anova_bike2.jpg", plot = p2, width = 6.5, height = 5)
