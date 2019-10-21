/* App servers */
resource "aws_instance" "workstation" {
  count             = 1
  ami               = var.amis[var.region]
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.public.id
  security_groups   = [aws_security_group.web.id]
  key_name          = aws_key_pair.deployer.key_name
  associate_public_ip_address         = true
  source_dest_check = true
  user_data         = file("workstation.yml")
  tags = {
    Name = "workstation-${count.index}"
  }
}