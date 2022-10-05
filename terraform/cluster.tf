resource "digitalocean_kubernetes_cluster" "api-temp-cluster" {
    metadata {
        name = "api-temp-cluster"
        namespace = "default"
    }
    spec {
        region = "ams3"
        version = "1.19.3-do.0"
        node_pool {
            name = "default"
            size = "s-1vcpu-2gb"
            node_count = 1
        }
        
    }
}


