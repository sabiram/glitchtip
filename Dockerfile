# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest


WORKDIR /code


EXPOSE 8080

COPY . /code/


#RUN useradd -u 5000 app && chown app:app /code && chown app:app /code/uploads
#USER app:app

CMD ["/code/bin/start.sh"]
