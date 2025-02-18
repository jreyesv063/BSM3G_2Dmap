#!/bin/bash

# https://cmsweb.cern.ch/das/request?instance=prod/phys03&input=file+dataset%3D%2FZprime_tau_tau_M_5000_campaign_2017%2Ftatehort-RunIISummer20UL17_NanoAODv2-00000000000000000000000000000000%2FUSER
# Prefijo y sufijo de la ruta de los archivos
base_url="root://xrootd-vanderbilt.sites.opensciencegrid.org:1094"
base_path="///store/user/tatehort/Zprime_tau_tau_M_5000_campaign_2017/RunIISummer20UL17_NanoAODv2/240610_003156/0000/NanoAODv2_"
file_extension=".root"

# Rango de números de archivos
start=1
end=25

# Loop a través del rango de números
for i in $(seq $start $end); do
  # Construir el nombre del archivo con el número
  file="${base_path}${i}${file_extension}"
  
  # Construir el nombre del archivo de salida
  output_file="gl1_gh1_${i}.root"
  
  # Construir el comando
  command="./Analyzer -in ${base_url}${file} -out ${output_file}"
  
  # Ejecutar el comando
  echo "Ejecutando: ${command}"
  ${command}
done



# Combinar todos los archivos de salida en uno solo
#final_output="combined_output_gl1_gh1.root"
#rm ${final_output}
#hadd ${final_output} ${output_dir}/gl1_gh1_*.root

# Eliminar los archivos temporales
#rm -r gl1_gh1_*.root

#echo "Todos los archivos han sido combinados en ${final_output}"
