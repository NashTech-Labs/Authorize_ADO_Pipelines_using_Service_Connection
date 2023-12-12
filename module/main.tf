data "azuredevops_project" "project" {
  name = var.project_name_VV
}

data "azuredevops_serviceendpoint_azurerm" "serviceendpoint" {
  project_id            = data.azuredevops_project.project.id
  service_endpoint_name = var.service_connection_name_VV
}

resource "azuredevops_pipeline_authorization" "pipeline_authorization" {
  count       = length(var.pipeline_definition_id_VV)
  project_id  = data.azuredevops_project.project.project_id
  resource_id = data.azuredevops_serviceendpoint_azurerm.serviceendpoint.service_endpoint_id
  type        = "endpoint"
  pipeline_id = var.pipeline_definition_id_VV[count.index]
}
