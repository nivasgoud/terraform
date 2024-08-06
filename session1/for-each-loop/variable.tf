variable ami {

    type = string
    default = "ami-0b4f379183e5706b9"
}

variable inst_type {

    type = string
    default = "t2.micro"
}

variable subnet {

    type = string
    default = "subnet-0ac3df5627209a411"
}

# variable name {

#     type = list

#     default = ["mongodb","catalogue","user","cart","redis","mysql","shipping","payment","rabbitmq","dispatch","web"]
# }

variable name {

    type = map

    default = {
        
        mongodb = "t3.small"
        catalogue = "t2.micro"
        user = "t2.micro"
        cart = "t2.micro"
        redis = "t2.micro"
        mysql = "t3.small"
        shipping = "t3.small"
        payment = "t2.micro"
        rabbitmq = "t2.micro"
        dispatch = "t2.micro"
        web = "t2.micro"
    }
}

# variable name {

#     type = string

#     default = "mongodb"
# }

variable "zoneid" {

    type = string
    default = "Z011790315XPHAM9K6BCC"
  
}

variable "domain-name" {

    type = string
    default = "nivasdevops.online"
  
}
