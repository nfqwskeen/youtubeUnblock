FROM waujito/entware_builder
RUN git clone --depth 1 https://github.com/Entware/Entware.git
WORKDIR /home/me/Entware
RUN make package/symlinks
RUN cp -v configs/mips-3.4.config .config
RUN make -j$(nproc) toolchain/install
