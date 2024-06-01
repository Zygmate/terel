
# Welcome to the frontend README
In the next few sections I will go through the pricess of getting started and setup the environment both for development purposes as well as production.
If you just need the binaries you can skip to the "Binaries" section.

## Prerequisites

- [Tauri](https://tauri.app/v1/guides/getting-started/prerequisites)(install the 2.0.0 beta version!)
- [Rust](https://www.rust-lang.org/tools/install)
- [Node](https://nodejs.org/en) 20.8.0
- [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable) 1.22.22

## Setting up the environment

Once you have all the prerequisites installed you will just need to install the modules via yarn:

`yarn`

After the installation process is complete you may launch the application in development mode with:

`yarn tauri dev`

Or you can just build the current application with:

`yarn tauri build`

If you build the application this way all the binaries will be located at src-tauri/target/release and src-tauri/target/release/bundle to get all the executables.

WARNING: the first (and only the first) time you launch the app wither in dev mode or in build mode it will require a bit of time. Every new launch after that is going to be super fast.


## Binaries

If you just want the executables to the latest release you can get them from src-taur/target/release and src-tauri/target/release/bundle.
Releases are done periodically and are considered up to date.
