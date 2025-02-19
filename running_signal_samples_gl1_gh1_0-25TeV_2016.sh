# M=0.25

#!/bin/bash

# M=250GeV sample
# Dataset: https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsdcadisk.fnal.gov//dcache/uscmsdisk/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/3DCB81FC-9544-3544-ADA9-6F5686B01600.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/4513C6D8-8A11-2F47-AB2C-C2ACC6ED38FF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/469691C8-98B3-A14D-AC6F-66241FF02AE3.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/4BC81547-5D10-7346-A184-BB9B9EBD47A2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/582021D0-F301-C74B-822D-A041D372CEE0.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/66945922-275D-7E44-B9DC-CAED14BBBB55.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/74C6EFA9-4F01-6946-829F-FB608ADB967C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/7D48A2CE-E57D-7445-8BC3-E80E35A3A477.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/8B52DE29-90E6-0540-AA95-0DAFE8C0FBF0.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/A24FD29F-4092-1246-9B8B-F65975267B0F.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/ABE3F9AB-163A-0344-A55B-90A745A63C25.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/CF013B97-F473-C641-8604-AF1A50A03DDC.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/D4E79F44-6CCE-F842-9330-BE92B5F4DF04.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/D68E97D5-67CD-F645-A7B9-B6F52CB2E274.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/E9469F9A-6AB1-4C44-9489-98CA736D46D2.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F2639A05-47FC-6349-BCDA-0564F8E0C6ED.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/97270B38-3A16-0243-925A-DD859F75B4F8.root"
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
