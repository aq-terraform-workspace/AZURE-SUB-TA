locals {
  tenant_id         = "c14b46fc-2780-4bee-bcfa-e3f5a1c337b9"
  subscription_name = "AZURE-SUB-TA"
  subscription_id   = "d0767e87-e2a6-4477-a762-768ce1367057"
  location = "southeastasia"
}

# module "terraform-azure-logic-app" {
#   source              = "git::https://github.com/aq-terraform-modules/logic-app.git"

#   resource_group_name = "${subscription_name}-logicapp"
#   location            = local.location
#   logic_app_name      = "logicapp"
# }

module "terraform-azure-postgresql-aks" {
  source              = "git::https://github.com/aq-terraform-modules/postgresql-aks.git?DEV-PostgreSQL_AKS"

  resource_group_name = "${subscription_name}-aks"
  location            = local.location
  aks_name            = "test-aks"
}
