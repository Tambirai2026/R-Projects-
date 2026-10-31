################################################
#Plant Growth Analysis
########################################

library(readxl)

library(ggplot2)

install.packages("readxl")

install.packages("ggplot2")

library(readxl)

library(ggplot2)

plant_data <- read_excel(file.choose())

ls()

View(plant_data)

str(plant_data)

# Check the Column Names

names(plant_data)

# Calculating Mean weight

mean_weights <- aggregate(Weight ~ Treatment,
                          data = plant_data,
                          FUN = mean)

print(mean_weights)

#Making the Box Plot

ggplot(plant_data, aes(x = Treatment, y = Weight)) +
  geom_boxplot(fill = "lightgreen") +
  labs(
    title = "Box Plot of Plant Weight by Treatment",
    x = "Treatment",
    y = "Plant Weight"
  ) +
  theme_minimal()

#Creating the Violin plot

ggplot(plant_data, aes(x = Treatment, y = Weight)) +
  geom_violin(fill = "lightblue", color = "black") +
  labs(
    title = "Violin Plot of Plant Weight by Treatment",
    x = "Treatment",
    y = "Plant Weight"
  ) +
  theme_minimal()

#Making the histogram

ggplot(plant_data, aes(x = Weight)) +
  geom_histogram(
    binwidth = 0.5,
    fill = "orange",
    color = "black"
  ) +
  labs(
    title = "Histogram of Plant Weight",
    x = "Plant Weight",
    y = "Frequency"
  ) +
  theme_minimal()

#Performing Anova

anova_result <- aov(Weight ~ Treatment, data = plant_data)

summary(anova_result)

