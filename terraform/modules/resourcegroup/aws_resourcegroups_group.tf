# aws_resourcegroups_group
resource "aws_resourcegroups_group" "environment" {
  name        = "${var.prefix}-${var.environment}"
  description = "${title(var.prefix)} Environment ${title(var.environment)} Resource"

  resource_query {
    query = templatefile("${path.module}/aws_resourcegroups_group_resource_queries/environment.json.tpl",
      {
        environment = var.environment
      }
    )
  }
}
