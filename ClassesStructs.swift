//Classe (Reference Type)
swift
class Pessoa {
    // Propriedades (atributos)
    var nome: String
    var idade: Int
    
    // Método Construtor (init)
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    // Método (comportamento)
    func cumprimentar() {
        print("Olá, meu nome é \(nome) e tenho \(idade) anos.")
    }
}

// Uso
let pessoa1 = Pessoa(nome: "João", idade: 25)
pessoa1.cumprimentar() // "Olá, meu nome é João e tenho 25 anos."
Struct (Value Type)
swift
struct Ponto {
    var x: Double
    var y: Double
    
    func descricao() -> String {
        return "(\(x), \(y))"
    }
}

// Uso

var ponto1 = Ponto(x: 10.0, y: 5.0)
print(ponto1.descricao()) // "(10.0, 5.0)"

/*🔹

 Diferença entre Class e Struct:

Classe	Struct
Reference Type (trabalha com referência)	Value Type (cópia independente)
Pode usar herança	Não suporta herança
Usada quando precisa de identidade única	Usada para dados imutáveis
2. Protocolos (Abstração)
Protocolos definem contratos que classes/structs devem seguir.
*/

swift
protocol Forma {
    func area() -> Double
    func perimetro() -> Double
}

struct Retangulo: Forma {
    var largura: Double
    var altura: Double
    
    func area() -> Double {
        return largura * altura
    }
    
    func perimetro() -> Double {
        return 2 * (largura + altura)
    }
}

let retangulo = Retangulo(largura: 5.0, altura: 3.0)
print("Área: \(retangulo.area())") // 15.0
3. Enum (Modelagem de Estados)
Enums ajudam a representar um conjunto fixo de valores.

swift
enum EstadoPedido {
    case emProcessamento
    case enviado
    case entregue
    case cancelado
}

let meuPedido = EstadoPedido.enviado

switch meuPedido {
case .enviado:
    print("Seu pedido está a caminho!")
case .entregue:
    print("Pedido entregue!")
default:
    print("Status desconhecido.")
}
4. Extensions (Extendendo Comportamento)
Adiciona novas funcionalidades a tipos existentes.

swift
extension Double {
    func formatarMoeda() -> String {
        return String(format: "R$ %.2f", self)
    }
}

let preco = 19.99
print(preco.formatarMoeda()) // "R$ 19.99"
5. Abstração com Generics
Permite criar funções/structs genéricas que funcionam com qualquer tipo.

swift
struct Pilha<T> {
    private var elementos = [T]()
    
    mutating func empilhar(_ elemento: T) {
        elementos.append(elemento)
    }
    
    mutating func desempilhar() -> T? {
        return elementos.popLast()
    }
}

var pilhaDeInteiros = Pilha<Int>()
pilhaDeInteiros.empilhar(10)
pilhaDeInteiros.empilhar(20)
print(pilhaDeInteiros.desempilhar()!) // 20
6. Modelagem com Observers (didSet/willSet)
Permite observar mudanças em propriedades.

swift
class ContaBancaria {
    var saldo: Double = 0.0 {
        willSet {
            print("Saldo será alterado para \(newValue)")
        }
        didSet {
            print("Saldo mudou de \(oldValue) para \(saldo)")
        }
    }
}

let conta = ContaBancaria()
conta.saldo = 100.0
// Saída:
// "Saldo será alterado para 100.0"
// "Saldo mudou de 0.0 para 100.0"
