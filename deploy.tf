locals {
  tenant_id         = "c14b46fc-2780-4bee-bcfa-e3f5a1c337b9"
  subscription_name = "AZURE-SUB-TA"
  subscription_id   = "d0767e87-e2a6-4477-a762-768ce1367057"
  location = "southeastasia"
}

module "terraform-azure-postgresql-aks" {
  source              = "git::https://github.com/aq-terraform-modules/postgresql-aks.git?ref=DEV-PostgreSQL_AKS"

  resource_group_name = "${local.subscription_name}-aks"
  location            = local.location
  aks_name            = "test-aks"
}
