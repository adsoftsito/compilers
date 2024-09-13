FROM gcc:9.2
COPY . /DockerWorld
WORKDIR /DockerWorld/
RUN apt-get update
RUN apt-get install -y bison flex
RUN lex calc3.l
RUN yacc -y -d calc3.y
RUN gcc -c y.tab.c lex.yy.c
RUN gcc y.tab.o lex.yy.o calc3a.c
CMD ["./a.out"]
#RUN gcc -o DockerWorld dockerworld.c
#CMD ["./DockerWorld"]


