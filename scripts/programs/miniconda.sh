#!/usr/bin/env sh

echo "🚩🚩🚩 Installing Python/Miniconda3"

PYTHON_VERSION=39
CONDA_VERSION=4.12.0
CONDA_PYTHON_VERSION="$PYTHON_VERSION"_"$CONDAVERSION"
FILE=Miniconda3-py"$CONDA_PYTHON_VERSION"-Linux-x86_64.sh
cd /tmp
if [ -f "$FILE" ]; then
    echo "$FILE already exists."
else 
    wget https://repo.anaconda.com/miniconda/"$FILE"
fi

bash "$FILE" -b -p $HOME/miniconda3

# create environment and install packages
source $HOME/miniconda3/bin/activate

conda create --yes --name=py38 python=3.8
conda activate py38

pip install --no-input numpy pandas scikit-learn matplotlib seaborn jupyter python-dotenv scipy joblib statsmodels altair streamlit