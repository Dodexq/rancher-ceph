terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "vm-1" {
  count    = 3
  name     = "k8s-${count.index}"
  hostname = "k8s-${count.index}"


  resources {
    cores         = 4
    memory        = 8
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = "fd8fvfm4hhu2t3hh8tln"
      size     = 20
    }
  }

  network_interface {
    subnet_id = "e9b1klk6eag8t0kvasdm"
    nat       = true
  }

  metadata = {
    # user-data = file("${path.module}/metadata.yaml")
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }

  scheduling_policy {
    preemptible = true
  }
}