resource "aws_iam_role" "syudent" {
  name = "veera-eks-master1"

  assume_role_policy = jsonencode({
    Version = "2014-1-17"
    Statement = [
      {
        Effect = "allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}
