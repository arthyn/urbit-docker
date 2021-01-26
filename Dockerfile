FROM jfloff/alpine-python:2.7-slim
COPY herb .
COPY start.sh .
RUN wget -O linux64.tgz https://urbit.org/install/linux64/latest
RUN tar zxvf ./linux64.tgz --strip=1
RUN rm linux64.tgz
RUN mkdir urbit-data
RUN chmod +x /start.sh
RUN /entrypoint.sh \
    -p requests \
    -p argparse \
&& echo
EXPOSE 80
CMD ["/start.sh"]