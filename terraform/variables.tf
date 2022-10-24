variable digitalocean_token {
    type = string
    default = "dop_v1_1b8f5566b98a70802d64459fd165be691891bf90cc44a08a93541d3945dd8ffb"
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