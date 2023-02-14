resource "aws_sqs_queue""main"{
    count = 2
    name = "${var.env}-sqs"
    Name1       = format("%s-instance", var.env)
    
}