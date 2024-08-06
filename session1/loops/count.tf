# In Terraform loops concept would work with the count keyword nothing but count each iteration
resource "aws_instance" "roboproject" {
    count = length(var.name)
    ami = var.ami    #Public Image DevOps-Practice
    instance_type = var.name[count.index] == "mongodb" || var.name[count.index] == "mysql" || var.name[count.index] == "shipping" ? "t3.small" : "t2.micro"

    subnet_id = var.subnet
    
    #vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
        
        Name = var.name[count.index]
    }
}


#Route 53 records

resource "aws_route53_record" "roboshop53" {
  #count = 11   #count is a special variable given by terraform for looping
  count = length(var.name)
  zone_id = var.zoneid
  name    = "${var.name[count.index]}.${var.domain-name}"    #interpolation
  type    = "A"
  ttl     = 1
  records = [var.name[count.index] == "web" ? aws_instance.roboproject[count.index].public_ip : aws_instance.roboproject[count.index].private_ip]
}