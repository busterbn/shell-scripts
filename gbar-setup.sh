#!/bin/bash

cargo install just
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

echo 'Installing pyenv.'
curl https://pyenv.run | bash

echo 'Adding pyenv to PATH and initializing it in .bashrc.'
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
echo 'export PATH="$(pyenv root)/shims:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc


echo "Run 'source ~/.bashrc' to apply the changes."
