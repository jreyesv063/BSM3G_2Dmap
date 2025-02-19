# M=1TeV


#!/bin/bash

# M=1000GeV sample
# Dataset:  https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D+%2FZprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/86B8D9E8-CA8D-C149-82D6-E882D4742272.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/B01A6352-3271-BB49-BFDA-4A301B46E4A6.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F4E84FF8-FBFD-224C-9B50-B59531ED733B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/3840D156-C690-7940-ACC5-43DFEB7BCEFD.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/A260238D-8282-B94E-9114-91EDAA671608.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/B08D3173-57E7-8841-AAB1-115C0A4223FF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/BED6904D-1C72-5845-9C6E-1E5E0603D991.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/D0A66569-4ADF-B345-A830-22B3A75BF5BD.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/3CA8EAF9-086A-D34F-BB72-16D97895225E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/C65C636D-F9E4-574E-87FD-82ED643FDB6F.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/0A5D56BA-2398-9544-A795-376805EAB214.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/945A55B0-E5AE-294B-ABD8-BE56CA8CD802.root"
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