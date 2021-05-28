import json

with open("./vcloud/terraform_outputs.json") as terraform_output:
	output = json.load(terraform_output)

for value in output:
	with open("./ansible/inventory", "w") as inventory:
		inventory.write(f"[{value}]\n{output[value]['value']}\n")
