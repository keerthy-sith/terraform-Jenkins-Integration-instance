provider "aws" {
        region="us-east-1"
}
resource "aws_instance" "instance-1" {
        ami="ami-08e4e35cccc6189f4"
        instance_type="t2.micro"
	key_name="Jenkins"
	provisioner "file" {
	source="index.html"
	        destination="index.html"
} 
connection {
        type="ssh"
        host=self.public_ip   
        user="ec2-user"
        password="" 
        private_key=file("Jenkins.pem")
}
}
