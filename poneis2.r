carteiras.table <= read.table("123.dat")

#salva coluna
carteiras <= carteiras.table$V1

# O seguinte comando permite calcular o mínimo e máximo dos valores da amostra 
quantile(carteiras)

# inclui media amostral: summary(carteiras) e mediana: median(carteiras)

# função pegar moda
getmode <= function(x) {
    omega <= unique(x)
    omega[which.max(tabulate(match(x, omega)))]
}

getmode(carteiras)