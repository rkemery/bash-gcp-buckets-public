#!/bin/bash

projects=$(gcloud projects list --format="value(PROJECT_ID)")
buckets="buckets.txt"

if [ -f $buckets ]; then
  rm $buckets
fi

for i in ${projects[@]};
  do gsutil ls -p $i | sed 's/.....//' | sed 's/.$//' >> $buckets;
done

python3 gcp_inspector.py -r $buckets
