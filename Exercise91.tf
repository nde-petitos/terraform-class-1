variable "foods" {
 default = ["pizza", "burger", "sushi", "tacos"]
}
output "replace_burger" {
 value = replace("Marriott", "/[aeiou]/", "*")
}