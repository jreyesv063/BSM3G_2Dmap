# M=1.75TeV

#!/bin/bash

# M=1750GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8%2FRunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/00000/40130D74-F249-D14F-BD3E-DAF70BAB1465.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/00000/4750A1D0-9931-A049-AAA7-88E5B8A7F9FB.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/00000/6E956C7F-C7A5-4A40-A388-0B39B2D75345.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/00000/9C8B4AD5-1668-B04E-B82A-D96A4F52C9A1.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/00000/E00D2C75-5C95-C543-8087-9BB791345386.root"
)

# Check if the Analyzer executable exists
if [[ ! -f ./Analyzer ]]; then
    echo "Error: 'Analyzer' not found in the current directory."
    exit 1
fi

# Process each file
for file_path in "${files[@]}"; do
    file_name=$(basename "${file_path}")
    file_url="${base_url}${file_path}"
    output_file="output_${file_name}"

    # Build and execute the command
    ./Analyzer -in "${file_url}" -out "${output_file}"

done

echo "✅ Process completed."