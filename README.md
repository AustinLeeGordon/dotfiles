# dotfiles

Tools to make my life easier. Feel free to repurpose these for your own use.

## Usage

Run `regedit`, navigate to `HKEY_CURRENT_USER/Software/Microsoft/Command Processor/` and add a new string value entry named `AutoRun` with the path to `init.cmd`. 

To add startup scripts, open `Run` and type `shell:startup`, then paste a shortcut to any startup scripts.

### Requirements

- [7-Zip](https://www.7-zip.org/)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&pivots=winget)
- [Claude CLI](https://code.claude.com/docs/en/quickstart)
- [fd](https://github.com/sharkdp/fd) - Add `fd.exe` to `lib/fd/`
- [Git](https://git-scm.com/downloads)
- [GitHub CLI](https://cli.github.com/)
- [Google Chrome](https://www.google.com/chrome/)
- [Hyper](https://hyper.is/#installation)
- [ngrok](https://dashboard.ngrok.com/get-started/setup) - Add `ngrok.exe` to `lib/ngrok/`
- [nodetouch](https://github.com/isaacs/node-touch)
- [Node.js](https://nodejs.org/en/)
- [Notepad++](https://notepad-plus-plus.org/)
- [ODBC Driver 18 for SQL Server](https://learn.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-ver17)
- [VS Code](https://code.visualstudio.com/)

#### Other Requirements

- [Victor Mono Font](https://rubjo.github.io/victor-mono/)

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

- [@sanity/cli](https://github.com/sanity-io/sanity)
- [clipboard-cli](https://github.com/sindresorhus/clipboard-cli)
- [empty-trash-cli](https://github.com/sindresorhus/empty-trash-cli)
- [kill-port](https://github.com/tiaanduplessis/kill-port)
- [nodetouch](https://github.com/isaacs/node-touch)
- [open-cli](https://github.com/sindresorhus/open-cli)
- [public-ip-cli](https://github.com/sindresorhus/public-ip-cli)
- [serve](https://github.com/zeit/serve)
- [serverless](https://github.com/serverless/serverless)
- [trash-cli](https://github.com/sindresorhus/trash-cli)
- [yarn](https://yarnpkg.com/)
