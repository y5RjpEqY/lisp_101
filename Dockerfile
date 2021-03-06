FROM chanmoro/docker-roswell

RUN echo 'install clack' \
  && ros install clack \
  && ros -s clack

RUN echo 'install libs' \
  && ros -s clack \
  && ros -s ningle \
  && ros -s jonathan

COPY app.lisp .

ENTRYPOINT ["clackup","--port", "8080", "app.lisp"]
