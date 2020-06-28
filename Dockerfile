FROM tomcat:8-jre8-alpine
COPY WebContent/Config.properties /tmpl/Config.properties.tmpl
COPY docker-entrypoint.sh /
RUN chmod 500 /docker-entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]
