alias python='python3'
alias pip='pip3'
alias ipython='ipython3'

## 1. Python virtual environment
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

activate_pyenv_3.6.7(){
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
	source ~/.pyenv/versions/pyenv_3.6.7/bin/activate
}

activate_default_pyenv(){
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
	source ~/.pyenv/versions/default_env/bin/activate
}

pip3_update_all(){
	pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
}

export AIRFLOW_HOME=~/airflow

PATH="/Users/mbranbilla/Library/Python/3.7/bin:${PATH}"
export PATH

activate_default_pyenv

## 2. Set evironment variable to expand horizontal view in psql
export PAGER="/usr/bin/less -S"

## 3. Spark
export SPARK_HOME=/opt/spark
export PATH=$SPARK_HOME/bin:$PATH

## 4. RStudio
function rstud {
	source ~/.bash_profile
	rstudio
}
