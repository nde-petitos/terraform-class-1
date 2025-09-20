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
    default = ["Pizza", "Burger", "Sushi", "Tacos", "Pasta"]
}


output "cygle" {
    value = join("", [for v in var.activities : upper(substr(v, 0,1))])
}