FROM gitpod/workspace-full

RUN git clone "https://github.com/emscripten-core/emsdk.git" $HOME/.emsdk
RUN cd $HOME/.emsdk \
    && ./emsdk install latest \
    && ./emsdk activate latest \
    && bash -c "source $HOME/.emsdk/emsdk_env.sh"

RUN printf "\nsource $HOME/.emsdk/emsdk_env.sh\nclear\n" >> ~/.bashrc