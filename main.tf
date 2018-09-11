# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.token}"
}

# Create a web server
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-16-04-x64"
  name   = "terraform-demo"
  region = "SGP1"
  size   = "2gb"
  ssh_keys = ["${digitalocean_ssh_key.ssh.id}"]

  depends_on = ["digitalocean_ssh_key.ssh"]

  provisioner "local-exec" {
    command = "echo ${digitalocean_droplet.web.ipv4_address} > ip_address.txt"
  }
}