# use a node base image

FROM node:7-onbuild

LABEL mainter "sureshpawar86@gmail.com"

HEALTCHECK --interval=5s \ 
           --timeout=5s \
           CMD curl -f http://127.0.0.1:8000 || exit 1 

EXPOSE 8000
