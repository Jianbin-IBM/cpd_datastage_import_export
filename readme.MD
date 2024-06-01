# Usage

This is a repo to demo how to export and import datastage and pipeline projects and assets.

We start with notebook since it gave a clear input/output for people to understand and test the process. 

Once finalised we can create scripts if needed. 

### Main Referenencs
1. [Full Guide on DSJob](https://github.com/IBM/DataStage/blob/main/dsjob/dsjob.4.8.5.md)
2. [Export Import Blog](https://github.com/IBM/DataStage/blob/main/dsjob/blogs/export-import.md)

### Prerequisites
Download CPDCTL executable from: https://github.com/IBM/cpdctl/releases to a local folder. 
Then add the local folder to your system path to ensure cpdctl can be executed anywhere.

### Notebook Examples
Every command format is "cpdctl dsjob command-xxx". 
To align with command, every notebook or script examples are named with "command-xxx"

"export" and "import" are paired together and only be used to export and import an entire project.
1. [Export a whole project](./export.ipynb)
2. [Import to a new project](./import.ipynb)
   
"import-zip" can be used to import zip files exported with any "export-xxx" except "export".
1. [Import zip file to a new or existing projects](./import_zip_2_project.ipynb)
   
There are many "export-xxx" supported.  
"export-datastage-assets" is recommended to export all the datastage and pipeline assets, but not "export-project".
"export-zip" is used to export multiple types of assets with one command.
Other "export-xxx", eg "export-parameter-set", "export-pipeline", "export-connection"and so on 
are used to export specific types of assets.
1. [Export all datastagae and pipeline contents with "export-project"](./export-project.ipynb) -- Not recommend
2. [Export all datastagae and pipeline contents with "export-datastage-assets"](./export-datastage-assets.ipynb) -- Recommend
3. [Export selected datastagae and pipeline assets](./export-zip.ipynb)
4. [Export parameter sets which also contain value sets](./export-parameter-set.ipynb)

### How to run a script
For example, to export a whole project and save it as a zip file as [your project name].zip
- Step 1. create a copy of "configuration_template.yaml" as "yourown.yaml" and modify accordingly
- Step 2. Run
```sh ./export_whole_project.sh [yourown.yaml]```
  
  