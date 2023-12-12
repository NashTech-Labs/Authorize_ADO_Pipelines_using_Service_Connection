variable "adotoken_VV" {
  type        = string
  description = "Personal Access Token to create Service Connection"
}

variable "organization_service_url_VV" {
  type        = string
  description = "Organisation Service URL"
}

variable "project_name_VV" {
  type        = string
  description = "Name of Project"
}

variable "pipeline_definition_id_VV" {
  type        = list(string)
  description = "ID of Pipeline Definition"
}

variable "service_connection_name_VV" {
  type        = string
  description = "Name of Service Connection"
}
