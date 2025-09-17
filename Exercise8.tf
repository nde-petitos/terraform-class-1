variable "list_names" {
  type = set(string)
  default = ["alice", "bob", "carol"]
}

locals {
  append_list_names = [for name in var.list_names : "Hallo ${name}"]
}

output {
  value = var.append_list_names
}
