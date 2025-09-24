variable "canada_items" {
  description = "Last-word items for Canada (Linux web apps)"
  type        = list(string)
  default = [
    "mapleleaf", "hockey", "poutine", "mountie", "niagara",
    "timhortons", "beavertail", "loonie", "canoe", "igloo"
  ]
}

variable "project_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "wa"
}

variable "us_items" {
  description = "Last-word items for US (Windows web apps)"
  type        = list(string)
  default = [
    "burger", "baseball", "jeans", "hollywood", "donut",
    "jazz", "applepie", "football", "route66", "hotdog"
  ]
}

#############################
# Windows Web Apps for US items
#############################
locals {
  us_map = {
    for item in var.us_items :
    item => replace(item, "/[^a-zA-Z0-9-]/", "")
  }
}

resource "azurerm_windows_web_app" "us_apps" {
  for_each            = local.us_map
  name                = "${var.project_prefix}-us-${each.value}-${random_string.suffix.result}"
  location            = azurerm_service_plan.windows_plan_us.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.windows_plan_us.id

  site_config {
    always_on = true
    # Optionally set stack versions here (e.g., dotnet_framework_version) if needed
  }

  app_settings = {
    COUNTRY = "us"
    ITEM    = each.key
    PREFIX  = "wa-us-${each.key}"
  }

  tags = {
    environment = "dev"
    project     = var.project_prefix
    country     = "us"
    item        = each.key
    os          = "windows"
  }
}


