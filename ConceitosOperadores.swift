
// OPERADORES ARITMÉTICOS

let a = 10
let b = 5

// Operadores básicos
var soma = a + b        // 15
var subtracao = a - b   // 5
var multiplicacao = a * b // 50
var divisao = a / b     // 2

// Operador de resto (módulo)
var resto = a % b       // 0
var restoDouble = 10.5.truncatingRemainder(dividingBy: 3.0) // 1.5

// Operador unário
var numero = 5
var negativo = -numero  // -5
var positivo = +numero  // 5 (não muda o valor)


// OPERADORES DE ATRIBUIÇÃO


var x = 10
x += 5  // Equivalente a x = x + 5 → 15
x -= 3  // x = x - 3 → 12
x *= 2  // x = x * 2 → 24
x /= 4  // x = x / 4 → 6


// OPERADORES RELACIONAIS (COMPARAÇÃO)

let c = 7
let d = 12

print(c == d)  // Igual a → false
print(c != d)  // Diferente de → true
print(c > d)   // Maior que → false
print(c < d)   // Menor que → true
print(c >= d)  // Maior ou igual → false
print(c <= d)  // Menor ou igual → true

// Também funciona com strings (ordem alfabética)
print("apple" < "banana") // true


// OPERADORES LÓGICOS


let temIdade = true
let temDocumento = false

// AND lógico (&&)
print(temIdade && temDocumento) // false

// OR lógico (||)
print(temIdade || temDocumento) // true

// NOT lógico (!)
print(!temIdade) // false

// Combinação de operadores
print((a > b) && (c < d)) // true && true → true


// OPERADORES DE INTERVALO (RANGE)


// Intervalo fechado (inclui ambos os valores)
for i in 1...5 {
    print(i) // 1, 2, 3, 4, 5
}

// Intervalo semi-aberto (não inclui o último valor)
for i in 1..<5 {
    print(i) // 1, 2, 3, 4
}


// OPERADOR TERNÁRIO


let idade = 18
let podeVotar = idade >= 16 ? "Pode votar" : "Não pode votar"
print(podeVotar) // "Pode votar"


// OPERADOR NIL-COALESCING


let nomeOpcional: String? = nil
let nome = nomeOpcional ?? "Visitante" // Usa "Visitante" se for nil
print(nome) // "Visitante"


// OPERADORES ESPECIAIS


// Operador de identidade (===, !==) - compara referências
class Objeto {}
let obj1 = Objeto()
let obj2 = Objeto()
print(obj1 === obj2) // false (objetos diferentes)

// Operador de tipo (is)
let valor: Any = "texto"
if valor is String {
    print("É uma String") // Será impresso
}


// PRECEDÊNCIA DE OPERADORES


/*
 Ordem de precedência (da maior para menor):
 1. () (parênteses)
 2. ! + - (operadores unários)
 3. * / %
 4. + -
 5. < <= > >=
 6. == !=
 7. &&
 8. ||
 */

let resultado = 5 + 3 * 2 // 11 (não 16)
let resultadoComParenteses = (5 + 3) * 2 // 16