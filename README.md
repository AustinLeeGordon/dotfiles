# dotfiles

Tools to make my life easier. Feel free to repurpose these for your own use.

## Usage

Run `regedit` and add the path to `init.cmd` to a new string value entry under `HKEY_CURRENT_USER/Software/Microsoft/Command Processor/`.

To add startup scripts, open `Run` and type `shell:startup`, then paste a shortcut to any startup scripts.

### Requirements

- [7-Zip](https://www.7-zip.org/)
- [fd](https://github.com/sharkdp/fd) - Add `fd.exe` to `lib/fd/`
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Git](https://git-scm.com/downloads)
- [Google Chrome](https://www.google.com/chrome/)
- [Hyper](https://hyper.is/#installation)
- [Mongo](https://www.mongodb.com/download-center/enterprise) - Version 4.0.X
- [ngrok](https://ngrok.com/) - Add `ngrok.exe` to `lib/ngrok/`
- [nodetouch](https://github.com/isaacs/node-touch)
- [Node.js](https://nodejs.org/en/)
- [Notepad++](https://notepad-plus-plus.org/)

### Git Setup

Run `gitsync.cmd` in the `utils` directory to sync git settings.

`git config --global user.name "<Your Username>"`

`git config --global user.email <Your Email>`

`git config --global commit.message %userprofile%\.gitmessage`

### Hyper Setup

Run `hypersync.cmd` in the `utils` directory to sync hyper settings.

### Global npm Modules

- [nodetouch](https://github.com/isaacs/node-touch)
- [trash-cli](https://github.com/sindresorhus/trash-cli)

Work Globals:

- [file-ranger](https://github.com/hutsoninc/file-ranger)
- [generator-hutson](https://github.com/hutsoninc/generator-hutson)

## Authors

* **Austin Gordon** - *Development* - [GitHub](https://github.com/AustinLeeGordon)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details