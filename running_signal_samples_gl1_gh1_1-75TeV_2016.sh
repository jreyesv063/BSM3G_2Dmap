# M=1.75TeV

#!/bin/bash

# M=1750GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/0CD4E74B-0845-E14A-AACD-F1E62E64C45C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/83263E68-6C96-064E-8A96-2C8464305390.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/9E509644-DDF6-0F48-BF99-7D9548E5C369.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/9FF03100-8183-3640-BF8F-7A3C4EB06335.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/EE5A9978-8A56-C040-BA79-4827F99B0CB3.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/14B259AA-9877-6E49-977A-5FC569ED7E26.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/2C6F783B-5F2F-DF46-8536-FFA49B7FBC63.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/D2B18FD1-2955-1E41-AAF1-784A033D39CE.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/59FD8279-520D-3641-B472-F71EBAD9D28E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/FB27B852-F014-984B-AA76-F1B3ECAE746E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/1318BF73-DE77-5C40-87DC-67C144B1439C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/240B6D2A-AE1D-FB4E-8A0C-8D9E9D0A220B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/4B15447E-0A5F-0147-ABFF-8C54B065C51C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M1750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/62F89841-ADB3-7741-B111-6712DD694E58.root"
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