# modern-pku-thesis

北京大学本科生毕业论文 Typst 模板 / Typst template for undergraduate theses at Peking University (PKU).

This fork is maintained for the undergraduate thesis workflow and example materials in this repository.

## Reference Materials

- [Rendered example PDF](output/pdf/thesis-inspection.pdf)
- [PKU official undergraduate Word template](pku_official_template_2026.docx)
- [PKU official undergraduate template, Acrobat-rendered PDF](pku_official_template_2026.pdf)
- [Example cover image](images/cover.png)

## Quick Start

Clone this fork:

```bash
git clone https://github.com/MeiChern/pkuthss-typst-undergrad.git
cd pkuthss-typst-undergrad
```

Compile the bundled example thesis:

```bash
typst compile thesis.typ output/pdf/thesis-inspection.pdf --font-path fonts
```

For a clean starter project generated from the package template directory, edit `template/main.typ` and compile it from that directory:

```bash
typst compile template/main.typ --font-path fonts
```

## Example Information

The repository example in `thesis.typ` is configured with undergraduate cover information:

| Field | Example value |
| ----- | ------------- |
| 姓名 | 城小环 |
| 院系 | 城市与环境学院 |
| 专业 | 自然地理与资源环境 |
| 导师姓名 | 大地 教授 |

## Electronic Signatures

The originality declaration page supports optional electronic signatures. Example signature assets are included at:

- `template/signature-candidate.svg`
- `template/signature-supervisor.svg`

Use them in `conf(...)` like this:

```typ
candidate-signature: image("template/signature-candidate.svg", height: 1.5em),
supervisor-signature: image("template/signature-supervisor.svg", height: 1.5em),
```

If these parameters are omitted, the declaration page keeps blank signature lines.

## Fonts

The template uses the fonts bundled in `fonts/`. Compile with `--font-path fonts` unless the required fonts are already installed system-wide.

| Use | Font |
| --- | ---- |
| Chinese body | SimSun |
| Chinese headings | SimHei |
| Chinese emphasis | SimKai |
| Chinese FangSong text | FangSong |
| English body | Times New Roman |
| Code | New Computer Modern Mono |

## Build Options

```bash
# Blind review version
typst compile thesis.typ output/pdf/thesis-blind.pdf --font-path fonts --input blind=true

# Print version without blue links
typst compile thesis.typ output/pdf/thesis-print.pdf --font-path fonts --input preview=false

# Disable odd-page chapter starts
typst compile thesis.typ output/pdf/thesis-even-start.pdf --font-path fonts --input alwaysstartodd=false
```

## Documentation

The example `thesis.typ` includes the user-facing documentation chapters:

- Template configuration
- Typst basics
- Frequently asked questions
- Advanced usage

## License

MIT License
