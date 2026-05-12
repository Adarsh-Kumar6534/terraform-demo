variable "content" {
  type = string
}

variable "filename" {
  type = string
}

resource "local_file" "this" {
  content  = var.content
  filename = var.filename
}

output "filepath" {
  value = local_file.this.filename
}