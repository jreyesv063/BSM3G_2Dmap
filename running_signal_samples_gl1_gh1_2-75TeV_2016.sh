# M=2.75TeV


#!/bin/bash

# M=2750GeV sample
# Dataset:https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsdcadisk.fnal.gov//dcache/uscmsdisk/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/0626E290-DD4E-0D41-B86D-D0B45128599E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/2BBF7E9D-C4C9-AF47-A841-7C34C6112794.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/3F98F872-D880-2543-9F72-622F793A2BF3.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/4A70C78E-00F5-A042-87C4-6FD580BCEB90.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/6213CCDF-5BF1-6648-BBE7-AABD42B722C9.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/7189D33A-2B08-B64D-AA3E-57054F533F75.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/82C42995-0A27-5446-96DC-A550BF88028D.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/8552AAD7-BE93-B345-B80C-1EF7EEA67B90.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/902B291D-6DA9-9D41-87C0-07B22FB9B440.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/9074CFB5-A9B3-F046-AB2E-13819C0CC1D9.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/A280561E-1DA2-CC4D-B2D3-3F27D9CF875C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/B0262A38-7E0D-7A4A-B656-C4E950A17F2A.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C24D3B16-0FCD-B446-8141-F51A7EA0623F.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C640658E-123B-9F40-8E3A-3F80703A0F96.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/CE9D3E44-C35D-2C4A-8E06-A965A5C7E852.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/DE310626-DCAB-AE44-991A-011E33E26F2B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/E7543AA4-FB61-8E40-A6EA-67FED1488BF2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F3F08981-9210-0E41-87AB-B2E320C4668C.root"
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
