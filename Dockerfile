FROM amazonlinux
RUN yum install tar gzip gcc -y
RUN curl https://flatassembler.net/fasm-1.73.27.tgz --output fasm.tar.gz
RUN tar zxvf fasm.tar.gz
COPY . .
RUN chmod +x run.sh
RUN fasm/fasm 2.asm && ld 2.o -m elf_x86_64
CMD ./run.sh

