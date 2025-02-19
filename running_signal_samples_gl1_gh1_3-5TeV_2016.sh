# M= 3.5TeV


#!/bin/bash

# M=3500GeV sample
# Dataset:https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsdcadisk.fnal.gov//dcache/uscmsdisk/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/564E161F-3271-4D46-BB0C-5D2CE6508C4F.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/7EA82B22-AE0A-8A43-B1CC-7E8370935795.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/A3A0A397-E379-6C4B-A92B-AD0ABC21F8A6.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/B8C6B20A-7407-4645-BDD2-B8C3579A49F1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/2EFF256D-9F7F-424A-9A98-A12A423FDBDF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/3BF93D12-5ACF-AF4B-80C9-87032D42B31B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/54F6DF48-4D82-5E41-8FB0-6FA99247465E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/229E0F5F-8540-744A-8575-6D2FC52BDED1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/94193AEA-2808-E145-B12B-CD2B0D19DB60.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/BD19353B-B361-0446-84EE-88B94060179D.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/7D2514EF-9470-BB4E-BF02-AC41F9CBAE7C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/99688600-3657-0441-AF9B-81C2D3124EE6.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/1496FA92-4D6F-1C41-8DF5-0E43D06A4C57.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/9AF53CA5-EE21-BA44-B889-B6EF57D487D5.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M3500_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/CD88787D-2398-5548-9029-397008C5F70A.root"
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
