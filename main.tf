terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

module "readme" {
  source = "./modules/file-creator"

  content  = "# ${var.project_name}\nAuthor: ${var.author}\nEnv: ${var.environment}"
  filename = "${path.module}/output/README.md"
}

module "config" {
  source = "./modules/file-creator"

  content  = "PROJECT=${var.project_name}\nAuthor=${var.author}\nEnv=${var.environment}"
  filename = "${path.module}/output/config.env"
}

module "log" {
  source = "./modules/file-creator"

  content  = "Project initialized on ${var.project_name}\nAuthor=${var.author}\nEnv=${var.environment}"
  filename = "${path.module}/output/init.log"
}