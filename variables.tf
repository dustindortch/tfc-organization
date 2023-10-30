variable "organizations" {
  type = map(object({
    email = string
  }))
}
