# M=4TeV samples
# https://cmsweb.cern.ch/das/request?view=list&limit=50&instance=prod%2Fglobal&input=file+dataset%3D%2FZprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8%2FRunIISummer16NanoAODv7-PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1%2FNANOAODSIM

# Configuration of the XRootD server
base_url="root://cmsxrootd.fnal.gov/"  # XRootD server for FNAL (you can change it)

# List of files to process
files=(
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/06ED5FFB-966A-AC43-AA3B-E82E746F96E7.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/120000/AF7625DD-8BAE-7F4C-9224-9DBB7E1B02F3.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/095AFABF-35C8-014D-B225-278B6C98EFD9.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/474BA04C-B52B-EA45-A1DD-544F4220D151.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/130000/93EFCCDE-1522-304C-9B8E-AF4B523D4F21.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/270000/9DB357C5-0D14-B645-AB2D-05D47317B042.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/1665DD1A-8CBA-2144-898C-460C09D9D470.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/280000/8840E4B2-CF12-F84D-8091-2B5BF1F167EB.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/7F1E5608-67B2-A044-8E04-396EF87E81D7.root"
    "/store/mc/RunIISummer16NanoAODv7/Zprime_NonUniversalSSM_M4000_gl1p0_gh1p0_TuneCUETP8M1_13TeV-madgraph-pythia8/NANOAODSIM/PUMoriond17_Nano02Apr2020_102X_mcRun2_asymptotic_v8-v1/70000/E1F78007-ACD4-124F-87C0-B785D3059D7E.root"
)

# Check if the Analyzer executable exists
if [ ! -f ./Analyzer ]; then
  echo "Error: The 'Analyzer' executable is not found in the current directory."
  exit 1
fi

# Loop through the list of files
for file_path in "${files[@]}"; do
    # Extract the base file name (without the path)
    file_name=$(basename ${file_path})

    # Build the full URL of the file
    file_url="${base_url}${file_path}"

    # Build the output file name
    output_file="output_${file_name}"

    # Build the command to run Analyzer
    command="./Analyzer -in ${file_url} -out ${output_file}"

    # Execute the command
    echo "Executing: ${command}"
    if ${command}; then
        echo "Command executed successfully: ${output_file}"
    else
        echo "Error executing command: ${command}"
        exit 1
    fi
done

echo "Process completed."
