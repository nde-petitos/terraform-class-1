variable "usernames" {
 type    = list(string) # Define the variable usernames as a list of string
 default = ["alice", "bob", "carol"] # Give default array of string to that variable 
}
variable "domain" {
 type    = string # Define the type string as the type of the variable domain
 default = "example.com" # Give it the value "example.com as default value"
}
locals {
 emails = { for u in var.usernames : u => "${u}@${var.domain}" } # Add example.com as surfix to every string in the array usernames
}
# output "emails" {
#  value = local.emails # Display the result
# }
