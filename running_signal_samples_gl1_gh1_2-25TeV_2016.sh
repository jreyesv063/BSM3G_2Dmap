# M=2.25 TeV

#!/bin/bash

# M=2250GeV sample
# Dataset:  https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM
# XRootD server
base_url="root://cmsxrootd.fnal.gov/"

# List of files
files=(
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/00BEABD4-CBA8-4F42-B0E2-14E52737B309.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/0F1CA5B0-9E4E-2F4D-8A67-7143690D7767.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/11646E8B-5F2C-AA4C-AD2B-12549FCB40C0.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/17013940-B027-5D41-8A2E-1C6A9A772E0D.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/24DE08AB-CDC2-8241-8591-126CAEB98960.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/29775F40-686B-3643-82C2-D0A1766E01DF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/2E188D65-4B0C-9A48-9569-C425C58B152A.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/3CAA7525-AA2C-8845-AA54-7FBD06146FB1.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/3F73D39F-D095-8A49-B15D-20BD15763C13.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/501D012B-106E-2E40-9D62-11F60E44F367.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/5904E988-4826-1245-934F-D1DC75F557BA.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/59EA772F-AC92-7743-8E52-7DA345EEBF42.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/5B95E1BE-D6FF-FD4D-9029-F62C34C5814C.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/6D3DF27E-0EAD-984D-AD19-F46393421FFE.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/70A17A57-FD16-A841-A187-A109972A59E9.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/A506A2C9-8A9C-D84A-A622-4DC9AE8728A7.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/A60F087E-6679-4D4F-8A06-D18A29469AA9.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/ACB086D1-AE55-D04F-A15A-B9B0B296F156.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/B0090094-1316-7443-9A31-2297E8419A95.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/B4BE9506-95D1-8B43-B30B-31763D256AD6.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/C19C3342-2794-E64B-8F49-F7786D87D494.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/D0673B32-0A96-5D46-AE0A-55815368E318.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/DB9FFC1F-5F0B-504A-9F18-BF60099C0F16.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/DC0FC399-0084-5E40-B942-9A57EC6AA057.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/E6603E96-ED76-D449-A034-EFF6654ADB0B.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/EC6CEBDA-A23E-A649-BB93-C80280635DBF.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/F7B2F32D-5BF4-D044-BDFD-DC251D362A4A.root"
    "store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M2250_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/BE8AB3B8-8AC9-9640-B853-F27ED09FA157.root"
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