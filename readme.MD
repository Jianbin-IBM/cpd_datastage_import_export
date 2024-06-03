# Usage

This is a repo to demo how to export and import datastage and pipeline projects and assets.
We start with notebook example since it gave a clear input/output for people to understand and test the process. 
Once finalised we can create scripts if needed. 

There are many commands in [Full Command on DSJob](https://github.com/IBM/DataStage/blob/main/dsjob/dsjob.4.8.5.md).
Overall, all the commands can be divided into 3 groups

#### Group 1: "export" and "import"
"export" and "import" are paired together and only be used to export and import an entire project.
   
####  Group 2:"export-xxx" and "import-zip"
"export-xxx" will export to a zip file. And "import-zip" can import any zip file to a project

#### Group 3: "get-xxx","list-xxx","create-xxx","delete-xxx" and "update-xxx"
xxx will be specific resources or assets. It uses JSON output or JSON file instead of zip file
   
### Main Referenencs
1. [Full Command on DSJob](https://github.com/IBM/DataStage/blob/main/dsjob/dsjob.4.8.5.md)
2. [Export Import Blog](https://github.com/IBM/DataStage/blob/main/dsjob/blogs/export-import.md)

### Prerequisites
Download CPDCTL executable from: https://github.com/IBM/cpdctl/releases to a local folder. 
Then add the local folder to your system path to ensure cpdctl can be executed anywhere.

### Notebook Examples
1. [Export and Import a whole project](./export_import_whole_project.yaml)
2. [Export and Import Parameter Set](./export_import_parameter_set.ipynb)
3. [Export and Import Value Set](./export_import_value_set.yaml)
4. [Export and Import Selected Assets](./export_import_selected_assets.yaml)


### Script Examples
1. [Export a whole project](./export.sh)
   
#### How to run a script
For example, to export a whole project and save it as a zip file as [your project name].zip
- Step 1. create a copy of "configuration_template.yaml" as "yourown.yaml" and modify accordingly
- Step 2. Run
```sh ./export_whole_project.sh [yourown.yaml]```
  
  