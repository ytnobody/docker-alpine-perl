BASE alpine:3.3
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apk update && apk add gcc make git patch perl curl wget
RUN curl -L http://xrl.us/cpanm > /bin/cpanm && chmod +x /bin/cpanm
RUN cpanm App::cpm
RUN cpm install Plack


