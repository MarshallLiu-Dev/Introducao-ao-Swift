// Exemplo de código Swift - Cadastro de Pets:

import Foundation

// Estrutura de um pet
struct Pet {
    var nome: String
    var raca: String
    var idade: Int
    var tipo: String // Cachorro, Gato, etc.
}

// Criando dicionários para armazenar os dados dos pets
var pets: [String: Pet] = [:]  // Chave = nome do pet, Valor = informações do pet

// Função para cadastrar um pet
func cadastrarPet(nome: String, raca: String, idade: Int, tipo: String) {
    let novoPet = Pet(nome: nome, raca: raca, idade: idade, tipo: tipo)
    pets[nome] = novoPet
    print("Pet \(nome) cadastrado com sucesso!")
}

// Função para mostrar informações de um pet
func mostrarPet(nome: String) {
    if let pet = pets[nome] {
        print("Nome: \(pet.nome)")
        print("Raça: \(pet.raca)")
        print("Idade: \(pet.idade) anos")
        print("Tipo: \(pet.tipo)")
    } else {
        print("Pet com nome \(nome) não encontrado.")
    }
}

// Cadastrando alguns pets
cadastrarPet(nome: "Bolt", raca: "Labrador", idade: 3, tipo: "Cachorro")
cadastrarPet(nome: "Luna", raca: "Persa", idade: 2, tipo: "Gato")

// Mostrando informações de um pet
mostrarPet(nome: "Bolt")
mostrarPet(nome: "Luna")
mostrarPet(nome: "Rex") // Pet não cadastrado


/*

Explicação:
Estrutura Pet:
Criamos uma estrutura Pet para organizar os dados de cada pet: nome, raça, idade e tipo (cachorro, gato, etc.).

Dicionário pets:
Um dicionário de chave String (nome do pet) e valor do tipo Pet para armazenar os pets cadastrados.

Função cadastrarPet:
Essa função cria um novo pet e o adiciona ao dicionário. Ela usa o nome como chave para identificar o pet.

Função mostrarPet:
Mostra as informações do pet usando o nome como chave. Se o pet não estiver no dicionário, retorna uma mensagem dizendo que não foi encontrado.

*/

