
// TIPOS INTEIROS (Inteiros com e sem sinal)


// Int - inteiro com sinal (tamanho depende da plataforma)
var idade: Int = 30  // Recomendado para a maioria dos casos

// Tipos com tamanho específico:
var pequeno: Int8 = 127       // 1 byte (-128 a 127)
var medio: Int16 = 32767      // 2 bytes (-32768 a 32767)
var grande: Int32 = 2147483647 // 4 bytes
var enorme: Int64 = 9223372036854775807 // 8 bytes

// Unsigned (sem sinal):
var positivo: UInt = 100
var positivoPequeno: UInt8 = 255  // 0 a 255


// TIPOS DE PONTO FLUTUANTE (Float e Double)


// Double - 64 bits (precisão de ~15 casas decimais)
var pi: Double = 3.141592653589793  // Recomendado para a maioria dos casos

// Float - 32 bits (precisão de ~6 casas decimais)
var temperatura: Float = 23.5

// Literais podem usar notação científica
var distancia: Double = 1.5e3  // 1.5 × 10³ = 1500.0


// TIPO BOOLEANO (Bool)


var estaAtivo: Bool = true
var temAcesso: Bool = false

// Expressões booleanas
var maiorDeIdade: Bool = idade >= 18


// TIPO CARACTER (Character)


// Character - armazena um único caractere Unicode
var letra: Character = "A"
var emoji: Character = "😀"  // Suporta emojis

// Diferença entre Character e String:
var string: String = "ABC"  // String é uma coleção de Characters
var char: Character = "A"   // Character é um único caractere

/*
 DICAS:
 1. Use Int na maioria dos casos (otimizado para cada plataforma)
 2. Prefira Double em vez de Float, a menos que precise economizar memória
 3. Bool só pode ser true ou false (não aceita 0/1 como em outras linguagens)
 4. Character usa aspas duplas, mesmo para um único caractere
*/

// Exemplo de uso combinado
print("Idade: \(idade), Pi: \(pi), Ativo: \(estaAtivo), Símbolo: \(letra)")