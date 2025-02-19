# M= 0.5TeV



#!/bin/bash

# M=500GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/42677CA7-F082-8C45-8F36-6228F89735E3.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/68C13C76-9853-9649-BC28-FA138F31F6EF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/FE1BCF1F-BFA6-984C-AF3B-0B2E968B516B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/757F8E37-9860-3C43-AF19-7C7EFBA6D39F.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/7C708A57-9642-4E45-80EB-A386A436EC61.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/B7D31B84-1885-554C-9BA5-85E4EFAEE9AD.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/0B77BDAB-7DBB-2A41-AF19-7C3A8A3A84CC.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/9CCAE707-517C-0641-B2FB-0897CF2CA3C4.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/D96C184B-3307-054D-B40C-A01FFDA377AE.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/7CB1F4C0-DE6A-5A48-B51A-49352794DC3E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/D19047FC-ABD0-C64C-A1A5-776F8F3CFD62.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/97914789-1097-FC4B-83B6-33B7FA2395DF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/DD1407C6-600B-784A-B4EB-50B3BD381DAE.root"
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