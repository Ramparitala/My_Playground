provider "aws" {
  region = "us-east-1"
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"
} 
resource "aws_iam_user" "example" {
 count = 3
 name = "RamParitala${count.index+1}"
}
resource "aws_iam_policy" "test_policy" {
  name = "test_iam_policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_user_policy_attachment" "test-attach" {
  count = 3
  policy_arn = "${aws_iam_policy.test_policy.arn}"
  user       = "${aws_iam_user.example.*.id[count.index]}"
}
