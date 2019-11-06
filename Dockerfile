FROM gapsystem/gap-docker

MAINTAINER Collin Bleak <cb211@st-andrews.ac.uk>

COPY --chown=1000:1000 . $HOME/Binder-Demo

RUN sudo pip3 install ipywidgets RISE

RUN jupyter-nbextension install rise --user --py

RUN jupyter-nbextension enable rise --user --py

USER gap

WORKDIR $HOME/Binder-Demo
