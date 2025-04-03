#Building a Bangla Benchmark Dataset for Evaluating and Analyzing LLM Accuracy

# Accuracy Analysis of LLMs on Bangla Q/A 

This repository contains the results and methodology of an experiment to evaluate the accuracy of various large language models (LLMs) in answering multiple-choice questions in Bangla. The dataset consists of questions from Bangladesh Civil Service (BCS) exams, a popular and rigorous exam that covers a wide range of topics.

## Overall Result: 

![alt text](</resources/overall_accuracy.png>)

## Accuracy with different Subject 

![alt text](</resources/comparison_different_subject.png>)

## Objective

The main goal of this project is to measure and compare the accuracy of different LLMs in understanding and answering Bangla-language questions, as well as questions on topics specific to Bangladesh. The tested models include:

1. **DEEP_SEEK**
2. **OPEN_AI**
3. **GEMINI**
4. **LLAMA**

## Dataset

The dataset consists of **3000 multiple-choice questions** with four options each, sourced from BCS exam question banks. For the purpose of this experiment, a subset of **200 questions** was used for initial testing.

### Example Question

```plaintext
Question: নিচের কোন ভগ্নাংশটি \(\mathrm {২\over ৩}\) হতে বড়?

A: \(\mathrm {৩৩\over ৫০}\)
B: \(\mathrm {৮\over ১১}\)
C: \(\mathrm {৩\over ৫}\)
D: \(\mathrm {১৩\over ২৭}\)

Correct Answer: B
```

### Subjects Covered

The dataset spans the following subjects:

- Bangla Language
- Bangla Literature
- Bangladesh Affairs
- Computer and Information Technology
- English Language
- English Literature
- General Science
- International Affairs
- Mathematical Reasoning

## Methodology

### System Prompt

To maximize the accuracy of each model, the following system prompt was used:

```plaintext
You are a world-class general knowledge expert with a very high IQ. You understand Bangla and English languages and can do complex calculations and find answers.
```

### Context Prompt

Each question was fed into the LLMs using the following structured format:

```plaintext
Question: {question}
A: {option_1}
B: {option_2}
C: {option_3}
D: {option_4}

Please provide the answer inside <Answer>YOUR ANSWER HERE</Answer>. Answer will be ONLY A/B/C/D, no other explanation is required.
```

### Scoring

The models' answers were evaluated against the correct answers from the dataset. The accuracy was calculated as:

```plaintext
Accuracy = (Number of Correct Answers / Total Questions) * 100
```

## Results

### Overall Accuracy

| Model       | Accuracy (%) |
|-------------|--------------|
| DEEP_SEEK   | 79.50        |
| OPEN_AI     | 61.50        |
| GEMINI      | 59.50        |
| LLAMA       | 52.50        |


### Subject-Wise Accuracy


| Subject                        | DEEP_SEEK | OPEN_AI | GEMINI  | LLAMA   |
|--------------------------------|-----------|---------|---------|---------|
| Bangla Language                | 85.71     | 61.90   | 61.90   | 57.14   |
| Bangla Literature              | 71.43     | 42.86   | 21.43   | 42.86   |
| Bangladesh Affairs             | 56.76     | 40.54   | 40.54   | 43.24   |
| Computer and IT                | 50.00     | 50.00   | 50.00   | 0.00    |
| English Language               | 85.71     | 78.57   | 78.57   | 75.00   |
| English Literature             | 100.00    | 75.00   | 50.00   | 75.00   |
| General Science                | 89.29     | 82.14   | 78.57   | 35.71   |
| International Affairs          | 87.88     | 78.79   | 75.76   | 78.79   |
| Mathematical Reasoning         | 81.82     | 42.42   | 48.48   | 33.33   |

## Repository Contents

- **data/**: Contains the dataset of 3000 BCS questions and answers.
- **code/**: Includes scripts used for feeding prompts to the models and collecting responses.
- **results/**: Contains detailed results, including per-question analysis.
- **notebooks/**: Jupyter notebooks used for analysis and visualization.

## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/your_username/bangla-llm-evaluation.git
   ```

## Findings

- **DEEP_SEEK** is the most accurate model for Bangla questions, achieving an overall accuracy of **79.50%**.
- Mathematical reasoning proved challenging for all models except DEEP_SEEK.
- LLAMA struggled the most with Bangla-specific subjects, especially in Computer and IT.

## Future Work

- Expanding the dataset to include all 3000 questions.
- Testing additional LLMs for comparison.
- Improving prompts to enhance model performance.
- Evaluating the models' reasoning capabilities with explanations for their answers.

## Contributions

Contributions to improve the methodology or add new models are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
