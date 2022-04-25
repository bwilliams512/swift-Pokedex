/*
This is a Swift program that stores different Pokémon using classes
and inheritance into a fictional electronic device called a Pokédex.
*/

// Step 1
// Creating the Pokemon Class.....................
class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo() {
    print("No.        #\(num)")
    print("Name       \(name)")
    print("Type       \(type)")
    print("Abilities  \(ability)")
    print("===================================")
  }
}

// Step 4a
// Gigantamax Forms (and Inheritance).............
class GigantamaxPokemon: Pokemon {

  var location = ""

  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
    super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo() {
    print("No.        #\(num)")
    print("Name       \(name)")
    print("Type       \(type)")
    print("Abilities  \(ability)")
    print("Location   \(location)")
    print("===================================")
  }
}

// Step 2
// Create Three Pokemons..........................
var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

// Step 4b
// Gigantamax Forms (and Inheritance).............
var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

// Step 3
// Display Information............................
bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()

// Step 4c
// Gigantamax Forms (and Inheritance).............
charizard.displayInfo()
