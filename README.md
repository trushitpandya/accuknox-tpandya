# accuknox-tpandya
Terraform module to create  2 ec2 instance in different region using module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_instance_us_east_1"></a> [ec2\_instance\_us\_east\_1](#module\_ec2\_instance\_us\_east\_1) | ./ec2_instance | n/a |
| <a name="module_ec2_instance_us_east_2"></a> [ec2\_instance\_us\_east\_2](#module\_ec2\_instance\_us\_east\_2) | ./ec2_instance | n/a |
| <a name="module_vpc_us_east_1"></a> [vpc\_us\_east\_1](#module\_vpc\_us\_east\_1) | terraform-aws-modules/vpc/aws | 5.8.1 |
| <a name="module_vpc_us_east_2"></a> [vpc\_us\_east\_2](#module\_vpc\_us\_east\_2) | terraform-aws-modules/vpc/aws | 5.8.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of the EC2 instance | `string` | `"t2.small"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance_us_east_1_id"></a> [ec2\_instance\_us\_east\_1\_id](#output\_ec2\_instance\_us\_east\_1\_id) | n/a |
| <a name="output_ec2_instance_us_east_2_id"></a> [ec2\_instance\_us\_east\_2\_id](#output\_ec2\_instance\_us\_east\_2\_id) | n/a |
| <a name="output_vpc_us_east_1_id"></a> [vpc\_us\_east\_1\_id](#output\_vpc\_us\_east\_1\_id) | n/a |
| <a name="output_vpc_us_east_2_id"></a> [vpc\_us\_east\_2\_id](#output\_vpc\_us\_east\_2\_id) | n/a |
<!-- END_TF_DOCS -->