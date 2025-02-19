# M=2TeV



#!/bin/bash

# M=2000GeV sample
# Dataset:  https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8%2FRunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/1664FD1C-E4CC-1248-A343-9E4441A85948.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/24951FDC-B8AD-0A4C-A080-FD5435BA6E6B.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/547BCA7B-5974-C547-9C34-69065F82BCD9.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/5B3DBBB4-BB62-3D43-A868-543088B1FEED.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/7396829D-C827-B74A-B9F0-322929AC0F28.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/805DCA89-659D-CA40-BD3E-0CD802A279D3.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/B46E17F3-6A4D-7346-A2C1-6D92CD875090.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/100000/BACEBE64-CED1-184C-AA76-E3B9F1B188B3.root"
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