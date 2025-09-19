variable "hotels" {
    default = ["Marriot", "Hilton", "Sheraton", "Hyatt"]
}

variable "activities" {
    default = ["eat", "sleep", "code", "repeat"]
}

variable "foods" {
    default = ["Pizza", "Burger", "Sushi", "Tacos"]
}

# output "Hotel_upper" {
#     value = [for v in var.hotels : v == "Hyatt" ? upper(v) : v]
# } 

# output "arrow_display_aactivities" {
#     value = join("->", var.activities)
# }

# output "first_two_letters" {
#     value = [for n in var.hotels : substr(n, 0, 2)]
# }

output "sum_food_lenght" {
    value = sum(tolist([for n in var.foods : length(n)]))
}
