resource "digitalocean_kubernetes_cluster" "api-temp-cluster" {
    name = "api-temp-cluster"
    region = "ams3"
    version = "1.24.4-do.0"
    node_pool {
        name = "default"
        size = "s-1vcpu-2gb"
        node_count = 1
    }
}



