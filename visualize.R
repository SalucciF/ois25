 population <- 2000
 Populations <- numeric(52)
 for (semaine in 1:52) {
  survie <- rbinom(population, 1, 0.9)
  population <- sum(survie)
  Populations[semaine] <- population
 }
 plot(1:52, Populations, type="o", col="purple", main="Population simulée avec 10% de
 mortalité stochastique", xlab="Semaine", ylab="Population")