output "aws_security_group_jenkins" {
  value = [aws_security_group.jenkins.name]
  description = "Output Jenkins port"
}

output "aws_security_group_nexus" {
  value = [aws_security_group.nexus.name]
  description = "Output Nexus port"
}