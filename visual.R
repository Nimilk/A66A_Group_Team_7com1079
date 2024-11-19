

library(readr)


file_path <- "C:/Users/abhin/OneDrive/Desktop/intel.csv"


intel_data <- read_csv("C:/Users/abhin/OneDrive/Desktop/intel.csv")

# Display the first few rows of the data
head(intel_data)

summary(intel_data)


str(intel_data)


intel_data$Cores <- as.numeric(intel_data$Cores)
intel_data$`Max Turbo Speed` <- as.numeric(sub(" GHz", "", intel_data$`Max Turbo Speed`))
intel_data$`Base Speed` <- as.numeric(sub(" GHz", "", intel_data$`Base Speed`))






library(ggplot2)


ggplot(intel_data, aes(x = Cores, y = `Max Turbo Speed`)) +
  geom_point(color = "blue") +
  labs(title = "Cores vs Max Turbo Speed",
       x = "Number of Cores",
       y = "Max Turbo Speed (GHz)") +
  theme_minimal()


write_csv(intel_data, "cleaned_intel_data.csv")
