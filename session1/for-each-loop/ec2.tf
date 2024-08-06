# In Terraform loops concept would work with the count keyword nothing but count each iteration
resource "aws_instance" "roboproject" {
    for_each = var.name
    ami = var.ami   #Public Image DevOps-Practice
    instance_type = each.value
    subnet_id = var.subnet
    
    #vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
        
        Name = each.key
    }
}


#Route 53 records

resource "aws_route53_record" "roboshop53" {
  #count = 11   #count is a special variable given by terraform for looping
  #count = length(var.name)
  for_each = var.name
  zone_id = var.zoneid
  name    = "${each.key}.${var.domain-name}"    #interpolation
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? aws_instance.roboproject[each.key].public_ip : aws_instance.roboproject[each.key].private_ip]
}