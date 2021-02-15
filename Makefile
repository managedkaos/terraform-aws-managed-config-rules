TF_COMMANDS = init fmt validate plan apply

$(TF_COMMANDS):
	TF_IN_AUTOMATION=true terraform $(@)

all:
	TF_IN_AUTOMATION=true terraform apply -input=false -auto-approve

.PHONY: all $(TF_COMMANDS)
