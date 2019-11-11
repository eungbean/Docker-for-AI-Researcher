FROM ufoym/deepo
EXPOSE 8080 6006-6015

## install VSCODE dependancies
RUN apt-get update && apt-get install -y \
	openssl \
	net-tools \
	git \
	locales \
	sudo \
	dumb-init \
	vim \
	curl \
	wget

COPY requirements.txt /tmp

WORKDIR /tmp
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

RUN apt-get install -y zsh neovim git git-lfs
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
RUN echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
RUN echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
RUN curl -sLf https://spacevim.org/install.sh | bash
RUN curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash
RUN chsh -s `which zsh`

#CleanUp
RUN ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/*

#VSCODE
WORKDIR /
RUN wget https://github.com/cdr/code-server/releases/download/2.1665-vsc1.39.2/code-server2.1665-vsc1.39.2-linux-x86_64.tar.gz
RUN tar -xvf code-server2.1665-vsc1.39.2-linux-x86_64.tar.gz
RUN mv code-server2.1665-vsc1.39.2-linux-x86_64 coder

ENV PASSWORD "0000"

WORKDIR /data
