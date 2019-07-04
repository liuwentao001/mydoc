# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

source /usr/local/greenplum-db/greenplum_path.sh 
export MASTER_DATA_DIRECTORY=/data/master/gpseg-1
