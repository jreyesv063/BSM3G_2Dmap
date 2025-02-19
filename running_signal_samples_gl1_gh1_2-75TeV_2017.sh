# M=2.75TeV


#!/bin/bash

# M=2750GeV sample
# Dataset:  https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8%2FRunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/53CD12C7-96B2-444D-8371-BA9FB5C4F20A.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/5679A4D2-AE06-894C-AD14-4A18E3E3D10B.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/5A4E1779-1FD7-1745-8F3E-803C2F55F672.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/746AEE78-D890-B843-B039-9C500B102E4F.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/7DC452B6-C5C4-3549-9574-01322693794E.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/9CE84FFA-C443-0B4D-953F-E2980AA9774F.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/A544574E-C69F-8346-B332-2883D1A019D5.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/BC00710A-5329-0944-AA77-74857B05C1B2.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/E9650C13-A5A8-C048-890D-E56F4B6034FA.root"
    "/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M2750_gl1p0_gh1p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/110000/FD4D6C74-5253-3C4C-8C06-6FA42D42A2BC.root"
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
