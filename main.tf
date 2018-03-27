resource "aws_vpc_endpoint" "service_consumer" {
  vpc_id             = "${var.vpc_id}"
  subnet_ids         = "${var.subnet_ids}"
  security_group_ids = ["${var.security_group_ids}"]
  service_name       = "${var.service_provider_name}"
  vpc_endpoint_type  = "Interface"
}
