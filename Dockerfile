FROM ubuntu AS build

RUN apt update -y
RUN apt install git cmake -y
RUN git clone https://github.com/google/brotli.git
RUN mkdir brotli/out 
WORKDIR /brotli/out
RUN cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=./installed ..
RUN cmake --build . --config Release --target install

FROM ubuntu AS compress
COPY --from=build /brotli/out/brotli .
COPY /brotli_in_place.sh .
COPY ./build ./build
RUN ./brotli_in_place.sh
