variable "provider_attr" {
  description = "Inputs to provider"
  type = object({
    profile = string
    region  = string
  })
  default = {
    profile = "git-ci"
    region  = "us-east-1"
  }
}