docker run -it --rm -v /data/video:/opt/videos anikn512/vapoursynth /bin/bash

--cpuset-cpus="0-20"

--no-cache
docker run --rm  -i -t -v /Users/glory/Documents/huis/git/vapoursynth-docker/video:/opt --hostname vapoursynth gloryhuis/vapoursynth-docker:v1

docker run --rm  -i -t --cpuset-cpus="0-19" -v /data/video:/opt --hostname vapoursynth gloryhuis/vapoursynth-docker:v1

docker run --rm  -i -t  --hostname vapoursynth gloryhuis/vapoursynth-docker:v2


docker run --rm --cpuset-cpus="0-19"  -i -t -v /data/video:/opt --hostname vapoursynth gloryhuis/vapoursynth-docker:v3

docker run --rm --cpuset-cpus="0-19"  -i -t -v /data/video/The.Capture.S01/mkv:/opt --hostname vapoursynth gloryhuis/vapoursynth-docker:v3

docker run --rm --cpuset-cpus="20-39"  -i -t -v /data/video/The.Capture.S01/mkv:/opt --hostname vapoursynth gloryhuis/vapoursynth-docker:v3

docker run --name capture1-3 --cpuset-cpus="0-19"  -v /data/video/The.Capture.S01/mkv:/opt -itd gloryhuis/vapoursynth-docker:v3
docker run --name capture4-6 --cpuset-cpus="20-39"  -v /data/video/The.Capture.S01/mkv:/opt -itd gloryhuis/vapoursynth-docker:v3

docker run --name maocat --cpuset-cpus="0-19"  -v /data/video/maocat:/opt -itd gloryhuis/vapoursynth-docker:v3


cp CSMOD.py /usr/local/share/vsscripts/CSMOD.py



vspipe --y4m "aaa.vpy" - | x265_10bit --y4m  --crf 21   --preset slow  --no-sao --strong-intra-smoothing   --no-open-gop --no-rect --no-amp  --ctu 32 --weightb --qpmax 28  --limit-tu=4 --aq-mode 3 --aq-strength 0.8 --min-keyint 1 --merange 44  --keyint 600 --colorprim bt709  --qcomp 0.65 --range limited --pools 20 --vbv-bufsize 27000 --vbv-maxrate 27000 --psy-rd 3 --psy-rdoq 2 --bframes 6 --rdoq-level 2 --weightb --rd 4   -o  "aaa.h265" -

docker build --cpuset-cpus="0-3" --no-cache -t gloryhuis/vapoursynth-docker:v1 .

docker build --cpuset-cpus="0-39" --no-cache -t gloryhuis/vapoursynth-docker:v2 .


docker build --no-cache -t gloryhuis/vapoursynth-docker:v1 .

docker build  --no-cache -t gloryhuis/vapoursynth-docker:v1 .



ffmpeg -i /data/video_1.mp4 -f image2  -vf fps=fps=1/24 -qscale:v 2 mp4-%05d.jpeg


Options
Name, shorthand	Default	Description
--add-host		Add a custom host-to-IP mapping (host:ip)
--build-arg		Set build-time variables
--cache-from		Images to consider as cache sources
--cgroup-parent		Optional parent cgroup for the container
--compress		Compress the build context using gzip
--cpu-period		Limit the CPU CFS (Completely Fair Scheduler) period
--cpu-quota		Limit the CPU CFS (Completely Fair Scheduler) quota
--cpu-shares , -c		CPU shares (relative weight)
--cpuset-cpus		CPUs in which to allow execution (0-3, 0,1)
--cpuset-mems		MEMs in which to allow execution (0-3, 0,1)
--disable-content-trust	true	Skip image verifications
--file , -f		Name of the Dockerfile (Default is ‘PATH/Dockerfile’)
--force-rm		Always remove intermediate containers
--iidfile		Write the image ID to the file
--isolation		Container isolation technology
--label		Set metadata for an image
--memory , -m		Memory limit
--memory-swap		Swap limit equal to memory plus swap: ‘-1’ to enable unlimited swap
--network		API 1.25+
Set the networking mode for the RUN instructions during build
--no-cache		Do not use cache when building the image
--output , -o		API 1.40+
Output destination (format: type=local,dest=path)
--platform		experimental (daemon)API 1.32+
Set platform if server is multi-platform capable
--progress	auto	Set type of progress output (auto, plain, tty). Use plain to show container output
--pull		Always attempt to pull a newer version of the image
--quiet , -q		Suppress the build output and print image ID on success
--rm	true	Remove intermediate containers after a successful build
--secret		API 1.39+
Secret file to expose to the build (only if BuildKit enabled): id=mysecret,src=/local/secret
--security-opt		Security options
--shm-size		Size of /dev/shm
--squash		experimental (daemon)API 1.25+
Squash newly built layers into a single new layer
--ssh		API 1.39+
SSH agent socket or keys to expose to the build (only if BuildKit enabled) (format: default|[=|[,]])
--stream		experimental (daemon)API 1.31+
Stream attaches to server to negotiate build context
--tag , -t		Name and optionally a tag in the ‘name:tag’ format
--target		Set the target build stage to build.
--ulimit		Ulimit options