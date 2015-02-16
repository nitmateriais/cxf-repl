EXPLODED_WAR = target/cxf-repl-1.0-SNAPSHOT

clean:
	mvn clean

all: $(EXPLODED_WAR)

$(EXPLODED_WAR):
	mvn compile war:exploded

repl: $(EXPLODED_WAR)
	CLASSPATH="$$CLASSPATH:$(EXPLODED_WAR)/WEB-INF/lib:$(EXPLODED_WAR)/WEB-INF/classes" ; \
	exec java -Djavax.net.ssl.trustStore=cert/cacerts org.python.util.jython
