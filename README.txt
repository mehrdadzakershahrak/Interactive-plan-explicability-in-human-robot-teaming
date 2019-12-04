All of the recent models are in javaff folder.

Check scripts to result to run the planner multiple times.

1) Preliminary results folder contains all of the random problems and how to get results for them. Plus, it has the code to generate random PDDL problems.

2) Installation files contains .jar files for mongo db and json and FF and FD Planners.

3) Game data contains the scenarios used for all for versions of the game (1-4 for test and 5-20 for train) + Questionnaire at the end of the game. Plans folder inside of it contains the optimal plans for all of the 20 scenarios. Optimals.txt inside plans is all of the 20 plans in one place.

4) Result files inside javaff are the result files for 20 plans as the output of FF.

5) explain_before_me is the work before I take over the project.

6) Mallet-CommandLine is the file you should use to label your sequence using CRF model. (Both train and test technique is included). I used mallet-2.0.8 and followed the installation instruction presented on the mallet website.

7) PAPER folder contains all of the .tex files alongside with pictures and .bib. A PDF of the paper is also included.