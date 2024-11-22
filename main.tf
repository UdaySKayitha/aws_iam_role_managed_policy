provider "aws" {
  region = var.region
}

resource "aws_iam_role" "iam_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}


# Attach each AWS managed policy
resource "aws_iam_role_policy_attachment" "managed_policy_attachment" {
  for_each   = toset(values(var.spooc_get_details_polict_arns))
  role       = aws_iam_role.iam_role.name
  policy_arn = each.value
}



