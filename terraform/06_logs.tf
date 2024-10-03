resource "aws_cloudwatch_log_group" "grocery-log-group" {
    name = "/ecs/grocery-app"
    retention_in_days = var.log_retention_in_days
}