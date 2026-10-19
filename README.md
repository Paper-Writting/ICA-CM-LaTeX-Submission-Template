# ICA 2027 Computational Methods Division -- LaTeX Submission Template

> **Unofficial, community-maintained template.** Not produced, approved, or endorsed by the International Communication Association. Requirements checked against the [ICA 2027 Computational Methods Call for Papers](https://www.icahdq.org/mpage/COMPMETH_CFP) on 2026-10-19. **The division CFP and ICA's general submission rules always take precedence over this repository.**

An anonymous, single-column, single-spaced **LaTeX template** for ICA 2027 **Computational Methods (CM)** submissions. The default is a Full Paper; an Extended Abstract sample is also supplied. It is not an ACL template and should not be reused for other ICA divisions without checking their separate requirements.

## Verified division requirements (ICA 2027)

| Item | CM requirement |
|---|---|
| Upload | **PDF** |
| Layout | **Single column and single spacing**; violations may be desk-rejected |
| Full Paper | **At most 8,000 words**, *excluding tables, references, and appendices* |
| Full Paper appendix | Up to **10 single-spaced pages**, **or** link to an **anonymous online appendix** without a page limit |
| Extended Abstract | **1,000--2,000 words**, excluding tables and references; up to **six figures or tables** |
| Style | **APA 7 recommended**, but other formal citation styles and minor deviations are allowed |
| Blind review | Remove **all authors' identifying information**, including affiliation, acknowledgments, self-identifying links, and PDF metadata |
| Other | Full Papers alone qualify for top-paper awards; cite data/software and share them where feasible |

**Deliberate template defaults, not additional ICA CM mandates:** 12-point Times-like font (`newtx`), US Letter pages, 1-inch margins, APA-inspired unnumbered headings, numbered pages, APA-style `biblatex`/`biber` citations, separate anonymous title and abstract pages, and a word-count field on the title page. The CM CFP does **not** specify a universal page limit for the full-paper body or a mandatory LaTeX class. Do not substitute another division's double-spaced/word-count rules for the CM rules.

## Files

| File | Purpose |
|---|---|
| `main.tex` | Full Paper example (default) |
| `extended-abstract.tex` | Optional Extended Abstract example |
| `ica-cm.sty` | Shared formatting and anonymized title-page macros |
| `references.bib` | `biblatex-apa` bibliography example |
| `.github/workflows/latex.yml` | Builds both PDFs and publishes them as workflow artifacts |

## Compile

**Overleaf:** import the repository or upload its ZIP; set the **Main document** to `main.tex` (or `extended-abstract.tex`), choose **pdfLaTeX**, and use Biber for the bibliography. The included LaTeX sources work without shell escape.

**Local TeX Live:** install `latexmk`, `biber`, `biblatex-apa`, `newtx`, and standard recommended LaTeX packages, then run:

```bash
make full       # creates main.pdf
make abstract   # creates extended-abstract.pdf
make count      # approximate counts; manual checking required
make clean
```

Or use `latexmk -pdf main.tex` directly. GitHub Actions makes downloadable sample PDFs without committing generated PDFs to source control.

## Before submitting (important)

1. **Replace all instructional/example content**, figures, dashes, citation placeholders, titles, and `TO BE UPDATED` fields. There are intentionally **no fabricated research findings** in these examples.
2. **Confirm the correct category** (Full Paper or Extended Abstract) and check its **exact word limit** against the division CFP. `texcount` is useful for estimation but may include content excluded by ICA or miss material in unusual macros; **manually reconcile the official exclusions**. Use a conservative count when exclusions are ambiguous. The title-page number is not computed automatically.
3. Keep the final paper **single column, single spaced, one PDF**. Ensure all required figures/tables and (if used) an appendix not exceeding **10 pages** are included; an external appendix must be anonymous.
4. Remove **author names, affiliations, acknowledgments, grant identifiers, identifying file names, PDF metadata, and identity-revealing self-citations or URLs**. Self-cite objectively in third person where possible. Do not link a public personal repository from an anonymous manuscript.
5. Inspect PDF metadata with `pdfinfo main.pdf` (the template requests an empty author field) and visually inspect the entire PDF for overflow, legible tables and readable figures. Confirm the actual `Main-text word count` shown is accurate.
6. Check [ICA's general submission guidelines](https://www.icahdq.org/page/conf-submission-guidelines), the [ICA 2027 CM CFP](https://www.icahdq.org/mpage/COMPMETH_CFP) and the ScholarOne form again immediately before uploading. Changing to a different ICA division may substantially change the format requirements.

The title page, abstracts, headings, table style, and general paper structure are **editable examples**, not prescribed contents by ICA. This is a source template rather than a guarantee of acceptance or automatic compliance; authors remain responsible for the final manuscript.

## 中文说明

该仓库提供 **ICA 2027 Computational Methods 分会**的非官方 LaTeX 模板，默认是 `main.tex`（Full Paper），另有 `extended-abstract.tex`。该分会硬性要求 **PDF、单栏、单倍行距、匿名**；Full Paper **不超过 8,000 英文词**（不计表格、参考文献和附录），可提供至多 **10 页单倍行距附录**，或匿名在线附录。具体以分会征稿通知为准。模板采用 12pt、1 英寸页边距和 APA 7 参考文献风格作为稳妥的**建议设置**，并非全部为分会强制项。投稿前请替换所有示例文字、确认实际字数并检查 PDF 元数据。
