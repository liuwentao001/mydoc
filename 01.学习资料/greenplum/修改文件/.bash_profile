# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

source /usr/local/greenplum-db/greenplum_path.sh 
export MASTER_DATA_DIRECTORY=/data/master/gpseg-1
