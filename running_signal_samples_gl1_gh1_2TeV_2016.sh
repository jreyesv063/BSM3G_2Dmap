# M=2TeV



#!/bin/bash

# M=2000GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsdcadisk.fnal.gov//dcache/uscmsdisk/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/0BA42C13-5456-4345-92B4-8372475D845D.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/0FFE583E-356F-C44D-99D2-7AC45D5619D4.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/18318DE2-FC8F-4D4D-94D5-9C7A3D71AFD1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/20099A72-7070-DB4F-92AF-8BCDBAD1BD67.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/252E9D95-0782-0E4D-94CF-E415A2F2946C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/301C34A5-93A5-634C-B591-429E42694EFE.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/3DA43E38-A01B-4145-9A72-98ABA7311AB7.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/9F0B85F8-778D-3D47-A95B-95CB2EB0D0FF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/A53542FF-4D59-794A-B5B7-E30075175E1B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/CA74531E-D0BA-374C-915F-7B06E9723DD4.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/FBE7043B-9B08-8144-9FFC-C5BF8F467B58.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/4655979B-B951-D74C-AA97-D9E9241ACE19.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/E3B3C4E8-4E2E-8042-8AAC-CD51FC3DFA82.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/38D46A97-F037-8843-B5F6-BA684EDB9B2E.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/65435EF6-F73E-FD4B-90D4-31B5467FF5DA.root"
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
