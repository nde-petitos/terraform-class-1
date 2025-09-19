variable "words" {
   type    = list(string) # Define a variable words as an array of strings
   default = ["hi", "cat", "car", "tree", "hi", "car"] # Give it a set of default vaalues
}

locals {
   lengths_unique = toset([for w in var.words : length(w)]) # transform the array into a set of unique string length
   histogram = { 
      for L in local.lengths_unique : 
         tostring(L) => length(
            [for w in var.words : w if length(w) == L]
         ) 
   }
}

# output "length_histogram" { value = local.histogram }
