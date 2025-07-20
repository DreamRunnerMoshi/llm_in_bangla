# Research Paper: Evaluating Large Language Models on Bangla Language Understanding

This directory contains a comprehensive research paper in LaTeX format documenting the evaluation of Large Language Models on Bangla language tasks using Bangladesh Civil Service (BCS) examination questions.

## Paper Overview

**Title:** Evaluating Large Language Models on Bangla Language Understanding: A Comprehensive Analysis Using Bangladesh Civil Service Examination Questions

**Abstract:** This paper presents a comprehensive evaluation of four state-of-the-art Large Language Models (LLMs) on Bangla language understanding and reasoning tasks using a benchmark dataset of 3,000 BCS examination questions spanning nine academic subjects.

## Files

- `research_paper.tex` - Main LaTeX source file
- `research_paper.pdf` - Compiled PDF output (9 pages)
- `compile_paper.sh` - Shell script for compiling the LaTeX document
- `resources/` - Directory containing figures and images used in the paper

## Key Findings

The paper evaluates four models:
1. **DeepSeek** - 79.50% accuracy (best performing)
2. **OpenAI GPT** - 61.50% accuracy
3. **Google Gemini** - 59.50% accuracy
4. **Meta LLaMA** - 52.50% accuracy

## Subjects Evaluated

The benchmark covers nine academic subjects:
- Bangla Language
- Bangla Literature
- Bangladesh Affairs
- Computer and Information Technology
- English Language
- English Literature
- General Science
- International Affairs
- Mathematical Reasoning

## Compilation Instructions

### Prerequisites

Ensure you have LaTeX installed with the following packages:
- texlive-latex-base
- texlive-latex-extra
- texlive-fonts-recommended

### Compilation

1. **Using the compilation script (recommended):**
   ```bash
   chmod +x compile_paper.sh
   ./compile_paper.sh
   ```

2. **Manual compilation:**
   ```bash
   pdflatex research_paper.tex
   pdflatex research_paper.tex  # Second run for cross-references
   ```

### Output

The compilation will generate `research_paper.pdf` containing the complete research paper with:
- Title page with author information
- Abstract
- Complete methodology section
- Results with tables and figures
- Discussion and analysis
- Conclusion and future work
- References

## Paper Structure

1. **Introduction** - Background and research objectives
2. **Related Work** - Literature review and existing benchmarks
3. **Methodology** - Dataset construction, model selection, and evaluation protocol
4. **Results** - Overall and subject-wise performance analysis with visualizations
5. **Discussion** - Performance implications and challenges
6. **Future Work** - Recommendations for further research
7. **Conclusion** - Summary of contributions and findings

## Figures Included

- Figure 1: Overall Accuracy Comparison Chart
- Figure 2: Subject-wise Performance Comparison

## Research Contributions

1. A curated dataset of 3,000 BCS examination questions
2. Comprehensive evaluation framework for Bangla language tasks
3. Detailed analysis of LLM performance across multiple academic domains
4. Insights into challenges and opportunities for Bangla language processing

## Usage

This research paper can be used for:
- Academic publication and conference presentations
- Reference for Bangla language processing research
- Benchmark comparison for future LLM evaluations
- Documentation of the research methodology and findings

## Citation

When referencing this work, please cite the repository and methodology described in the paper.

## License

This research paper is part of the llm_in_bangla repository and follows the same licensing terms.