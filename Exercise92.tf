variable "canada_items" {
  description = "Last-word items for Canada (Linux web apps)"
  type        = list(string)
  default = [
    "mapleleaf", "hockey", "poutine", "mountie", "niagara",
    "timhortons", "beavertail", "loonie", "canoe", "igloo"
  ]
}

output "canada_items_transform" {
  value = {
    for item in var.canada_items :
    item => replace(item, "/[^a-zA-Z0-9-]/", "")
  }
}