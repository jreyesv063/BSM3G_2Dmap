# M=2.5 TeV

#!/bin/bash

# M=2500GeV sample
# Dataset:  https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8%2FRunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/30000/628CEB9B-7F02-C44D-A31F-CC8987D79CC8.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/30000/6F3E3373-1C0B-D441-B490-19A7FB086CA7.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/30000/8668641E-B354-774A-87DC-C9EE5D536B5D.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/30000/A3BFB88A-E7A7-B345-A3E6-33E1C5CE03EA.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/30000/BBF9EE5F-2A9E-DD41-8D77-C88294CC606D.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2500_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/30000/E978B7AA-8126-F04F-BC6B-9647C356028D.root"
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