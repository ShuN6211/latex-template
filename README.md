# latex-template

日本語 LaTeX 文書のテンプレートと、Docker だけでビルドできる設定。
ローカルに TeX Live (MacTeX) を入れる必要はない。

## 必要なもの

- [Docker](https://www.docker.com/) (Docker Compose v2 を含む)
- [mise](https://mise.jdx.dev/) (タスクランナーとして使う。`mise tasks` で一覧)
- (任意) [Visual Studio Code](https://code.visualstudio.com/) +
  [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop) v10 以降。
  `.vscode/settings.json` で Docker モードを有効にしてあるので、拡張からのビルドと
  保存時の整形 (latexindent) もコンテナ内で行われる。ローカルに latexindent は不要

Docker イメージは [`paperist/texlive-ja`](https://hub.docker.com/r/paperist/texlive-ja)
(TeX Live フル + 日本語フォント) を使う。初回は数 GB のダウンロードがある。

## 使い方

```sh
mise run pdf                             # hello_world.tex: LuaLaTeX + luatexja (ltjsarticle)
mise run pdf hello_world2 --engine dvi   # upLaTeX + dvipdfmx (jsarticle)
mise run pdf slide --engine dvi          # beamer
mise run watch                           # 変更を監視して再ビルド
mise run clean                           # 中間ファイルと PDF を削除
mise run shell                           # コンテナ内で作業する
```

PDF は `out/` に出る。

## ファイル

| ファイル | 内容 |
|---|---|
| `hello_world.tex` | 日本語文書 (LuaLaTeX)。フォントは原ノ味 |
| `hello_world2.tex` | 日本語文書 (upLaTeX + dvipdfmx) |
| `slide.tex` | beamer スライド (upLaTeX + dvipdfmx) |
| `reference.bib` | 参考文献のサンプル (upbibtex, junsrt) |
| `.latexmkrc` | latexmk の設定。エンジンは `-pdflua` / `-pdfdvi` で切り替える |
| `compose.yaml`, `mise.toml` | Docker でのビルド (mise タスク) |
| `.vscode/settings.json` | LaTeX Workshop の設定 (Docker モード) |
