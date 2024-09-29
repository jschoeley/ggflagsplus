Run `store_flags.R` in order to create the `data/lflags.rda` object holding the flag paths for use in `ggflagsplus`.

`store_flags.R` prepares the flags in the `emojione-flags` and the `extra-flags` folders and stores them in cairo svg format in the `cairo` folder.

- `inst/cairo`: flags in cairo svg format named with country/region code for use in `data/lflags.rda`
- `inst/emojione-flags`: round flags from the emojione project in svg format
- `inst/extra-flags`: extra flags in svg format