variable "database-instance-class" {
  default = "db.t3.micro"
  description = "The Database Instance Type"
  type = string
}
variable "database-instance-identifier" {
  default = "rdstf"
  description = "The Database Instance Identifier"
  type = string
}
variable "database-allocated-storage" {
  default = "5"
  description = "The Database allocated storage"
  type = string
}
variable "database-storage-type" {
  default = "gp2"
  description = "The Database storage type"
  type = string
}
variable "database-engine" {
  default = "postgres"
  description = "The Database engine"
  type = string
}
variable "database-engine-version" {
  default = "14.7"
  description = "The Database engine version"
  type = string
}
variable "database-username" {
  default = "demo"
  description = "The Database username"
  type = string
}
variable "database-password" {
  default = "Passw0rd!123"
  description = "The Database password"
  type = string
}
variable "database-publicly-accessble" {
  default = "true"
  description = "The Database publicly accessble"
  type = string
}
variable "database-snapshot-identifier" {
  default = "true"
  description = "The Database snapshot identifier"
  type = string
}
variable "database-Name-tag" {
  default = "MyRDS"
  description = "The Database snapshot identifier"
  type = string
}
