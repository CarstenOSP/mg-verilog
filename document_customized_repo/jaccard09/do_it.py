import json

with open("input.json", "r") as infile:
    data = json.load(infile)

for key in data:
    data[key]["module_inst_list"] = []

with open("module_inst.json", "w") as outfile:
    json.dump(data, outfile, indent=4)