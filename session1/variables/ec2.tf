resource "aws_instance" "terraform" {
    ami = var.ami    #Public Image DevOps-Practice
    instance_type = var.inst_type
    subnet_id = var.subnet
    
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
        
        Name = var.name
    }
}
