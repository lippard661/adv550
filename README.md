# adv550

This repository contains port files and source modifications for the **550-point Platt version of Colossal Cave Adventure** (originally written in Fortran and A-code). 

It includes both an **OpenBSD port** infrastructure setup and a complete **Multics port** dataset.

Dave Platt wrote this version of Adventure for Honeywell's CP-6, with the original database
"munger" and game engine in PL6; this version is in Fortran 77 and there's another one out
there in C.  It can also be played in the web browser at: https://quuxplusone.github.io/Advent/index-550.html

This is one of the many text Adventure variants that can be found at:

https://github.com/Quuxplusone/Advent

which is where the OpenBSD port pulls the source code and database from.

BSD license applies to my contributions to the content, Dave Platt retains copright
to his game and code.

Signing key for OpenBSD package can be verified with the signify public key
https://www.discord.org/lippard/software/discord.org-2026-pkg.pub

---

## Directory Structure

```text
adv550/
├── Makefile                  # OpenBSD port Makefile
├── distinfo                  # OpenBSD port checksums
├── README.md                 # This file
├── patches/                  # OpenBSD port unified diff patches
├── pkg/                      # OpenBSD package packing list (PLIST) and DESCR
├── adv550-20190711.tgz       # Legion of Dynamic Discord signed OpenBSD package
└── Multics/                  # Standalone files for running on Multics
    ├── README.2026.Lippard   # Notes on the Multics port and execution
    ├── README.2003.Arnautov  # Upstream historical notes
    ├── ADVENTURE.ACODE.diff  # Game text and logic database
    ├── exec.f.diff           # Game execution source
    ├── exec.i.diff           # Game execution include file
    └── munge.f.diff          # Database compiler source
