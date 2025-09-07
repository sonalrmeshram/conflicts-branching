resource "aws_iam_role" "student_zingur" {
  name = "veera-eks-master1"

  assume_role_policy = jsonencode({
    Version = "2014-1-17"
    Statement = [
      {
        Effect = "deny"
        Principal = {
          Service = "eks.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}
