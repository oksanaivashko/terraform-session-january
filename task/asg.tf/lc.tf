resource "aws_launch_configuration" "linux" {
  name            = var.task-launch-config
  image_id        = data.aws_ami.amazon_linux_2.id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.lc_sg.id]
}