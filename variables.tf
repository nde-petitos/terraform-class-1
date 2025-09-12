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
