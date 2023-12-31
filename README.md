# latex-template

This repo provide my latex document template files and settings working on
[Visual Studio Code](https://code.visualstudio.com/).

## Requires

- [Visual Studio Code](https://code.visualstudio.com/)
- [TeXShop](https://texwiki.texjp.org/?TeXShop)
  - In case of OSX, you can get via homebrew. Note that following command takes long time.

  ```shell
      brew install --cask mactex-no-gui
      sudo tlmgr update --self --all
  ```

  See also <https://texwiki.texjp.org/?TeX%20Live%2FMac#texlive-install-pacman>

- [LaTexWorkShop](https://github.com/James-Yu/LaTeX-Workshop)
- [latexindent](https://formulae.brew.sh/formula/latexindent)
  - I recommend to install latexindent via homebrew because the one provided by mactex needs specific version of
    perl. Resolving the dependency by oneself is a little tedious.

  ```shell
  brew install latexindent
  ```

  - The path to the above `latexindent` installed via homebrew is configured in settings.json.

```json
"latex-workshop.latexindent.path": "/opt/homebrew/bin/latexindent",
```
