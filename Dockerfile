FROM python:3.8.2-slim

ENV APP_HOME /app
WORKDIR ${APP_HOME}

COPY . ./

# RUN apt-get update && apt-get install -y --no-install-recommends \
#     texlive-fonts-recommended \
#     texlive-generic-recommended \
#     texlive-latex-base \
#     texlive-latex-extra \
#     texlive-latex-recommended \
#     texlive-publishers \
#     texlive-science \
#     texlive-xetex \
#     texlive-lang-chinese \
#     tree \
#     && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*

RUN pip install pip pipenv --upgrade

# RUN pip install numpy scipy pandas seaborn matplotlib scikit-learn jupyterlab nodejs notebook ptvsd xeus-python==0.9.0 nbgitpuller jupyterlab-git voila rise nbdime yfinance schedule panel hvplot get-all-tickers pyDiffMap arch pandas_ta xgboost

RUN pip install jupyterlab 

RUN pipenv install --skip-lock --system --dev

# CMD ["./scripts/postBuild.sh"]
CMD ["./scripts/entrypoint.sh"]
