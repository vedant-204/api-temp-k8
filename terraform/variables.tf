variable digitalocean_token {
    type = string
    default = "dop_v1_7c4b80b4d363a2f614c9a3049ece0d864d5b251bbb0b017612f0621edabf0b59"
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