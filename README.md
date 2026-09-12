# adv550

This repository contains port files and source modifications for the **550-point Platt version of Colossal Cave Adventure** (originally written in Fortran and A-code). 

It includes both an **OpenBSD port** infrastructure setup and a complete **Multics port** dataset.

Dave Platt wrote this version of Adventure for Honeywell's CP-6, with the original database
"munger" and game engine in PL6; this version is in Fortran 77 and there's another one out
there in C.

---

## Directory Structure

```text
adv550/
├── Makefile                # OpenBSD port Makefile
├── distinfo                # OpenBSD port checksums
├── README.md               # This file
├── patches/                # OpenBSD port unified diff patches
├── pkg/                    # OpenBSD package packing list (PLIST) and DESCR
└── Multics/                # Standalone files for running on Multics
    ├── README.2026.Lippard # Notes on the Multics port and execution
    ├── README.2003.Arnautov# Upstream historical notes
    ├── ADVENTURE.ACODE     # Game text and logic database
    ├── exec.f              # Game execution source
    ├── exec.i              # Game execution include file
    ├── munge.f             # Database compiler source
    └── munge.i             # Database compiler include file
