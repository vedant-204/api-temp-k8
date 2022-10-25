variable digitalocean_token {
    type = string
    default = "dop_v1_6b0a98ad97aaf1656663993d754d0921ece669c2a5a7be318d7356fa7291a09b"
}

variable cluster_name {
    type = string
    default = "dev"
}

variable region {
    type = string
    default = "ams3"
}

variable default_node_size {
    type = string
    default = "s-1vcpu-2gb"
}
