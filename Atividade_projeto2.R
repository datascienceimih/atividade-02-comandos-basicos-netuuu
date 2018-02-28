# Projeto integrador
# 2º Exercício
# Ciência de dados IMIH
# Gerson Vasconcelos

######

## 1. Crie 4 vetores de tamanho 10. Esses vetores devem ser nomeados 
##    com apenas uma letra minúscula cada um.


a <- c(1:10)
b <- c(seq(from = 10, to = 100, by = 10))
c <- c(rep(1:5, times = 2))
d <- c(rep(1:5, each =2))


## 2. Execute a soma dos vetores, a subtração dos vetores, 
##    multiplicação e divisão. Apresente os resultados.

## Soma dos vetores

soma <- a + b + c + d

# resultado:   13  25  38  50  63  70  83  95 108 120

## Subtração dos vetores

subtracao <- a - b - c - d

# resultado:   -11  -21  -32  -42  -53  -58  -69  -79  -90 -100

## Multiplicação dos vetores

multiplicacao <- a*b*c*d

# resultado:     10    80   540  1280  3750  1080  3920  7680 16200 25000

## Divisão dos vetores

divisao <- a/b/c/d

# resultado: 0.100000000 0.050000000 0.016666667 0.012500000 
#            0.006666667 0.033333333 0.012500000 0.008333333
#            0.005000000 0.004000000


## 3. Execute a soma da raiz quadrada dos dois primeiros vetores 
##    com a divisão da quarta potência dos dois últimos vetores.

soma_quad <- (sqrt(a) + sqrt(b)) + (c^4 / d^4)

# resultado:  5.162278 21.886350 12.271776 24.324555 17.023185 
# 10.207802 11.074852 12.089105 12.896433 14.162278

## 4. Crie 2 matrizes de tamanho 10 X 10 com números que assumem casas decimais.


A <- matrix(seq(from = 0.5, to = 5, by = 0.5), 10, 10)
B <- matrix(seq(from = 5, to = 0.5, by = -0.5), 10, 10, byrow = T)

## 5. Multiplique as matrizes por 10. Divida as matrizes por 3. 
##    Multiplique as duas matrizes.


# Matrizes multiplicadas por 10
A_10 <- A*10
B_10 <- B*10

# Matrizes divididas por 3
A_3 <- A/3
B_3 <- B/3

# Matrizes multiplicadas entre si
AB <- A %*% B


## 6. Monte um banco de dados com os nomes de todos os seus colegas da aula 
## de Programação Funcional e Orientada a Objetos. Coloque no banco de dados 
## a idade de cada um, o curso que faz, o time de futebol e o número 
## de horas gastas fazendo exercícios no R (para essa variável, 
## use números com 2 casas decimais). Exiba o banco no console. 
## Atenção: os dados do tipo character devem ser character mesmo; 
## não devem ser transformados automaticamente em factor.

nome <- c("Adelvan", "Edésio", "Fabiano",
           "Ana", "Andrea", "Larissa", "Layla", "Gerson")
idade <- c(22L, 26L, 29L, 18L, 25L, 23L, 21L, 24L)
curso <- c("CD", "CD", "BioI", "BioI", "BioI", "BioI", "CD", "CD")
time <- c("Flamengo", "Atlético", "Atlético", 
          "Cruzeiro", "Cruzeiro", "Atlético", "Botafogo", "Sport")
horas_R <- c(2.00, 1.45, 0.75, 2.65, 2.15, 1.55, 1.07, 1.75)

func_oo <- data.frame(nome, idade, curso, time, horas_R, stringsAsFactors = F)

func_oo

##     nome idade curso     time horas_R
## 1 Adelvan    22    CD Flamengo    2.00
## 2  Edésio    26    CD Atlético    1.45
## 3 Fabiano    29  BioI Atlético    0.75
## 4     Ana    18  BioI Cruzeiro    2.65
## 5  Andrea    25  BioI Cruzeiro    2.15
## 6 Larissa    23  BioI Atlético    1.55
## 7   Layla    21    CD Botafogo    1.07
## 8  Gerson    24    CD    Sport    1.75


## 7. Com um comando, exiba o banco de dados numa nova tela.

func_2 <- edit(func_oo)

## 8. Confira várias informações sobre o banco de dados 
##    (tamanho, classes das variáveis, nomes das variáveis) 
##    usando apenas um comando.

str(func_oo)


## 9. Algumas variáveis fazem sentido serem do tipo factor 
##    (variáveis categóricas). O curso e o time de futebol são duas delas. 
##    Usando um comando transforme essas variáveis em factor.

func_oo$curso <- as.factor(func_oo$curso)
func_oo$time <- as.factor(func_oo$time)

## 10. Acrescente, no final do banco de dados, mais uma linha com as 
##     informações de todas as variáveis para o professor.

func_oo2 <- rbind(func_oo, data.frame(nome = "Neylson", idade = 30L, 
                          curso = "CD", time = "Atlético",
                          horas_R = 0.10))

# Aqui criei uma nova data frame para não mudar o resultado da primeira

## 11. Crie uma lista com todos os objetos que você criou neste exercícios. 
##     Exiba a lista. Apresente a classe da lista.

lista <- list(a, b, c, d, soma, subtracao, multiplicacao, divisao,
              soma_quad, A, B, A_10, A_3, B_10, B_3, AB, func_oo, func_oo2)

lista ## Exibir a lista

class(lista) ## Exibir a classe da lista 

sapply (lista, class) ## Exibe a classe de cada item da lista

# "integer"    "numeric"    "integer"    "integer"    "numeric"    "numeric"   
#  "numeric"    "numeric"    "numeric"    "matrix"     "matrix"     "matrix"    
# "matrix"     "matrix"     "matrix"     "matrix"     "data.frame" "data.frame"






