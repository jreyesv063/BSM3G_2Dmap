# M= 1.5 TeV


#!/bin/bash

# M=1500GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/1E293232-E088-BB4E-9135-4A503E32CC39.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/BD0608ED-281B-FE44-90F6-9767864A156F.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F68E010A-2D2A-ED40-A3AA-01F2BF7259A5.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/0F670E05-D482-2E48-B6BB-85821FC85C04.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/14FA5CCC-31C1-724D-A7F4-19D944A184FD.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/649606B4-61E7-1341-95C5-9967F2E6047D.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/27A1C631-D562-8B42-A708-B9105658ECE1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/A332B407-6BEC-CC49-9DA2-FD320F70D5F6.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/50EFC726-0C07-F94D-8238-C4BC509AC2C8.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/9936B5AE-865B-9242-85EA-C598B83C32DB.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/4F64F5FD-3509-5B46-B865-03269CA48204.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/E1E3AE0E-B78F-7E43-89AA-93275E9A093B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/E41B221B-E020-A146-8D88-C49C581E2003.root"
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