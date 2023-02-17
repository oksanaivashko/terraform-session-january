resource "aws_sqs_queue" "main" {
  count = 3 
  name  = replace(local.name, "resource", "sqs-${count.index}")
  tags  = merge(local.common_tags, { Name = replace(local.name, "resource", "sqs-${count.index}") })
}
