variable "items" {
 type    = list(string)
 default = ["b", "a", "c", "a", "b"]
}
locals {
 unique_sorted = sort(distinct(var.items))
 csv           = join(",", local.unique_sorted)
}
output "unique_sorted" { value = local.unique_sorted }
output "csv"           { value = local.csv }

5) Filter by predicate (keep only even numbers)
Goal: From a list of numbers, keep evens and also square them.
variable "nums" {
 type    = list(number)
 default = [1,2,3,4,5,6]
}
locals {
 evens   = [for n in var.nums : n if n % 2 == 0]
 squares = [for n in local.evens : n * n]
}
output "evens"   { value = local.evens }
output "squares" { value = local.squares }
