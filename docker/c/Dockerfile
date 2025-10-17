FROM gcc:9.2
COPY . /DockerWorld
WORKDIR /DockerWorld/
RUN apt-get update
RUN apt-get install -y bison flex
RUN lex hello.lex
RUN yacc -d hello.yacc
RUN ls -la
RUN gcc lex.yy.c y.tab.c
CMD ["./a.out"]
#RUN gcc -o DockerWorld dockerworld.c
#CMD ["./DockerWorld"]


