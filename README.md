# Bootstrap [LLVM](https://llvm.org/)

Bootstrap a [LLVM](https://llvm.org/) environment for the current project.

Goal: "Deterministic"ish Windows Builds/Environment.

# Acquisition

1. ```git clone https://github.com/jed-frey/bootstrap_LLVM.git```
1. ```git submodule add https://github.com/jed-frey/bootstrap_LLVM.git```
1. [Download .zip](https://github.com/jed-frey/bootstrap_LLVM/archive/master.zip)
    - Extract .zip.

# Installation

1. Run [```bootstrap_LLVM.bat```](bootstrap_LLVM.bat).
    - Double Click it.
    - Type "```bootstrap_LLVM.bat```" into ```cmd.exe```

# Usage.

Add:

    call %~dp0\bootstrap_LLVM\env_LLVM.bat

To your ```env_[proj_name].bat``` folder.


tldr:

    git submodule add https://github.com/jed-frey/bootstrap_LLVM.git
    bootstrap_LLVM\bootstrap_LLVM.bat
    echo call %~dp0\bootstrap_LLVM\env_LLVM.bat >> env_.bat