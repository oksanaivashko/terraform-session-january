resource "aws_sqs_queue""main"{
    name = "${var.env}-qa"
    tags = {
        Environment = var.env
        Name = format("%s-qa", var.env)
    }
}

# if you want tomanage isolate infrastructure and reuse your configuratoin files you must isolate the backend
# isolating backendterraform.tfstate = isolating wnvironment