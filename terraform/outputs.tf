output "jenkins_example_ip" {
  value = "${aws_instance.jenkins.public_ip}"
}

