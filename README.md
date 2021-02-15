# Use Terraform to create Managed Config Rules in AWS

- Use [main.tf](./main.tf) to create a recorder for config changes.

- Use the [template](./TEMPLATE.tf.txt) to create a file for each managed config rule you want to deploy. _(You can put all the rules in one file, of course, but breaking them out like this makes them easier to find and manage.)_

- Take a look at the following link for:
	- CONFIG RULE NAME
	- CONFIG RULE DESCRIPTION
	- AWS SOURCE IDENTIFIER
	- and PARAMETERS (for rules that need them)

- [List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html)
