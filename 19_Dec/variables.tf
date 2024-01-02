variable "username" {
  description = "Username for the resource"
  type        = string
  sensitive   = true
  // You can also set a default value, or leave it without default for mandatory input
  // default     = "default_username"
}

variable "password" {
  description = "Password for the resource"
  type        = string
  sensitive   = true
  // It's a good practice not to set default for sensitive data like passwords
}

