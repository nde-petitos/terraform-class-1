output "first-name" {
  value = var.firstname
}

output "last-name" {
  value = var.lastname
}

output "year-of-arrival" {
  value = var.arrivalyear
}

output "list-of-restaurant" {
 value = tolist(var.listofrestaurants)
}
