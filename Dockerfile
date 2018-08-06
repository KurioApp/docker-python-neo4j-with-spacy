FROM asia.gcr.io/kurio-dev/python-neo4j

RUN pip install -U pipenv \
  && export PATH=$(realpath ~)/.local/bin:$PATH \
  && pip install \
    Cython==0.28.4 \
    cymem==1.31.2 \
    preshed==1.0.1 \
    thinc==6.10.3 \
    murmurhash==0.28.0 \
    ujson==1.35 \
    regex==2017.4.5 \
  && pip install git+https://github.com/KurioApp/spaCy.git@5fac422b79a8adab9c568b17e068077648321f00#egg=spacy
