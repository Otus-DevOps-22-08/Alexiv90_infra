terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
resource "yandex_compute_instance" "db" {
  name = "reddit-db"
  platform_id = "standard-v2"
  labels = {
    tags = "reddit-db"
  }

  resources {
    core_fraction = 5
    cores         = 2
    memory        = 0.5
  }

  boot_disk {
    initialize_params {
      image_id = var.db_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
