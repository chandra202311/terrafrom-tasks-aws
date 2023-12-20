resource "aws_sns_topic" "my_topic" {
  name = "my-sns-topic"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = "your-email@example.com"  # Replace with your email address
}
