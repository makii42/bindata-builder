FROM alpine
RUN apk add --no-cache --virtual .build-deps \
				git \
				musl-dev \
				go \ 
		&& go get -u github.com/go-bindata/go-bindata/... \
		&& mv $HOME/go/bin/go-bindata /bin \
		&& apk del .build-deps \
		&& rm -rf $HOME/go
