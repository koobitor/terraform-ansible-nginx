resource "digitalocean_ssh_key" "ssh" {
  name       = "ssh"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}