# ECS instance profile

For an EC2 instance to connect itself to ECS it needs rights to do so.


* [Why do we need ECS instance policies?](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html)
* [ECS roles explained](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_managed_policies.html)
* [More ECS policy examples explained](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/IAMPolicyExamples.html)

---

![](https://github.com/terraform-module/terraform-aws-ecs-instance-profile/workflows/release/badge.svg)
![](https://github.com/terraform-module/terraform-aws-ecs-instance-profile/workflows/commit-check/badge.svg)
![](https://github.com/terraform-module/terraform-aws-ecs-instance-profile/workflows/labeler/badge.svg)

[![](https://img.shields.io/github/license/terraform-module/terraform-aws-ecs-instance-profile)](https://github.com/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/github/v/tag/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/issues/github/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/github/issues/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/github/issues-closed/terraform-module/terraform-aws-ecs-instance-profile)
[![](https://img.shields.io/github/languages/code-size/terraform-module/terraform-aws-ecs-instance-profile)](https://github.com/terraform-module/terraform-aws-ecs-instance-profile)
[![](https://img.shields.io/github/repo-size/terraform-module/terraform-aws-ecs-instance-profile)](https://github.com/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/github/languages/top/terraform-module/terraform-aws-ecs-instance-profile?color=green&logo=terraform&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/github/contributors/terraform-module/terraform-aws-ecs-instance-profile)
![](https://img.shields.io/github/last-commit/terraform-module/terraform-aws-ecs-instance-profile)
[![Maintenance](https://img.shields.io/badge/Maintenu%3F-oui-green.svg)](https://GitHub.com/terraform-module/terraform-aws-ecs-instance-profile/graphs/commit-activity)
[![GitHub forks](https://img.shields.io/github/forks/terraform-module/terraform-aws-ecs-instance-profile.svg?style=social&label=Fork)](https://github.com/terraform-module/terraform-aws-ecs-instance-profile)

---

## Documentation

- [TFLint Rules](https://github.com/terraform-linters/tflint/tree/master/docs/rules)

## Usage example

IMPORTANT: The master branch is used in source just as an example. In your code, do not pin to master because there may be breaking changes between releases. Instead pin to the release tag (e.g. ?ref=tags/x.y.z) of one of our [latest releases](https://github.com/terraform-module/terraform-aws-ecs-instance-profile/releases).

See `examples` directory for working examples to reference:

```hcl
module "ecs-instance-profile" {
  source  = "terraform-module/ecs-instance-profile/aws"
  version = "0.1.0"
}
```

## Assumptions

## Available features

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.amazon_ssm_managed_instance_core](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecs_ec2_cloudwatch_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecs_ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_include_ssm"></a> [include\_ssm](#input\_include\_ssm) | Whether to include policies needed for AmazonSSM | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to instance profile role | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_instance_profile_arn"></a> [iam\_instance\_profile\_arn](#output\_iam\_instance\_profile\_arn) | ARN of the IAM instance profile |
| <a name="output_iam_instance_profile_id"></a> [iam\_instance\_profile\_id](#output\_iam\_instance\_profile\_id) | ID of the IAM instance profile |
| <a name="output_iam_role_id"></a> [iam\_role\_id](#output\_iam\_role\_id) | ID of the IAM role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


### :memo: Guidelines

 - :memo: Use a succinct title and description.
 - :bug: Bugs & feature requests can be be opened
 - :signal_strength: Support questions are better asked on [Stack Overflow](https://stackoverflow.com/)
 - :blush: Be nice, civil and polite ([as always](http://contributor-covenant.org/version/1/4/)).

## License

Copyright 2019 Ivan Katliarhcuk

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## How to Contribute

Submit a pull request

# Authors

Currently maintained by [Ivan Katliarchuk](https://github.com/ivankatliarchuk) and these [awesome contributors](https://github.com/terraform-module/terraform-aws-ecs-instance-profile/graphs/contributors).

[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)

## Terraform Registry

- [Module](https://registry.terraform.io/modules/terraform-module/ecs-instance-profile/aws/)

## Resources

- [Terraform modules](https://registry.terraform.io/namespaces/terraform-module)

## Clone Me

[**Create a repository using this template →**][template.generate]

<!-- resources -->
[template.generate]: https://github.com/terraform-module/terraform-aws-ecs-instance-profile/generate
