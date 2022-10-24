resource "kubernetes_deployment" "api-temp-deployment" {
    metadata {
        name = "api-temp-cluster-deployment"
        namespace = "default"
    }
    spec {
        replicas = 3
        selector {
            match_labels = {
                app = "api-temp-cluster-deployment"
            }     
        }
        template {
            metadata {
                labels = {
                    app = "api-temp-cluster-deployment"
                }
            }
            spec {
                container {
                    image = "vedant2040/nodeapp:v0"
                    name = "nodeappcontainer"
                    resources {
                        limits = {
                            cpu = "3"
                            memory = "1024M"
                        }
                        requests = {
                            cpu = "2"
                            memory = "512M"
                        }
                    }
                    port {
                        container_port = 3000
                    }
                }
            }
        }
    }
}

resource "kubernetes_service" "api-temp-service" {
    metadata {
        name = "api-temp-cluster-service"
        namespace = "default"
    }
    spec {
        selector = {
            app = "api-temp-cluster-service"
        }
        type = "ClusterIP"
        port {
            port = 3000
            target_port = 3000
        }
    }
}