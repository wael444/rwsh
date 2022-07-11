# rwsh - Roblox Wine wrapper in SHell

## running rwsh
in order to use rwsh you need to have the XDG utilities and wine.
```sh
curl -LO https://raw.githubusercontent.com/wael444/rwsh/main/rwsh
```
this will pull the `rwsh` script into the current working directory.
it is reccomended to put this in your `PATH` (eg. `~/.local/bin` or `/usr/local/bin`)

## features
+ install roblox automatically if not detected
+ easily debuggable (`-x` host shell flag & `rwsh 2>&1 > log`) and will quit if anything fails (`-e` host shell flag)
+ install DXVK
+ interchangable specified wine location via `WINEPATH` variable passed to `rwsh`

## note
`rwsh` can only launch the Roblox Player. the only renderer supported is [DXVK](https://github.com/doitsujin/dxvk) and is installed via the `--install_dxvk` flag.

`rwsh` is a complete rework of (old) `irli` which a rewrite of [Ronix](https://gitea.com/Ronix/Ronix)

## see also
#### [Grapejuice](https://gitlab.com/brinkervii/grapejuice)
