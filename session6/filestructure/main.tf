resource "aws_sqs_queue""main"{
    count = 2
    #name = "${var.env}-sqs"
    #Name1       = format("%s-instance", var.env)
    tags = {
        Environment = var.env [0]
        Name = format("%s-sqs", var.env)
    }
    tags = {
        Environment = var.env [1]
        Name = format("%s-sqs", var.env)
    }
}