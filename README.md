# WinMerge Manual

This repository contains the DocBook sources, translations, and scripts for building the WinMerge user manual.

## Build

Run `DownloadDeps.cmd` once to download the HTML Help tools, then run `BuildManual.cmd` to build all supported HTML Help files. Run `build_html_all.bat` to generate the web manuals. Outputs are written to `Build\Manual` when used as the `Docs\Manual` submodule of WinMerge, or to this repository's `Build\Manual` directory when used standalone.

The manual tools package is ignored by Git and can be downloaded again at any time. Translation PO files are in `Translations\Manual`.

## Update translations

Install MSYS2 with `po4a` and `diffutils`, then run `update_translations.bat`.