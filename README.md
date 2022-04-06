
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
<!-- badges: end -->

# Predicting Student Performance using Study Time - Package

## Group 8

## Group Members

Contributors:

Isabela Lucas Bruxellas (33569286) Tony Liang (39356993) Xue Wang
(50938547) Anam Hira (67844266)

## Project Summary

In this project, we will explore and predict students’ exam performance
about Electrical DC Machines based on their study time by using linear
regression (LN) and the K-nearest neighbors (K-NN) algorithm. This
result could help students gain insight into the necessary study time
for specific scores as well as help instructors better understand the
performance of students.

As a result of our analysis, we have found the Root mean square
prediction error(RMSPE) for our LN model to be 0.281, while the RMSPE of
the K-NN model is 0.257. Both types of regression have a prediction
error percentage of about 40% (therefore our accuracy is about 60%),
although the K-NN model is slightly better than LN model here.

This can be attributed to the fact that exam performance could be
affected by other external factors such as health condition, student IQ,
stress levels, learning ability and our data set may not be big enough
to directly draw a relationship between just study time and exam
performance.

The dataset we used was the User Knowledge Modeling Dataset provided by
\[UCL Machine Learning
Repository\]((<https://archive.ics.uci.edu/ml/datasets/User+Knowledge+Modeling#>).

## Report

The analysis report can be found
[here](https://github.com/DSCI-310/DSCI-310-Group-8/blob/main/doc/student_performance_analysis_report.Rmd#).

## Usage - How to Run This Project

You can install the development version of group8 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("tonyliang19/group8")
```

Attention: The dependencies version have been listed below. In order to
properly run this project, ensure that you are using the same versions
when running the project in the Dockerfile.

## Dependencies

R version 4.1.1, Jupyter and R packages listed in <code>environment.yml
