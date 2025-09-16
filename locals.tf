#locals {
    # full_name = "${var.app_name}-prod"
#}

#locals {
  #movie_lower = lower(var.movie)
 # movie_upper = upper(var.movie)
#}

#locals {
 # replaced = replace(var.original, "MCIT", "Montreal College")
#}

locals {
  first_word = substr(var.phrase, index(var.phrase, "mcit"), find(var.phrase, "mcit")+4)
}
