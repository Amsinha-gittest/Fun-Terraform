resource "aws_iam_user" "user" {
  name = "test-user1"
}
resource "aws_s3_bucket" "example5" {
  bucket = "bucketfirstv1"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}
resource "aws_iam_policy" "policy" {
  name        = "test-policy2"
  description = "A test policy"
  policy      = jsonencode({
    Version = "2023-11-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "aws_s3_bucket.example5.arn"
      },
    ]
  })
}
resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.policy.arn
}