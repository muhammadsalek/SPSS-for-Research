* Encoding: UTF-8.
*===========================================================.
* SPSS CLASS 1 AND CLASS 2: COMPLETE PRACTICE SYNTAX.
* Prepared for Teaching Practice.
* Md Salek Miah
* Statistics, SUST.
*===========================================================.



*###########################################################.
*###########################################################.
*                  SPSS CLASS 1.
*          BASICS & DESCRIPTIVE STATISTICS.
*###########################################################.
*###########################################################.


*===========================================================.
* CLASS 1 LEARNING TOPICS.
*
* 1. SPSS Interface and Workflow.
* 2. Variable Types, Coding and Labeling.
* 3. Data Entry and Import.
* 4. Frequency Tables.
* 5. Mean, Median and Mode.
* 6. Standard Deviation.
* 7. Variance.
* 8. Range.
*===========================================================.



*===========================================================.
* PART 1: CREATE A PRACTICE DATASET.
*===========================================================.

DATA LIST LIST /
 id
 sex
 residence
 study_hours
 test_score.

BEGIN DATA
1  1 1 3.5 65
2  2 1 4.0 70
3  1 2 5.0 75
4  2 2 2.5 60
5  1 1 4.5 72
6  2 2 3.0 68
7  1 1 6.0 82
8  2 1 5.5 78
9  1 2 4.0 71
10 2 2 3.5 66
11 1 1 5.0 76
12 2 2 4.5 74
13 1 1 2.0 58
14 2 1 3.0 64
15 1 2 5.5 80
16 2 2 4.0 69
17 1 1 6.5 85
18 2 1 5.0 77
19 1 2 3.5 67
20 2 2 4.5 73
END DATA.

EXECUTE.



*===========================================================.
* PART 2: VARIABLE LABELS.
*
* Variable labels provide a clear description of each
* variable.
*===========================================================.

VARIABLE LABELS
 id          "Student ID"
 sex         "Sex of Student"
 residence   "Place of Residence"
 study_hours "Daily Study Hours"
 test_score  "Final Test Score".



*===========================================================.
* PART 3: VALUE LABELS.
*
* Numerical codes can represent categories.
*
* sex:
* 1 = Male
* 2 = Female
*
* residence:
* 1 = Hall
* 2 = Outside Hall.
*===========================================================.

VALUE LABELS sex
 1 "Male"
 2 "Female".

VALUE LABELS residence
 1 "Hall"
 2 "Outside Hall".

EXECUTE.



*===========================================================.
* PART 4: VARIABLE TYPES / FORMATS.
*
* id          = Numeric
* sex         = Numeric categorical
* residence   = Numeric categorical
* study_hours = Numeric continuous
* test_score  = Numeric continuous.
*===========================================================.

FORMATS
 id (F3.0)
 sex (F1.0)
 residence (F1.0)
 study_hours (F4.1)
 test_score (F5.0).



*===========================================================.
* PART 5: MEASUREMENT LEVELS.
*
* Nominal = categories without natural order.
* Scale   = continuous numerical variables.
*===========================================================.

VARIABLE LEVEL
 id (NOMINAL)
 sex (NOMINAL)
 residence (NOMINAL)
 study_hours (SCALE)
 test_score (SCALE).

EXECUTE.



*===========================================================.
* PART 6: VIEW THE DATA.
*
* SPSS has two important views:
*
* DATA VIEW:
* Rows    = participants / cases.
* Columns = variables.
*
* VARIABLE VIEW:
* Name
* Type
* Width
* Decimals
* Label
* Values
* Missing
* Measure.
*===========================================================.



*===========================================================.
* PART 7: FREQUENCY TABLE FOR SEX.
*
* SPSS COMMAND:
* Analyze > Descriptive Statistics > Frequencies
*
* Move sex to Variable(s).
* Click OK.
*===========================================================.

FREQUENCIES VARIABLES=sex
 /ORDER=ANALYSIS.



*===========================================================.
* PART 8: FREQUENCY TABLE FOR RESIDENCE.
*
* SPSS COMMAND:
* Analyze > Descriptive Statistics > Frequencies
*
* Move residence to Variable(s).
* Click OK.
*===========================================================.

FREQUENCIES VARIABLES=residence
 /ORDER=ANALYSIS.



*===========================================================.
* PART 9: FREQUENCY TABLES FOR MORE THAN ONE VARIABLE.
*===========================================================.

FREQUENCIES VARIABLES=sex residence
 /ORDER=ANALYSIS.



*===========================================================.
* PART 10: MEAN.
*
* Mean = Average.
*
* Mean = Sum of all observations /
*        Number of observations.
*
* SPSS COMMAND:
* Analyze > Descriptive Statistics > Descriptives.
*===========================================================.

DESCRIPTIVES VARIABLES=study_hours test_score
 /STATISTICS=MEAN.



*===========================================================.
* PART 11: MEAN, MEDIAN AND MODE.
*
* SPSS COMMAND:
* Analyze > Descriptive Statistics > Frequencies
*
* Select:
* Mean
* Median
* Mode.
*===========================================================.

FREQUENCIES VARIABLES=study_hours test_score
 /STATISTICS=MEAN MEDIAN MODE
 /ORDER=ANALYSIS.



*===========================================================.
* PART 12: STANDARD DEVIATION.
*
* Standard deviation describes how spread out observations
* are around the mean.
*
* Small SD = observations are closer to the mean.
* Large SD = observations are more spread out.
*===========================================================.

DESCRIPTIVES VARIABLES=study_hours test_score
 /STATISTICS=MEAN STDDEV.



*===========================================================.
* PART 13: VARIANCE.
*
* Variance is another measure of variability.
*
* Variance = Standard Deviation squared.
*===========================================================.

DESCRIPTIVES VARIABLES=study_hours test_score
 /STATISTICS=MEAN STDDEV VARIANCE.



*===========================================================.
* PART 14: RANGE.
*
* Range = Maximum value - Minimum value.
*
* Example:
* Maximum = 85
* Minimum = 58
*
* Range = 85 - 58 = 27.
*===========================================================.

DESCRIPTIVES VARIABLES=study_hours test_score
 /STATISTICS=MEAN STDDEV VARIANCE RANGE MIN MAX.



*===========================================================.
* PART 15: COMPLETE DESCRIPTIVE STATISTICS.
*
* This command gives:
*
* Mean
* Standard Deviation
* Variance
* Range
* Minimum
* Maximum.
*===========================================================.

DESCRIPTIVES VARIABLES=study_hours test_score
 /STATISTICS=MEAN STDDEV VARIANCE RANGE MIN MAX.



*===========================================================.
* PART 16: COMPLETE FREQUENCY STATISTICS.
*
* This provides:
*
* Frequency Distribution
* Mean
* Median
* Mode
* Standard Deviation
* Variance
* Range
* Minimum
* Maximum.
*===========================================================.

FREQUENCIES VARIABLES=study_hours test_score
 /STATISTICS=MEAN MEDIAN MODE STDDEV VARIANCE RANGE MINIMUM MAXIMUM
 /ORDER=ANALYSIS.



*===========================================================.
* PART 17: DESCRIPTIVE STATISTICS BY GROUP.
*
* Example:
* Compare descriptive statistics for males and females.
*===========================================================.

MEANS TABLES=test_score study_hours BY sex
 /CELLS=COUNT MEAN STDDEV MIN MAX.



*===========================================================.
* PART 18: DESCRIPTIVE STATISTICS BY RESIDENCE.
*
* Compare Hall and Outside Hall students.
*===========================================================.

MEANS TABLES=test_score study_hours BY residence
 /CELLS=COUNT MEAN STDDEV MIN MAX.



*===========================================================.
* PART 19: EXAMPLE OF ENTERING DATA MANUALLY.
*
* SPSS DATA VIEW:
*
* Each ROW represents one participant.
* Each COLUMN represents one variable.
*
* Example:
*
* ID   Sex   Residence   Study_hours   Test_score
* 1     1       1            3.5           65
* 2     2       1            4.0           70
* 3     1       2            5.0           75.
*===========================================================.



*===========================================================.
* PART 20: IMPORTING AN EXCEL FILE.
*
* SPSS COMMAND:
*
* File > Open > Data
*
* Select Excel file.
* Tick:
* Read variable names from first row of data.
*
* Example syntax is shown below.
*
* IMPORTANT:
* Replace the file location with your own file location.
*===========================================================.


*GET DATA
 /TYPE=XLSX
 /FILE='C:\YourFolder\student_data.xlsx'
 /SHEET=name 'Sheet1'
 /CELLRANGE=FULL
 /READNAMES=ON.
*EXECUTE.



*===========================================================.
* PART 21: IMPORTING A CSV FILE.
*
* SPSS COMMAND:
*
* File > Import Data > CSV Data.
*
* Example syntax is shown below.
*
* IMPORTANT:
* Replace the file location with your own file location.
*===========================================================.


*GET DATA
 /TYPE=TXT
 /FILE='C:\YourFolder\student_data.csv'
 /ENCODING='UTF8'
 /DELCASE=LINE
 /DELIMITERS=","
 /ARRANGEMENT=DELIMITED
 /FIRSTCASE=2
 /IMPORTCASE=ALL.
*EXECUTE.



*===========================================================.
* PART 22: CLASS 1 QUICK SUMMARY.
*
* Categorical Variables:
* sex
* residence
*
* Appropriate Summary:
* Frequency
* Percentage.
*
*
* Continuous Variables:
* study_hours
* test_score
*
* Appropriate Summary:
* Mean
* Median
* Mode
* Standard Deviation
* Variance
* Range
* Minimum
* Maximum.
*===========================================================.



*===========================================================.
* END OF CLASS 1 PRACTICE.
*===========================================================.





*###########################################################.
*###########################################################.
*                  SPSS CLASS 2.
*             T-TESTS AND ONE-WAY ANOVA.
*###########################################################.
*###########################################################.


* Encoding: UTF-8.
*===========================================================.
* SPSS CLASS 2: T-TESTS AND ONE-WAY ANOVA.
* Prepared for Teaching Practice.
* Md Salek Miah
* Statistics, SUST.
*===========================================================.


*===========================================================.
* PART 1: CREATE A PRACTICE DATASET.
*===========================================================.

DATA LIST LIST /
 id
 group
 teaching_method
 test_score
 pre_score
 post_score
 anova_score.

BEGIN DATA
1  1 1 68 60 66 68
2  1 1 72 62 67 70
3  1 1 70 58 64 72
4  1 1 74 65 70 69
5  1 1 71 61 66 71
6  1 1 69 63 69 67
7  1 1 73 59 65 73
8  1 1 75 64 69 70
9  1 2 72 60 66 74
10 1 2 70 62 68 76
11 1 2 74 61 67 75
12 1 2 71 63 68 77
13 2 2 77 64 70 73
14 2 2 80 66 72 78
15 2 2 78 62 68 74
16 2 2 76 67 73 76
17 2 3 79 65 71 81
18 2 3 81 68 74 83
19 2 3 75 63 69 80
20 2 3 82 69 75 84
21 2 3 78 64 70 82
22 2 3 80 66 72 85
23 2 3 77 65 71 79
24 2 3 79 67 73 83
END DATA.


* Give the variables meaningful labels.

VARIABLE LABELS
 id              "Student ID"
 group           "Student Group"
 teaching_method "Teaching Method"
 test_score      "Final Test Score"
 pre_score       "Score Before Training"
 post_score      "Score After Training"
 anova_score     "Score by Teaching Method".






* Give category values labels.

VALUE LABELS group
 1 "Group A"
 2 "Group B".

VALUE LABELS teaching_method
 1 "Lecture"
 2 "Video"
 3 "Group Practice".

EXECUTE.


*===========================================================.
* TEST 1: ONE-SAMPLE T-TEST.
* Research Question:
* Is the average test score different from 70?
*
* SPSS COMMAND:
* Analyze > Compare Means > One-Sample T Test
* Test Variable = test_score
* Test Value = 70.
*===========================================================.

T-TEST
 /TESTVAL=70
 /VARIABLES=test_score
 /CRITERIA=CI(.95).


*===========================================================.
* TEST 2: INDEPENDENT-SAMPLES T-TEST.
* Research Question:
* Is the average test score different between
* Group A and Group B?
*
* SPSS COMMAND:
* Analyze > Compare Means > Independent-Samples T Test
* Test Variable = test_score
* Grouping Variable = group
* Define Groups:
* Group 1 = 1
* Group 2 = 2.
*===========================================================.

T-TEST
 GROUPS=group(1 2)
 /VARIABLES=test_score
 /CRITERIA=CI(.95).


*===========================================================.
* TEST 3: PAIRED-SAMPLES T-TEST.
* Research Question:
* Did students' scores improve after training?
*
* SPSS COMMAND:
* Analyze > Compare Means > Paired-Samples T Test
* Pair:
* Variable 1 = post_score
* Variable 2 = pre_score.
*===========================================================.

T-TEST
 PAIRS=post_score WITH pre_score (PAIRED)
 /CRITERIA=CI(.95).


*===========================================================.
* TEST 4: ONE-WAY ANOVA.
* Research Question:
* Do students taught by three different teaching methods
* have different average scores?
*
* Method 1 = Lecture
* Method 2 = Video
* Method 3 = Group Practice
*
* SPSS COMMAND:
* Analyze > Compare Means > One-Way ANOVA
*
* Dependent List = anova_score
* Factor = teaching_method
*
* Options:
* Select Descriptive
* Select Homogeneity of variance test
*
* Post Hoc:
* Select Tukey.
*===========================================================.

ONEWAY anova_score BY teaching_method
 /STATISTICS DESCRIPTIVES HOMOGENEITY
 /POSTHOC=TUKEY ALPHA(0.05).


*===========================================================.
* END OF CLASS 2 PRACTICE.
*===========================================================.

