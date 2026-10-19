# ICA 2027 Computational Methods Division — LaTeX Template

A community LaTeX template for anonymous submissions to the ICA 2027 Computational Methods (CM) Division. It includes Full Paper and Extended Abstract templates with single-column, single-spaced layouts and descriptive placeholders. The typography and page structure follow [this reference manuscript](https://arxiv.org/abs/2504.10878), with single spacing for the current CM submission format.

## Get started

1. Open `main.tex` for a Full Paper or `extended-abstract.tex` for an Extended Abstract.
2. Set `\PaperTitle` and `\PaperShortTitle`, then replace the bracketed prompts with your title, abstract, keywords, and manuscript text.
3. Adapt the section outline and replace or remove the equation, table, and figure blocks as needed.
4. Add your sources to `references.bib`, replace `reference-placeholder`, and update the citation keys in the manuscript.
5. Compile using the sequence below.

The bracketed text describes what belongs in each part of the manuscript. The bibliography uses `[Reference Author]`, `[Title of the cited work]`, and `YYYY` as placeholders so both templates can compile immediately.

## Files

| File | Purpose |
|---|---|
| `main.tex` | Full Paper template |
| `extended-abstract.tex` | Extended Abstract template |
| `ica-cm.sty` | Shared layout, headings, captions, and bibliography configuration |
| `references.bib` | Shared bibliography |
| `Makefile` | Build, word-count, and cleanup commands |
| `.github/workflows/latex.yml` | GitHub Actions build and PDF artifacts |

## Compile

Both templates use **pdfLaTeX → BibTeX → pdfLaTeX × 2**. Install `apacite`, `natbib`, `lmodern`, and the standard recommended LaTeX packages in your TeX distribution. Run these commands from the project directory.

### Full Paper

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Extended Abstract

```bash
pdflatex extended-abstract.tex
bibtex extended-abstract
pdflatex extended-abstract.tex
pdflatex extended-abstract.tex
```

### Editors

**VS Code / LaTeX Workshop:** open the chosen `.tex` file, run **LaTeX Workshop: Build with recipe**, and select **pdflatex -> bibtex -> pdflatex * 2**.

**Overleaf:** upload the project, select `main.tex` or `extended-abstract.tex` as the **Main document**, and choose **pdfLaTeX**. Overleaf detects BibTeX automatically.

### Automatic builds

With `latexmk` installed:

```bash
make full       # build main.pdf
make abstract   # build extended-abstract.pdf
make count      # estimate manuscript word counts
make clean      # remove generated files
```

You can also run `latexmk -pdf main.tex` or `latexmk -pdf extended-abstract.tex` directly.

GitHub Actions runs on pushes, pull requests, and manual **Run workflow** requests. It builds both templates in a full TeX Live environment using the same four-step sequence. Download the PDFs from the **`ica-cm-placeholder-templates`** artifact on the workflow run page. Build logs are available in **`ica-cm-build-logs`** when a build fails.

### Switching from Biber to BibTeX

Clear the previous build's auxiliary files, then run the compilation sequence:

```bash
rm -f main.aux main.bbl main.blg main.bcf main.run.xml main.out main.fdb_latexmk main.fls
rm -f extended-abstract.aux extended-abstract.bbl extended-abstract.blg \
  extended-abstract.bcf extended-abstract.run.xml extended-abstract.out \
  extended-abstract.fdb_latexmk extended-abstract.fls
```

On Overleaf, select **Recompile from scratch**. The final two pdfLaTeX passes resolve citations and cross-references.

## Layout and citations

The template uses 12-point Latin Modern type (`lmodern`), US Letter paper, 1-inch margins, and unnumbered headings. Paragraphs are left-aligned with a natural right edge and a half-inch first-line indent. Automatic word hyphenation and line breaks at word-internal hyphens are disabled.

The opening has three parts: a title page, an abstract page with the repeated title and keywords, and the body beginning on page 3. The title page has no visible page number, the abstract page has a centered footer number, and body pages display the short title and page number in the header. References begin on a new page.

Table numbers and titles appear above the table. Figure numbers and titles appear below the image, followed by the figure note. In a `figure` environment, place `\caption` and `\label` after the image.

`\ICAMakeTitle{\PaperTitle}` creates the title and abstract-page opening and sets the PDF title metadata. `\ICARunningTitle{\PaperShortTitle}` sets the running head; `\ICABeginBody` starts the body after the keywords. Author metadata is empty; enter author details in the submission system. These layout settings are in `ica-cm.sty`.

References use [`apacite`](https://ctan.org/pkg/apacite), which provides APA 6 formatting with BibTeX. Both templates select `\usepackage[bibtex]{ica-cm}` and `\bibliographystyle{apacite}`. Use `\citep{key}` for parenthetical citations, `\citet{key}` for narrative citations, and `\bibliography{references}` for the reference list.

## ICA 2027 CM submission requirements

Source: [Computational Methods Call for Papers](https://www.icahdq.org/mpage/COMPMETH_CFP), checked on 2026-10-20.

| Item | Requirement |
|---|---|
| File and layout | PDF, single column, single spacing |
| Full Paper | Up to 8,000 words, excluding tables, references, and appendices |
| Full Paper appendix | Up to 10 single-spaced pages, or an anonymous online appendix without a page limit |
| Extended Abstract | 1,000–2,000 words, excluding tables and references; up to six figures or tables |
| Citation style | APA 7 recommended; other formal styles and minor deviations are accepted |
| Anonymous review | Anonymous manuscript and PDF metadata |

For the word count, use `make count` as a starting point and apply the exclusions for your submission category. Describe research-related AI use in Methods as set out in [ICA's general submission guidelines](https://www.icahdq.org/page/conf-submission-guidelines).

## 中文说明

本模板面向 ICA 2027 Computational Methods 分会，提供 Full Paper 和 Extended Abstract 两种稿件骨架。方括号内是填写提示；按提示填写标题、摘要、关键词和正文，并在 `references.bib` 中添加文献、更新引用键。章节、公式和图表可按研究需要调整。

两份模板的字体和分页参考[这篇论文](https://arxiv.org/abs/2504.10878)，采用 Latin Modern、独立标题页、独立摘要页，正文从第 3 页开始，参考文献另起一页。正文左对齐、右侧自然留白，首行缩进半英寸，英文单词保持完整，页眉显示简短标题和页码。行距采用本届 CM 要求的单倍行距。

表格编号和标题放在表格上方；Figure 编号和图题放在图片下方，图注说明接在图题后面。

填写 `\PaperTitle` 和 `\PaperShortTitle`，分别设置完整标题和页眉短标题。编译流程为 **pdfLaTeX → BibTeX → pdfLaTeX × 2**，参考文献采用 `apacite` 的 APA 6 格式。

Full Paper 上限为 8,000 英文词，不计表格、参考文献和附录；Extended Abstract 为 1,000–2,000 英文词，不计表格和参考文献。作者信息填写在投稿系统中，稿件保持匿名。

GitHub Actions 自动构建两份 PDF，可在运行页的 **`ica-cm-placeholder-templates`** 中下载。编译失败时，日志保存在 **`ica-cm-build-logs`** 中。
