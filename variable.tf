variable "region" {
  type        = string
  description = "Enter region"
  default     = ""
}

variable "key_name" {
  type        = string
  description = "Provide key pair name"
  default     = ""
}
variable "key_file" {
  type        = string
  description = "Provide key file location"
  default     = ""
}
variable "instance_type" {
  type        = string
  description = "Provide instance type"
  default     = ""
}
variable "instance_class" {
  type        = string
  description = "Provide instance type"
  default     = ""
}

variable "vpc_cidr" {
  type        = string
  description = "provide vpc cidr block"
  default     = ""
}
variable "vpc_public1_cidr" {
  type        = string
  description = "provide subnet 1 cidr block"
  default     = ""
}
variable "vpc_public2_cidr" {
  type        = string
  description = "provide subnet 2 cidr block"
  default     = ""
}
variable "vpc_public3_cidr" {
  type        = string
  description = "provide subnet 3 cidr block"
  default     = ""
}
variable "default_cidr" {
  type        = string
  description = "provide default cidr block"
  default     = ""
}

variable "vpc_private1_cidr" {
  type        = string
  description = "provide private 1 cidr block"
  default     = ""
}
variable "vpc_private2_cidr" {
  type        = string
  description = "provide private 2 cidr block"
  default     = ""
}
variable "vpc_private3_cidr" {
  type        = string
  description = "provide private 3 cidr block"
  default     = ""
}

variable "root_volume_size" {
    type        = number
    description = "The size of the root volume in GB"
}

variable "database_name" {
    type        = string
    description = "The name of the database"
    default     = ""
}
variable "database_user" {
    type        = string
    description = "The name of the database user"
    default     = ""
}
variable "database_password" {
    type        = string
    description = "database password"
    default     = ""
}
variable "private_key" {
    type        = string
    description = "The private key used for authentication"
    default     = ""
}

variable "domain_name" {
  type        = string
  description = "domain name"
  default     = ""
}

variable "record_name" {
  type        = string
  description = "sub domain name"
  default     = ""
}