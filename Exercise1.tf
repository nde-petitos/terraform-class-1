variable "labels" {
 type    = set(string) # Define the variable as a list of dtring
 default = ["alpha", "beta", "gamma"] # List of default value
}

locals {
 labels_upper = toset([for s in var.labels : upper(s)]) # Make every string in the set as upper case and then transform it to a set again
}

# output "labels_upper" {
#  value = local.labels_upper # Display the labels_upper
# }
