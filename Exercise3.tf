variable "raw_scores" {
   type    = list(string) # Define a variable as an array of string
   default = ["alice:90", "bob:75", "carol:85"] # give it some default values
}

locals {
   score_pairs = [
     for s in var.raw_scores : {
       name  = split(":", s)[0] # Split every string in the variable raw_scores and keep the name
       score = tonumber(split(":", s)[1]) # Split every string in the variable raw_scores and keep the score
     }
   ] # make and array of json object with the key name and score
   scores_map   = { for p in local.score_pairs : p.name => p.score }
   average      = length(local.score_pairs) == 0 ? 0 : sum([for p in local.score_pairs : p.score]) / length(local.score_pairs)
}

# output "scores_map" { 
#   value = local.scores_map 
# }
# output "avg_score"  { 
#   value = local.average    
# }
