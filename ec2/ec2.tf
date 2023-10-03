resource "aws_instance" "web" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t3.micro"
  key_name = "docker"


user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install docker -y
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    sudo systemctl status docker
    sudo yum install python3.7
    sudo yum install python3-pip -y
    sudo pip install ansible
    sudo yum install git -y
    curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh" | sudo bash
    sudo yum install gitlab-runner -y
    sudo usermod -aG docker gitlab-runner
    sudo systemctl restart docker

EOF


  tags = {
    Name = "Demo"
  }

}
