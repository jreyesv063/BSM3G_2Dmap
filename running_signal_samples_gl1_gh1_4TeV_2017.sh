# M=4TeV samples
# https://cmsweb.cern.ch/das/request?instance=prod/global&input=file+dataset%3D%2FZprime_NonUniversalSSM_M4000_gl6p0_gh6p0_TuneCP5_13TeV-madgraph-pythia8%2FRunIIFall17NanoAODv7-PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1%2FNANOAODSIM


#!/bin/bash

# Configuración de la ruta base y el archivo
base_url="root://cmsxrootd.fnal.gov/"  # Servidor XRootD de FNAL (puedes cambiarlo)
base_path="/store/mc/RunIIFall17NanoAODv7/Zprime_NonUniversalSSM_M4000_gl6p0_gh6p0_TuneCP5_13TeV-madgraph-pythia8/NANOAODSIM/PU2017_12Apr2018_Nano02Apr2020_102X_mc2017_realistic_v8-v1/00000/"
file_name="2788AD85-11A8-314D-9D44-BA3EAD4C5606.root"

# Nombre del archivo de salida
output_file="gl6p0_gh6p0_output.root"

# Verificar si el ejecutable Analyzer existe
if [ ! -f ./Analyzer ]; then
  echo "Error: El ejecutable 'Analyzer' no se encuentra en el directorio actual."
  exit 1
fi

# Construir la URL completa del archivo
file_url="${base_url}${base_path}${file_name}"

# Construir el comando para ejecutar Analyzer
command="./Analyzer -in ${file_url} -out ${output_file}"

# Ejecutar el comando
echo "Ejecutando: ${command}"
if ${command}; then
  echo "Comando ejecutado con éxito: ${output_file}"
else
  echo "Error al ejecutar el comando: ${command}"
  exit 1
fi

echo "Proceso completado."


