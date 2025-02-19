# M=1TeV


#!/bin/bash

# M=1000GeV sample
# Dataset:  https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8%2FRunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/120000/3566B106-F452-9F44-B001-D3043B71537E.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/120000/5256AE96-8216-E442-A0F3-1383E1459986.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/120000/75ACA6DB-3236-6E4F-93CE-6A82E0383E3C.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/120000/8E486850-54C5-9945-BA9B-52D103D159FF.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/120000/E8BC465D-7FF6-7E43-B1F4-2CD323FF7DC0.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/120000/FBCB1777-D2C2-F94E-8574-823D4D57EF0F.root"
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