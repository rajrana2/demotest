FROM tomcat:7-jre7
MAINTAINER rana

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
 

RUN curl -L https://github.com/rajrana2/demotest/DemoTest.war -o /usr/local/tomcat/webapps/DemoTest.war

CMD ["catalina.sh", "run"]
