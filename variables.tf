variable "subscription_id" {
  type = string
}
    
variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "arrivalyear" {
  type = number
  default = 2025
}

variable "firstname" {
  type = string
  default = "Nelson"
}

variable "lastname" {
  type = string
  default = "Petitos"
}

variable "listofrestaurants" {
  type    = set(string)
  default = ["Restaurant 1 ", "Restaurant 2 ", "Restaurant 3"]
}

variable "favoritefive" {
  type = map(list(string))
  default = {
    fruits = ["Avocado", "Mango", "Pineaple", "Apple", "Orange", "Grappe"]
    movies = ["Jango", "Hoow to train your dragon", "Shuttle islan", "The Prestige", "Deadpool", "Lord of the rings"]
    travel = ["Paris", "London", "Cairo", "Yaounde", "Tokyo"]
    workout = ["Legs", "Arms", "Torso", "Pecs", "Abs", "Full body"]
    foods = ["Eru", "Spaghetti", "Ndoleh", "Taro", "Burger", "Tacos"]
    colors = ["Red", "Blue", "Green", "White", "Yellow", "Black"]
    songs = ["Noir desirs", "A lombre du chaud business", "Luther", "How much a dollar cost", "Roar", "Thriller"]
    emojis = ["😂", "😎", "😝", "😭", "🤬", "😒"]
    affirmations = ["Life is short", "What doesnt kill you make you stronger", "I have a dream", "Life is a matter of perpective", "GOD is good", "JESUS save"]
  }
}

variable "randomnumber" {
  type = number
  default = 200345
}

variable "isahuman" {
  type = bool
  default = false
}
