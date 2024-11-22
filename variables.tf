variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "role_name" {
  description = "The name of the IAM role"
  type        = string
}

variable "spooc_get_details_polict_arns" {
  description = "List of AWS managed policy ARNs to attach"
  type        = map(string)
}
