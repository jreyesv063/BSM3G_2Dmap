# M=3TeV


#!/bin/bash

# M=3000GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/5B61A575-DD7B-8C42-8716-F7D79E79D88D.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/635976E2-AD17-0342-B2EA-116D48010999.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/7D95E1E7-AAD9-044A-B74B-6B485E46785B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/9080E90E-4DD9-8F44-9C52-3E3EB3BBA8CD.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/A98D4C92-248A-5940-9482-F5625BD2DBD1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/BFDA0971-9EAB-7645-B2F2-914AFA345658.root"
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