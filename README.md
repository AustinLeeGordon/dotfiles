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
- [VS Code](https://code.visualstudio.com/)

### Sync Settings

Sync an individual setup using the commands below or step through all with `dotsync`.

#### Git Setup

Run `gitsync.cmd` in the `utils` directory to sync settings.

`git config --global commit.message %userprofile%\.gitmessage`

#### Hyper Setup

Run `hypersync.cmd` in the `utils` directory to sync settings.

#### VS Code Setup

Run `vscodesync.cmd` in the `utils` directory to sync settings and install extensions.

#### NPM Setup

Run `npmsync.cmd` in the `utils` directory to install global packages.

Default Globals:

- [clipboard-cli](https://github.com/sindresorhus/clipboard-cli)
- [empty-trash-cli](https://github.com/sindresorhus/empty-trash-cli)
- [nodetouch](https://github.com/isaacs/node-touch)
- [public-ip-cli](https://github.com/sindresorhus/public-ip-cli)
- [serve](https://github.com/zeit/serve)
- [trash-cli](https://github.com/sindresorhus/trash-cli)

Work Globals:

- [file-ranger](https://github.com/hutsoninc/file-ranger)
- [gatsby-cli](https://github.com/gatsbyjs/gatsby/tree/master/packages/gatsby-cli)
- [generator-hutson](https://github.com/hutsoninc/generator-hutson)

## License

MIT © [Austin Gordon](https://www.austinleegordon.com)