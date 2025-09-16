# output "first-name" {
#   value = var.firstname
# }

# output "last-name" {
#   value = var.lastname
# }

# output "year-of-arrival" {
#   value = var.arrivalyear
# }

# output "list-of-restaurant" {
#  value = tolist(var.listofrestaurants)
# }

# output "random-number" {
#   value = var.randomnumber
# }

# output "display-a-boolean" {
#   value = var.isahuman
# }

# output "display-favorite-five" {
#   value = {for key, listvalues in var.favoritefive : key => listvalues}
# }
#  output "application_name" {
#   value = local.full_name
#  }

# output "display_split_server_name" {
#   value = split("-", var.server_name)
# }

output "display-upper" {
  value = local.movie_upper
}

output "display-lower" {
  value = local.movie_lower
}

output "replaced_string" {
  value = local.replaced 
}
