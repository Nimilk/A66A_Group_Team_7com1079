intel_data$Cores <- as.numeric(intel_data$Cores)
intel_data$`Max Turbo Speed` <- as.numeric(sub(" GHz", "", intel_data$`Max Turbo Speed`))
intel_data$`Base Speed` <- as.numeric(sub(" GHz", "", intel_data$`Base Speed`))


file_path <- "/Users/apple/Downloads/intel.csv"

