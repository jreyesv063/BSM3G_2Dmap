# M=0.75TeV



#!/bin/bash

# M=750GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/09B750B9-B821-CD41-B038-6A7D7522D070.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/256461BF-F49F-C648-A77B-B2E1B5DF702E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/5AEA9550-48B8-FB41-8490-33C61402FBAE.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/82704F6C-1CCA-EF4F-91B8-2BABD0F3FBB2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/8745BBAD-48B7-C14C-BF53-608E60D963EE.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/8D92B8A9-1840-6745-B3FB-4EDC24CFD647.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/9FD413C6-BDCA-024C-BF9D-955F3AF5EAD0.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C4EDEC90-9CDC-4843-B0B8-8C209CF4B864.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C5A6A8D3-5467-8145-A6D9-DD6269BB40F4.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/EB3884A6-30E2-404C-ABA3-EBF0E309EE04.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F63654C4-E603-E247-B3CD-FD8B58C1ACB5.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F6BB6C43-B824-1A4B-B0DF-CD57327597CA.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/FA68567F-0620-1641-91D0-0328980707DD.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/FE66B5CA-2D18-F64D-9C13-383F38523E4B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/4B3969B0-CAB1-F34D-A682-D94BBE19F38E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/B6873152-F646-074E-90B4-9720BCD570B9.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/E2A66903-AD46-A945-8246-CC3D02F6F4F9.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/66663AB6-F09D-7343-92BD-A2D69EB591B2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/78F76A2E-4A93-1F45-8BFC-07E0EF033CD8.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/FE1A12C5-1DAF-8144-B29D-4C1D4FB005F6.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/0291D714-DCD6-D248-A2D0-8B9DCF8E0E80.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M750_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/DED43690-DF1A-8444-8899-609C7C46F8F9.root"
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