# M=1.25 TeV


#!/bin/bash

# M=1250GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/0244F046-1161-1849-91E1-80DA2D541CF2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/2F1C4535-B47D-DC41-96CD-F200D403364E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/46472A72-1AC0-924A-BD33-56AFAFDD9AE1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/528C67CE-E03E-3946-BAA9-4846111CA994.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/5CB98773-0E33-9642-A74D-8B4D5F7041A5.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/64070AD5-8885-5241-ACF1-135380D78AF2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/773555E3-07AA-F44A-A33A-48DC99790B95.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/960E4FEE-8507-B54B-8CC4-3B427622A1EC.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/9A80D436-F021-C94A-A832-D89168C50263.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/B52690E3-C551-A64F-AFA5-1BA0158BAF37.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C5C4D4AD-637A-444B-8EBD-34336C1325AB.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C6AC3860-B602-0146-A1A3-402F79D4863E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/D74A10E1-8AFB-374E-92DB-144517F6EB1E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/EF64F17B-171F-E944-89D5-05226F5666ED.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F028E456-4B43-4749-A38A-D0D9849C6D39.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F7A64680-9C45-5941-8DD3-5A152417BA44.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/33058B36-87B4-0C4D-8302-85738E376085.root"
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