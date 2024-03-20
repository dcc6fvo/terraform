output "ip-dev-pub-1" {
    value = aws_instance.dev-pub-1.public_ip
}

output "ip-dev-pub-2" {
    value = aws_instance.dev-pub-1.public_ip
}

output "ip-dev-priv" {
    value = "${formatlist("%v", aws_instance.dev-priv.*.private_ip)}"
}