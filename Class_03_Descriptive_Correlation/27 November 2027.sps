* Encoding: UTF-8.



/* To provide a dataset name
/* We have to use full stop after all syntax*/



DATASET NAME Class3 .

VARIABLE LABELS
id     'Student ID'
study_hours ' Daily study hours'
attendance 'Attendance percentage'
sleep_hours 'Daily sleep hours'
strees_level  'Stress score (1 to 10)'
exam_score ' Exam score(0 to 100)' .




VARIABLE LEVEL
id(NOMINAL)
study_hours attendance sleep_hours exam_score (SCALE)
stress_level (ORDINAL).


/* Descriptive.
* Calculate mean, median, mode, standard deviation, minimum, and maximu.*/




DESCRIPTIVES
VARIABLES = study_hours attendance sleep_hours
stress_level exam_score
/STATISTICS = MEAN STDDEV   MIN MAX.



*To draw a scatter plot to visualize the relationship.*/

GRAPH
/SCATTERPLOT(BIVAR) = study_hours WITH exam_score.



/* Pearson Correlations */
* Measure the direction and strength of linear relationships.
* TWOTAIL requests stwo-sided significance.*/



CORRELATIONS 
/VARIABLES = study_hours exam_score
attendance sleep_hours
/PRINT = TWOTAIL
/MISSING = PAIRWISE.



* Spearman Rank Correlations.


NONPAR CORR
/VARIABLES = stress_level exam_score study_hours
/PRINT = SPEARMAN TWOTAIL
/MISSING = PAIRWISE.




















