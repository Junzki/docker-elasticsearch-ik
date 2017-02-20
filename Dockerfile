FROM elasticsearch:5.1.1

MAINTAINER andrew_junzki

COPY elasticsearch-analysis-ik-5.1.1.zip /tmp

RUN mkdir -p /usr/share/elasticsearch/plugins/ik/

RUN unzip /tmp/elasticsearch-analysis-ik-5.1.1.zip -d /usr/share/elasticsearch/plugins/ik/

RUN rm /tmp/elasticsearch-analysis-ik-5.1.1.zip

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
