# US-Minimum-Wage-Analysis
Data analysis of minimum wage differences across the United States using R.

## Overview
This project analyzes minimum wage differences across the United States using R. The goal is to explore wage variation across the states and determine whether significant differences exist between southern and non southern states.

## Tools Used
- R
- RStudio
- Google Sheets
- Statistical Analysis
- Data Visualization

## Data Source
U.S. Department of Labor State Minimum Wage Laws

## Research Questions
1. What is the average minimum wage across the U.S.?
2. How much variation exists among state minimum wages?
3. Do southern states have significantly different minimum wages than non-southern states?

## Methods
- Descriptive Statistics
- Histogram
- Boxplots
- Welch Two-Sample T-Test
- Wilcoxon Rank Sum Test

  ## Key Findings
- Average minimum wage: $11.35
- Median minimum wage: $11.63
- Lowest minimum wage: $7.25
- Highest minimum wage: $17.13
- Non-Southern states had significantly higher average minimum wages than Southern states.

## Statistical Results

### Welch Two-Sample T-Test
- t = 2.99
- p = 0.0051

### Wilcoxon Rank Sum Test
- W = 396.5
- p = 0.0076

Both tests found a statistically significant difference between Southern and non-Southern states.

## Repository Structure
- `minimum_wage_analysis.R` - Analysis code
- `data/` - Dataset
- `plots/` - Visualizations

## Author
Mkaiyah Jenkins
Computer Science Student, Jackson State University
