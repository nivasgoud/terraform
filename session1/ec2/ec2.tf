resource "aws_instance" "terraform" {
    ami = "ami-0b4f379183e5706b9"    #Public Image DevOps-Practice
    instance_type = "t3.micro"
    subnet_id = "subnet-0ac3df5627209a411"

    #vpc_security_group_ids = ["sg-0db659996615c588e"]

    tags = {
        
        Name = "MyFirstTerraform"
    }
}
