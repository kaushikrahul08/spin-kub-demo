FROM golang

ADD . /go/src/github.com/kaushikrahul08/spin-kub-demo

RUN go install github.com/kaushikrahul08/spin-kub-demo

ADD ./content /content

ENTRYPOINT /go/bin/spin-kub-demo
