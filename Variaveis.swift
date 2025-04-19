// Documentation/Swift/Variaveis.swift

// Variáveis e Constantes em Swift

// Swift oferece duas maneiras principais de armazenar valores: **variáveis** (mutáveis) e **constantes** (imutáveis).

// Variáveis (`var`)

// Variáveis são usadas para armazenar valores que podem mudar durante a execução do programa.

var nome = "João"       // Declaração com inferência de tipo
var idade: Int = 30     // Declaração com tipo explícito
var saldo = 1250.50     // Double inferido automaticamente

/*
 Alterando valores
nome = "João Silva"
idade = 31
saldo = 1350.75
*/

// Constantes (`let`)

// Constantes armazenam valores que não podem ser alterados após sua definição.


let pi = 3.14159
let cpf = "123.456.789-00"
let maxTentativas: Int = 3

// Tentar alterar uma constante gera erro:
// cpf = "987.654.321-00" // Erro: Cannot assign to value: 'cpf' is a 'let' constant


/* Boas Práticas

1. Prefira `let` sempre que possível - Isso torna seu código mais seguro e previsível
2. Use nomes descritivos** - `var x = 10` é menos claro que `var idadeDoUsuario = 10`
3. Tipos explícitos quando necessário** - Especialmente em casos ambíguos

*/

// Exemplo Completo

// Constantes

let empresa = "Apple Inc."
let fundacao = 1976

// Variáveis

var ceo = "Tim Cook"
var valorMercado: Double = 2.5 // trilhões

print("Empresa: \(empresa), fundada em \(fundacao)")
print("CEO atual: \(ceo), valor de mercado: \(valorMercado) trilhões")

/* Atualizando variáveis
ceo = "Novo CEO"
valorMercado = 3.1
*/


// fundacao = 1980 // Isso causaria um erro de compilação


/* Diferenças Importantes

| Característica  | `var` (Variável) | `let` (Constante) |
|----------------|------------------|-------------------|
| Mutabilidade   | Pode ser alterada | Não pode ser alterada |
| Performance    | Leve overhead    | Ligeiramente mais eficiente |
| Segurança      | Menos segura     | Mais segura        |
| Uso recomendado| Quando o valor muda | Quando o valor é fixo |

*/

