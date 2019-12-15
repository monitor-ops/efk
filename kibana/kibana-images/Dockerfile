FROM docker.elastic.co/kibana/kibana-oss:7.2.0
ADD logtrail-7.2.0-0.1.31.zip /tmp/ 
#RUN /usr/share/kibana/bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.29/logtrail-6.4.0-0.1.29.zip
RUN /usr/share/kibana/bin/kibana-plugin install file:///tmp/logtrail-7.2.0-0.1.31.zip
COPY logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
