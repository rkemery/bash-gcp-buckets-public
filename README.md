# bash-gcp-buckets-public
Enumerate through all buckets and output if they're public.

## Dependencies
- This depends on setup of [gcp-inspector](https://github.com/justmorpheus/gcp-inspector)
- gcloud and gsutil setup on target host
- use of gcloud default application credentials with enough permissions to perform work

## What It Does
- Gets all the project_ids in the GCP Organization
- Writes the bucket names to buckets.txt in the working directory
- For loop through all projects to find buckets in that project and writes to buckets.txt
- Runs gcp_inspector.py with the bucket names from the buckets.txt file from above to show publicly available status or not 
## Use
- chmod a+x buckets.sh
- ./buckets.sh 
- Sip :coffee: and enjoy!

## Not For Production
- Tested on macOS Monterey with zsh shell
- Not for use in production without proper vetting and testing first :smile:
