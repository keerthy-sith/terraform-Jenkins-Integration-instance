resource "aws_eip" "nits" {
   instance = aws_instance.instance-1.id
   vpc      = true
}
