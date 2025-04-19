// FUNÇÕES BÁSICAS
// Funções são blocos de código reutilizáveis que ajudam a organizar e modularizar o código.

// Declaração simples
func cumprimentar() {
    print("Olá, mundo!")
}

// Função com parâmetro
func cumprimentarPessoa(nome: String) {
    print("Olá, \(nome)!")
}

// Função com retorno
func quadrado(numero: Int) -> Int {
    return numero * numero
}

// Chamando as funções
cumprimentar()  // "Olá, mundo!"
cumprimentarPessoa(nome: "Maria")  // "Olá, Maria!"
let resultado = quadrado(numero: 5)  // 25


// PARÂMETROS E RÓTULOS


// Rótulo externo e nome interno
func calcularIMC(peso kilograms: Double, altura metros: Double) -> Double {
    return kilograms / (metros * metros)
}

let imc = calcularIMC(peso: 70.5, altura: 1.75)

// Omitir rótulo com _
func potencia(_ base: Int, _ expoente: Int) -> Int {
    return Int(pow(Double(base), Double(expoente)))
}

let pot = potencia(2, 3)  // 8


// ESCOPO DE VARIÁVEIS


var variavelGlobal = "Acesso em qualquer lugar"

func demonstrarEscopo() {
    var variavelLocal = "Só existe dentro desta função"
    print(variavelGlobal)  // Pode acessar variáveis globais
    print(variavelLocal)
}

// print(variavelLocal)  // Erro! Não existe fora da função


// PASSAGEM POR VALOR VS REFERÊNCIA


// 1. Passagem por valor (padrão para tipos básicos)
func incrementarPorValor(_ numero: Int) {
    var numero = numero  // Cópia do valor
    numero += 1
    print("Dentro da função: \(numero)")
}

var num = 5
incrementarPorValor(num)  // 6
print("Fora da função: \(num)")  // 5 (não mudou)

// 2. Passagem por referência (usando inout)
func incrementarPorReferencia(_ numero: inout Int) {
    numero += 1
    print("Dentro da função: \(numero)")
}

var outroNum = 10
incrementarPorReferencia(&outroNum)  // 11
print("Fora da função: \(outroNum)")  // 11 (valor alterado)

// 3. Com classes (sempre por referência)
class Contador {
    var valor: Int = 0
}

func incrementarContador(_ contador: Contador) {
    contador.valor += 1
}

let meuContador = Contador()
incrementarContador(meuContador)
print(meuContador.valor)  // 1 (valor alterado)


// FUNÇÕES ANINHADAS


func operacaoMatematica(_ a: Int, _ b: Int, operacao: String) -> Int {
    // Função interna
    func somar() -> Int {
        return a + b
    }
    
    // Outra função interna
    func subtrair() -> Int {
        return a - b
    }
    
    switch operacao {
    case "+":
        return somar()
    case "-":
        return subtrair()
    default:
        return 0
    }
}

let total = operacaoMatematica(10, 5, operacao: "+")  // 15


// FUNÇÕES COMO TIPOS


func adicionar(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtrair(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var operacao: (Int, Int) -> Int = adicionar
let resultadoOp = operacao(5, 3)  // 8

operacao = subtrair
let novoResultado = operacao(5, 3)  // 2


// COMENTÁRIOS FINAIS


/*
 PRINCIPAIS CONCEITOS:
 
 1. Escopo:
    - Variáveis globais: acessíveis em qualquer lugar
    - Variáveis locais: existem apenas dentro do bloco onde foram declaradas
 
 2. Passagem de parâmetros:
    - Por valor (cópia): usado para tipos básicos (Int, Double, String, etc.)
    - Por referência (original): usado para classes e com a palavra-chave 'inout'
 
 3. Boas práticas:
    - Use nomes descritivos para funções e parâmetros
    - Prefira funções pequenas e especializadas
    - Documente funções complexas com comentários
 */