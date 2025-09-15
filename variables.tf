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
    Fruits = ["Avocado", "Mango", "Pineaple", "Apple", "Orange", "Grappe"]
    Movies = ["Jango", "Hoow to train your dragon", "Shuttle islaan", "The Prestige, "Deadpool", "Lord of the rings"]
    Travel = ["Paris: , "London", "Cairo", "Yaounde", "Tokyo"]
    Workout = ["Legs", "Arms", "Torso", "Pecs", "Abs", ""]
    Foods = ["Eru", "Spaghetti", "Ndoleh", "Taro", "Burger", "Tacos"]
    Colors = ["Red", "Blue", "Green", "White", "Yellow", "Black"]
    Songs = ["Noir desirs", "a l'ombre du chaud business", "Luther", "How much a dollar cost", "Roar", "Thriller"]
    Emojis = ["😂", "😎", "😝", "😭", "🤬", "😒"]
    Affirmations = ["Life is short", "What doesnt kill you make you stronger", "I have a dream", "Life is a matter of perpective", "GOD is good", "JESUS save"]
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
