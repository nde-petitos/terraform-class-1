# variable "foods" {
#  default = ["pizza", "burger", "sushi", "tacos"]
# }
# output "replace_burger" {
#  value = replace("Marriott", "/[aeiou]/", "*")
# }

# output "reverse_string" {
#     value = strrev("Hilton")
# }
variable "activities" {
    default = ["eat", "sleep", "code", "travel", "play"]
}

variable "foods" {
    type = list(string)
    default = ["Pizza", "Burger", "Sushi", "Tacos", "Pasta"]
}

locals {
    tmps = [for n in var.foods : length(n)]
}

locals {
  longuest_size = tonumber(element(sort(local.tmps), length(var.foods)-1))
}


output "cygle" {
    value = join("", [for v in var.activities : upper(substr(v, 0,1))])
}

output "long_word" {
    value = [for n in var.foods : n if length(n) == local.longuest_size]
}

output "longuest_size" {
  value = local.longuest_size
}