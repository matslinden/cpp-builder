## cpp-builder

Build environment for c/c++ applications. Includes cmake and boost
libraries.

Can be injected as build tool in CI / Jenkins or used locally from
command line.


### Usage

#### Building an application

Run the build command (eg cmake, gcc or g++) with its options and
targets as command to the container, for example:

    docker run -t --rm -u "$(id -u):$(id -g)" --mount type=bind,source="$PWD",destination=/myapp -w /myapp matslinden/cpp-builder <command>

Example of `<command>` for a cmake build:

    sh -c "mkdir -p dockerbuilt && cd dockerbuilt && cmake .. && make"


#### Running an application

If dynamic linking to libraries in the image is used, it is easiest to
run the built application in the container too. Then, as `<command>`,
just provide the path to the executable.


### License

The files in the docker context (the github repo) are licensed
according to its LICENSE file.

As with all Docker images, these likely also contain other software
which may be under other licenses (such as Bash, etc from the base
distribution, along with any direct or indirect dependencies of the
primary software being contained).

As for any pre-built image usage, it is the image user's
responsibility to ensure that any use of this image complies with any
relevant licenses for all software contained within.
