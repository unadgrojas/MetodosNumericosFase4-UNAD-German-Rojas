# Fase 4 - Bibliometrix sobre corpus curado de Web of Science

library(bibliometrix)

archivo_bib <- "fuentes/ReferenciasFase4_curadas.bib"

M <- convert2df(file = archivo_bib, dbsource = "wos", format = "bibtex")

# Descripción básica
resultados <- biblioAnalysis(M, sep = ";")
summary(resultados, k = 10, pause = FALSE)

# Producción anual
if (!dir.exists("salidas/figuras")) dir.create("salidas/figuras", recursive = TRUE)
pdf("salidas/figuras/bibliometrix_produccion_anual.pdf", width = 10, height = 6)
plot(x = resultados, k = 10, pause = FALSE)
dev.off()

# Red de co-citación
pdf("salidas/figuras/bibliometrix_cocitacion_autores.pdf", width = 12, height = 8)
NetMatrix <- biblioNetwork(M, analysis = "co-citation", network = "authors", sep = ";")
networkPlot(NetMatrix, normalize = "association", n = 30, type = "fruchterman",
            Title = "Red de co-citación de autores", size = TRUE, labelsize = 0.7)
dev.off()

# Co-ocurrencia de palabras clave
pdf("salidas/figuras/bibliometrix_keywords.pdf", width = 12, height = 8)
NetKey <- biblioNetwork(M, analysis = "co-occurrences", network = "keywords", sep = ";")
networkPlot(NetKey, normalize = "association", n = 30, type = "fruchterman",
            Title = "Red de co-ocurrencia de keywords", size = TRUE, labelsize = 0.8)
dev.off()
