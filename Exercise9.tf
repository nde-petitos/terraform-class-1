variable "hotels" {
    default = ["Marriot", "Hilton", "Sheraton", "Hyatt"]
}

variable "activities" {
    default = ["eat", "sleep", "code", "repeat"]
}

output "Hotel_upper" {
    value = [for v in var.hotels : v == "Hyatt" ? upper(v) : v]
} 

output "arrow_display_aactivities" {
    value = join("->", var.activities)
}
