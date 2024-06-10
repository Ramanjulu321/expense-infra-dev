variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true" 
        Component = "app-alb"
    }
}

variable "zone_name" {
  default = "daws-78s.store"
}