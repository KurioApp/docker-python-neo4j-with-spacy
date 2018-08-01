FROM gcr.io/kurio-dev/python-neo4j

RUN pip install -U pipenv \
  && export PATH=$(realpath ~)/.local/bin:$PATH \
  && pip install \
  	Cython==0.28.4 \
  	cymem==1.31.2 \
  	preshed==1.0.1 \
  	thinc==6.11.2 \
  	murmurhash==0.28.0 \
  	ujson==1.35 \
  	regex==2018.7.11 \
  && pip install git+https://github.com/KurioApp/spaCy.git@84d3393e776b5d8b3aa22286ce0ee1025c200ff2#egg=spacy
