resource "aws_sqs_queue""main"{
    name = "${var.env}-sqs"
    tags = {
        Environment = var.env
        Name = format("%s-sqs", var.env)
    }
}

# if you want tomanage isolate infrastructure and reuse your configuratoin files you must isolate the backend
# isolating backendterraform.tfstate = isolating wnvironment