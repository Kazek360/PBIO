#1.1
a <- c(111, 222, 3)
print(a[c(1)])

# a = [1, 2, 3]
# print(a[0])

#1.2
print(a[length(a)])

# print(a[len(a) - 1])

#1.3
a <- c(111, 222, 3, 6, 8)
print(a[2:5])

# a = [1, 2, 3, 4, 5]
# print(a[1:5])

#1.4
m <- matrix(1:12, nrow=3, byrow=TRUE)
print(m[2, 3])

# import numpy as np
#
# m = np.array([[1, 2, 3, 4],
#               [5, 6, 7, 8],
#               [9, 10, 11, 12]])
# print(m[1, 2])

#1.5
print(m[2, ])

# print(m[1, :])

#2.1
int_var <- 5
print(int_var)

num_var <- as.double(int_var)
print(num_var)

int_var_again <- as.integer(num_var)
print(int_var_again)

# int_var = 5
# print(int_var)
#
# num_var = float(int_var)
# print(num_var)
#
# int_var_again = int(num_var)
# print(int_var_again)

#2.2
char_var <- "Hello"
print(class(char_var))

# char_var = "Hello"
# print(type(char_var))

#2.3
char_var1 <- "Hello"
char_var2 <- "World"
print(paste(char_var1, char_var2, sep = " "))

# char_var1 = "Hello"
# char_var2 = "World"
# print(char_var1 + " " + char_var2)

#2.4
log_var1 <- TRUE
log_var2 <- FALSE
print(log_var1 | log_var2)
print(log_var1 & log_var2)

# log_var1 = True
# log_var2 = False
# print(log_var1 or log_var2)
# print(log_var1 and log_var2)

#3.1
numeric_vector <- c(10.2, 8.9, 12.5, 9.8, 15.3)
print(mean(numeric_vector))

# numeric_list = [10.2, 8.9, 12.5, 9.8, 15.3]
# print(sum(numeric_list) / len(numeric_list))

#3.2
print(max(numeric_vector) - min(numeric_vector))

# print(max(numeric_list) - min(numeric_list))

#3.3
print(sum(numeric_vector > 10 & numeric_vector <= 14))

# print(sum(1 for x in numeric_list if 10 < x <= 14))

#3.4
text_vector <- c("R", "Bioinformatyka", "DNA")
print(nchar(text_vector))

# text_list = ["R", "Bioinformatics", "DNA"]
# print([len(x) for x in text_list])

#3.5
print(sort(text_vector, decreasing = TRUE))

# print(sorted(text_list, reverse=True))

#3.6
print(sort(text_vector, decreasing = FALSE))

# print(sorted(text_list))

#3.7
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
print(which(logical_vector))

# logical_list = [True, False, True, False, True]
# print([index for index, value in enumerate(logical_list) if value])

#3.8
print(which(!logical_vector))

# print([index for index, value in enumerate(logical_list) if not value])

#4.1
Ekspresja <- matrix(runif(12, 1, 10), nrow = 3, ncol = 4)
print(Ekspresja)

# Ekspresja = np.random.uniform(1, 10, size=(3, 4))
# print(Ekspresja)

#4.2
rownames(Ekspresja) <- c("Gen1", "Gen2", "Gen3")
colnames(Ekspresja) <- c("Probka1", "Probka2", "Probka3", "Probka4")
print(Ekspresja)

# import pandas as pd
#
# Ekspresja = pd.DataFrame(np.random.uniform(1, 10, size=(3, 4)),
#                          index=["Gen1", "Gen2", "Gen3"],
#                          columns=["Próbka1", "Próbka2", "Próbka3", "Próbka4"])
# print(Ekspresja)

#4.3
print(rowMeans(Ekspresja))

# print(Ekspresja.mean(axis=1))

#4.4
print(colMeans(Ekspresja))

# print(Ekspresja.mean(axis=0))

#4.5
EkspresjaT <- t(Ekspresja)
print(EkspresjaT)

# EkspresjaT = Ekspresja.transpose()
# print(EkspresjaT)

#4.6
subset_Ekspresja <- Ekspresja[, c("Probka1", "Probka3")]
print(subset_Ekspresja)

# subset_Ekspresja = Ekspresja[['Próbka1', 'Próbka3']]
# print(subset_Ekspresja)

#5.1
df <- data.frame(
  ID = 1:5,
  Wiek = c(25, 34, 28, 52, 40),
  Plec = c("Kobieta", "Mezczyzna", "Kobieta", "Mezczyzna", "Kobieta"),
  Wzrost = c(165, 180, 170, 175, 168),
  Waga = c(60, 80, 65, 75, 58),
  Status_zdrowia = c("Dobry", "Sredni", "Dobry", "Zly", "Dobry")
)


print(str(df))
print(head(df, 3))

# data = {
#     'ID': [1, 2, 3, 4, 5],
#     'Wiek': [25, 34, 28, 52, 40],
#     'Płeć': ['Kobieta', 'Mężczyzna', 'Kobieta', 'Mężczyzna', 'Kobieta'],
#     'Wzrost': [165, 180, 170, 175, 168],
#     'Waga': [60, 80, 65, 75, 58],
#     'Status_zdrowia': ['Dobry', 'Średni', 'Dobry', 'Zły', 'Dobry']
# }
#
# df = pd.DataFrame(data)
#
# print(df.info())
# print(df.head(3))

#5.2
print(mean(df$Wiek))

# print(df['Wiek'].mean())

#5.3
print(subset(df, Status_zdrowia == "Dobry" & Plec == "Kobieta"))

# print(df[(df['Status_zdrowia'] == 'Dobry') & (df['Płeć'] == 'Kobieta')])

#5.4
print(df[order(-df$Wiek), ])

# print(df.sort_values(by='Wiek', ascending=False))

#5.5
print(max(df$Wzrost))
print(min(df$Wzrost))

# print(df['Wzrost'].max())
# print(df['Wzrost'].min())

#6.1
BMI_calc <- function(waga, wzrost) {
  bmi <- waga / (wzrost / 100)^2
  return(bmi)
}
print(BMI_calc(103,185))

# def BMI_calc(waga, wzrost):
#     bmi = waga / (wzrost / 100) ** 2
#     return bmi

#6.2
df$BMI <- mapply(BMI_calc, df$Waga, df$Wzrost)
print(df)

# df['BMI'] = df.apply(lambda row: BMI_calc(row['Waga'], row['Wzrost']), axis=1)
# print(df)

#7.1
bio_lista <- list(
  sekwencje_DNA = c("ATGCCTGAC", "GTCAGTCAG", "CTGATCGATGCTA"),
  gatunki = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
  ekspresja_genow = matrix(runif(9, 0, 100), nrow = 3),
  cechy_morfologiczne = data.frame(
    Gatunek = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
    Wysokosc = c(170, 10, 0.1),
    Waga = c(70, 0.02, 0.0002)
  ),
  mutacje = list(Homo_sapiens = c("BRCA1", "BRCA2"), Mus_musculus = "p53")
)

print(str(bio_lista))

# bio_lista = {
#     'sekwencje_DNA': ["ATGCCTGAC", "GTCAGTCAG", "CTGATCGATGCTA"],
#     'gatunki': ["Homo sapiens", "Mus musculus", "Drosophila melanogaster"],
#     'ekspresja_genow': np.random.uniform(0, 100, size=(3, 3)),
#     'cechy_morfologiczne': pd.DataFrame({
#         'Gatunek': ["Homo sapiens", "Mus musculus", "Drosophila melanogaster"],
#         'Wysokość': [170, 10, 0.1],
#         'Waga': [70, 0.02, 0.0002]
#     }),
#     'mutacje': {'Homo_sapiens': ["BRCA1", "BRCA2"], 'Mus_musculus': "p53"}
# }
#
# print(bio_lista)

#7.2
print(bio_lista$gatunki)

# print(bio_lista['gatunki'])

#7.3
bio_lista$sekwencje_DNA <- c(bio_lista$sekwencje_DNA, "CGATGTAGCTA")
print(bio_lista$sekwencje_DNA)

# bio_lista['sekwencje_DNA'].append("CGATGTAGCTA")
# print(bio_lista['sekwencje_DNA'])

#7.4
print(apply(bio_lista$ekspresja_genow, 1, mean))

# print(np.mean(bio_lista['ekspresja_genow'], axis=1))

#7.5
new_row <- data.frame(Gatunek = "Arabidopsis thaliana", Wysokosc = 0.3, Waga = 0.001)
bio_lista$cechy_morfologiczne <- rbind(bio_lista$cechy_morfologiczne, new_row)
print(bio_lista$cechy_morfologiczne)

# new_row = pd.DataFrame({
#     'Gatunek': ["Arabidopsis thaliana"],
#     'Wysokość': [0.3],
#     'Waga': [0.001]
# })
# bio_lista['cechy_morfologiczne'] = pd.concat([bio_lista['cechy_morfologiczne'], new_row], ignore_index=True)
# print(bio_lista['cechy_morfologiczne'])

#7.6
print(bio_lista$mutacje$Homo_sapiens)

# print(bio_lista['mutacje']['Homo_sapiens'])

#7.7
bio_lista$mutacje$Mus_musculus <- c(bio_lista$mutacje$Mus_musculus, "Lmna")
print(bio_lista$mutacje$Mus_musculus)

# bio_lista['mutacje']['Mus_musculus'] = [bio_lista['mutacje']['Mus_musculus'], "Lmna"]
# print(bio_lista['mutacje']['Mus_musculus'])

#8.1
print(apply(Ekspresja, 1, mean))

# print(Ekspresja.apply(np.mean, axis=1))

#8.2
print(apply(Ekspresja, 2, mean))

# print(Ekspresja.apply(np.mean, axis=0))

#8.3
print(apply(Ekspresja, 1, max))

# print(Ekspresja.apply(np.max, axis=1))

#9.1
tissue_gene_expression <- read.csv("tissue_gene_expression_sample.csv")

# tissue_gene_expression = pd.read_csv("tissue_gene_expression_sample.csv")

#9.2
rows <- nrow(tissue_gene_expression)
cols <- ncol(tissue_gene_expression)
print(paste("Rows:", rows, "Columns:", cols))

# rows, cols = tissue_gene_expression.shape
# print(f"Rows: {rows}, Columns: {cols}")

#9.3
min_expr <- min(tissue_gene_expression$x.LHPP, na.rm = TRUE)
max_expr <- max(tissue_gene_expression$x.LHPP, na.rm = TRUE)
print(paste("Min:", min_expr, "Max:", max_expr))

# min_expr = tissue_gene_expression['x.LHPP'].min()
# max_expr = tissue_gene_expression['x.LHPP'].max()
# print(f"Min: {min_expr}, Max: {max_expr}")

#9.4
print(head(tissue_gene_expression %>% arrange(x.LHPP)))

# print(tissue_gene_expression.sort_values(by='x.LHPP').head())

#9.5
print(head(tissue_gene_expression %>% arrange(desc(x.LHPP))))

# print(tissue_gene_expression.sort_values(by='x.LHPP', ascending=False).head())

#9.6
print(head(tissue_gene_expression %>% filter(x.LHPP > 14)))

# print(tissue_gene_expression[tissue_gene_expression['x.LHPP'] > 14].head())

#9.7
print(head(tissue_gene_expression %>% select(x.MTF2, x.APBA1)))

# print(tissue_gene_expression[['x.MTF2', 'x.APBA1']].head())

#10.1
plot(df$Wzrost, df$Waga,
     main = "Zaleznosc miedzy wzrostem, a waga",
     xlab = "Wzrost (cm)",
     ylab = "Waga (kg)",
     pch = 16,
     col = "blue")

# import matplotlib.pyplot as plt
#
# plt.scatter(df['Wzrost'], df['Waga'], color='blue', marker='o')
# plt.title('Zależność między wzrostem, a wagą')
# plt.xlabel('Wzrost (cm)')
# plt.ylabel('Waga (kg)')
# plt.show()

#10.2
tissue_gene_expression <- read.csv("tissue_gene_expression_sample.csv")

hist(tissue_gene_expression$x.LHPP,
     main = "Histogram ekspresji genu x.LHPP",
     xlab = "Ekspresja genu x.LHPP",
     col = "blue")

# tissue_gene_expression = pd.read_csv("tissue_gene_expression_sample.csv")
#
# plt.hist(tissue_gene_expression['x.LHPP'], bins=30, color='blue')
# plt.title('Histogram ekspresji genu x.LHPP')
# plt.xlabel('Ekspresja genu x.LHPP')
# plt.ylabel('Frequency')
# plt.show()

#10.3
ggplot(tissue_gene_expression, aes(x = rownames, y = x.LHPP, fill = rownames)) +
  geom_boxplot() +
  ggtitle("Rozklady wartosci ekspresji genow pomiedzy roznymi tkankami") +
  xlab("Tkanki") +
  ylab("Ekspresja genow") +
  theme_minimal()

# import seaborn as sns
#
# plt.figure(figsize=(10, 6))
# sns.boxplot(x='rownames', y='x.LHPP', data=tissue_gene_expression)
# plt.title('Rozkłady wartości ekspresji genów pomiędzy różnymi tkankami')
# plt.xlabel('Tkanki')
# plt.ylabel('Ekspresja genów')
# plt.xticks(rotation=90)
# plt.show()