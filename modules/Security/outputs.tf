output "ALB-sg" {
  value = aws_security_group.cloudops["ext-alb-sg"].id
}


output "IALB-sg" {
  value = aws_security_group.cloudops["int-alb-sg"].id
}


output "bastion-sg" {
  value = aws_security_group.cloudops["bastion-sg"].id
}


output "nginx-sg" {
  value = aws_security_group.cloudops["nginx-sg"].id
}


output "web-sg" {
  value = aws_security_group.cloudops["webserver-sg"].id
}


output "datalayer-sg" {
  value = aws_security_group.cloudops["datalayer-sg"].id
}