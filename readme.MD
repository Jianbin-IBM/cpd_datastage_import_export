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
1. [Export a whole project](./export_whole_project.sh)
2. [Import datastagae and pipeline assets to a new project](./import_whole_project.ipynb)
3. [Export all datastagae and pipeline contents](./export_ds_wp_project.ipynb)
4. [Export selected datastagae and pipeline assets](./export_assets.ipynb)
5. [Import zip file to a new or existing projects](./import_zip_2_project.ipynb)

### Script Examples
To export a whole project and save it as a zip file as [your project name].zip
- Step 1. create a copy of "configuration_template.yaml" as "yourown.yaml" and modify accordingly
- Step 2. Run
```sh ./export_whole_project.sh [yourown.yaml]```
  

### Please note the differences in the below commands:

#### About Export:
1. "cpdctl dsjob export" is to export **all types of contents** under a project
2. "cpdctl dsjob export-project" is **only to export DataStage&Pipeline related contents** under a project
3. "cpdctl dsjob export-zip" is to export specific DataStage and/or Pipeline assets under a project
   
#### About Import:
1. "cpdctl dsjob import" is to import **all types of contents** under a project, which must go to a newly created project.
2. "cpdctl dsjob import-zip" can be used to import both from  "cpdctl dsjob export-project" and "cpdctl dsjob export-zip" to a new or existing project.


