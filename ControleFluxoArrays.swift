// CONTROLE DE FLUXO BÁSICO

// 1. IF-ELSE
let idade = 18
if idade < 16 {
    print("Não pode votar")
} else if idade >= 16 && idade < 18 {
    print("Voto facultativo")
} else {
    print("Voto obrigatório")
}

// 2. SWITCH-CASE
let diaDaSemana = 3
switch diaDaSemana {
case 1:
    print("Domingo")
case 2:
    print("Segunda")
case 3:
    print("Terça")
default:
    print("Dia inválido")
}

// Switch com intervalo
let nota = 8.5
switch nota {
case 0..<5:
    print("Reprovado")
case 5..<7:
    print("Recuperação")
case 7...10:
    print("Aprovado")
default:
    print("Nota inválida")
}

// LOOPS (REPETIÇÃO)

// 1. FOR-IN com intervalo
for i in 1...5 {
    print("Contagem: \(i)")
}

// 2. FOR-IN com array
let frutas = ["Maçã", "Banana", "Laranja"]
for fruta in frutas {
    print(fruta)
}

// 3. WHILE
var contador = 0
while contador < 3 {
    print("While: \(contador)")
    contador += 1
}

// 4. REPEAT-WHILE (do-while em outras linguagens)
var outroContador = 0
repeat {
    print("Repeat-While: \(outroContador)")
    outroContador += 1
} while outroContador < 3

// ARRAYS (VETORES)

// 1. Declaração de arrays
var numeros: [Int] = [1, 2, 3]  // Tipo explícito
var nomes = ["Ana", "João", "Maria"]  // Tipo inferido

// 2. Acessando elementos
let primeiroNome = nomes[0]  // "Ana"
let ultimoNumero = numeros[numeros.count - 1]  // 3

// 3. Modificando arrays
nomes.append("Carlos")  // Adiciona no final
nomes.insert("Beatriz", at: 1)  // Insere na posição 1

numeros[2] = 10  // Altera o valor na posição 2

// 4. Removendo elementos
let removido = nomes.remove(at: 0)  // Remove "Ana"
let ultimo = numeros.removeLast()  // Remove o último

// 5. Iterando em arrays
for (index, nome) in nomes.enumerated() {
    print("\(index + 1): \(nome)")
}

// 6. Métodos úteis
print(nomes.isEmpty)  // false
print(nomes.count)    // Quantidade de elementos
print(nomes.contains("João"))  // true

// 7. Filtrando arrays
let idades = [12, 18, 24, 30]
let maiores = idades.filter { $0 >= 18 }  // [18, 24, 30]

// 8. Mapeando arrays
let dobrados = numeros.map { $0 * 2 }  // [2, 4, 20]

// COMBINANDO CONTROLE DE FLUXO E ARRAYS

// Exemplo: classificando números
let valores = [5, 3, 9, 1, 4]
var pares: [Int] = []
var impares: [Int] = []

for valor in valores {
    if valor % 2 == 0 {
        pares.append(valor)
    } else {
        impares.append(valor)
    }
}

print("Pares: \(pares)")    // [4]
print("Ímpares: \(impares)") // [5, 3, 9, 1]

// EXEMPLO PRÁTICO COMPLETO

// Sistema de notas de alunos
struct Aluno {
    let nome: String
    var notas: [Double]
    
    func media() -> Double {
        guard !notas.isEmpty else { return 0.0 }
        return notas.reduce(0, +) / Double(notas.count)
    }
    
    func situacao() -> String {
        let media = self.media()
        switch media {
        case 0..<5:
            return "Reprovado"
        case 5..<7:
            return "Recuperação"
        case 7...10:
            return "Aprovado"
        default:
            return "Média inválida"
        }
    }
}

var alunos: [Aluno] = [
    Aluno(nome: "Ana", notas: [8.5, 7.0, 9.2]),
    Aluno(nome: "João", notas: [4.0, 6.5, 5.0]),
    Aluno(nome: "Maria", notas: [9.0, 9.5, 8.8])
]

// Adicionando novo aluno
alunos.append(Aluno(nome: "Carlos", notas: [7.0, 6.8, 7.2]))

// Relatório de alunos
print("\nRELATÓRIO DE ALUNOS:")
for aluno in alunos {
    print("\(aluno.nome): Média \(aluno.media().formatted(.number.precision(.fractionLength(2)))) - \(aluno.situacao())")
}

// Filtrando aprovados
let aprovados = alunos.filter { $0.situacao() == "Aprovado" }
print("\nTotal de aprovados: \(aprovados.count)")