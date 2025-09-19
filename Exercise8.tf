variable "list_names" {
  type = set(string)
  default = ["alice", "bob", "carol"]
}

locals {
  append_list_names = [for v in var.list_names : "Hello ${v}"]
}

# output "append_hello_to_list_names" {
#   value = local.append_list_names
# }
