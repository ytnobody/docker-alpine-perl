FROM alpine:3.3
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apk update && apk add gcc g++ make git patch perl perl-dev curl wget
RUN curl -L http://xrl.us/cpanm > /bin/cpanm && chmod +x /bin/cpanm
RUN cpanm App::cpm

WORKDIR /usr
RUN cpm install Plack

ENV PERL5LIB=/usr/local/lib/perl5
ENV PATH=/usr/local/bin:$PATH

WORKDIR /
