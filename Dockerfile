FROM golang:alpine

# Add useful packages
RUN apk add vim \
		curl \
		git \
		gcc \
		libc-dev \
		docker \
		fish
		
# Add vim config and plugins
COPY .vimrc /root/.vimrc

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
	git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go && \
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.32.2
	
# Add oh-my-fish
RUN curl -L https://get.oh-my.fish | fish

EXPOSE 8080

ENTRYPOINT /usr/bin/fish
