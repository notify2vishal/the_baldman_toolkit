#!/bin/bash
############################################################
#Script Name: cache_invalidator.sh
#Info: 
#This script can be use as standalone or can be integrated in Adobe Dispatcher InvalidateHandler
#How to Use:
#sh cache_invalidator.sh <Activation path>
############################################################
cd <Path to Run the Script>
path=$1
cache_path01="*/content/tetrapak/publicweb/*"
cache_path02="*/content/online-help/*"

if [ "$1" == "" ]; then
	  echo "Start"
	    exit
    elif [[ $path == $cache_path01 ]]; then
	      export dir='/var/www/html/<cache_directory_path>'
      elif [[ "$path" == $cache_path02 ]]; then
	        export dir='/var/www/html/<cache_directory_path>'
fi

echo $dir

export cmd="rm -rvf *"
echo '*******Deleting files in' $dir
cd $dir;
eval $cmd;
