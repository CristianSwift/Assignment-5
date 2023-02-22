trout <- read.csv("/Users/cristianswift/Desktop/Winter-Quarter-2022-2023/FISH549/assignments/assignment 5/siscowet.csv")

age <- trout$age
length <- trout$len

jpeg(file = 'exploratory_figure.jpg')
plot(x=age, y=length,
     xlab="Age (years)", ylab="Length (mm)",
     main = "Siscowet Lake Trout Exploratory Figure")
dev.off()


#linear regression

age_length_regression <- lm(length~age, data=trout)

jpeg('expository_figure.jpg')
plot(x=age, y=length,
     xlab="Age (years)", ylab="Length (mm)",
     main = "Siscowet Lake Trout expository Figure")
abline(age_length_regression)
dev.off()
