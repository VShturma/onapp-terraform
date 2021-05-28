import json

with open("terraform_outputs.json") as terraform_output:
	output = json.load(terraform_output)

for value in output:
	with open("inventory", "w") as inventory:
		inventory.write(f"[{value}]\n{output[value]['value']}\n")
