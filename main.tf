terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "jenkins" {
  image  = "ubuntu-20-04-x64"
  name   = "jenkins-server"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [var.ssh_key_fingerprint]

  user_data = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y openjdk-11-jdk apt-transport-https wget
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    apt-get update
    apt-get install -y jenkins
    systemctl start jenkins
    systemctl enable jenkins
  EOT
}
