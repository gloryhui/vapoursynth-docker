FROM alpine

ENV WORK_PATH='/opt'
WORKDIR ${WORK_PATH}
VOLUME [${WORK_PATH}]

# Common Env
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    apk update && apk upgrade && \
    apk --no-cache add \
        build-base unzip gcc g++ cmake curl linux-headers bash \
        git nasm yasm libtool pkgconfig autoconf automake coreutils python3-dev \
        # lcms2-dev libavc1394-dev libc-dev jasper-dev \
        fftw-dev libpng-dev libsndfile-dev xvidcore-dev libbluray-dev \
        zlib-dev opencl-icd-loader-dev opencl-headers \
        boost-filesystem boost-system && \
    pip3 install cython && \
    sed -i 's/ash/bash/g' /etc/passwd && \
    echo "export PYTHONPATH=/usr/local/lib/python3.6/site-packages" >> /etc/profile

ENTRYPOINT ["/bin/bash", "-l"]
# zimg
RUN git clone https://github.com/sekrit-twc/zimg.git && \
    cd zimg && \
    ./autogen.sh && bash -c ./configure && \
    make -j$(nproc) && make install && \
    cd .. && rm -rf zimg

# Vapoursynth
RUN git clone https://github.com/vapoursynth/vapoursynth.git && \
    cd vapoursynth && \
    ./autogen.sh && bash -c ./configure && \
    make -j$(nproc) && make install && \
    cd .. && rm -rf vapoursynth

# Plugins  
RUN git clone https://github.com/darealshinji/vapoursynth-plugins.git && \
    cd vapoursynth-plugins && \
    ./autogen.sh && bash -c ./configure && \
    make -j$(nproc) && make install && \
    cd .. && rm -rf vapoursynth-plugins

# Encoder
RUN apk --no-cache add ffmpeg x264 x265