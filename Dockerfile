FROM jfloff/alpine-python:2.7-slim
COPY urbit .
COPY herb .
COPY start.sh .
RUN mkdir urbit-data
RUN chmod +x /start.sh
RUN /entrypoint.sh \
    -p requests \
    -p argparse \
&& echo
EXPOSE 80
CMD ["/start.sh"]