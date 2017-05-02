# EN605.202.81 Data Structures, Spring 2017, Lab 4
# Submitted by Tom Atwood, May 2, 2017

RUNALL.CMD
# This runs the command-line tool for all permutations required by the Lab4 project.
# Assumes all input data files are in the directory c:\data (it's the way it's setup on my machine).
# Assumes all output goes to the directory c:\temp\Lab4Output (it's the way it's setup on my machine). 

##*********************************************************************************
## Process ascending order files (asc)
##*********************************************************************************

# HeapSort
ECHO Running heap sort with ascending order files
java EN605202Lab4 HeapSort c:/data/lab4/asc50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc50.txt
java EN605202Lab4 HeapSort c:/data/lab4/asc500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc500.txt
java EN605202Lab4 HeapSort c:/data/lab4/asc1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc1K.txt
java EN605202Lab4 HeapSort c:/data/lab4/asc2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc2K.txt
java EN605202Lab4 HeapSort c:/data/lab4/asc5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc5K.txt
java EN605202Lab4 HeapSort c:/data/lab4/asc10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc10K.txt
java EN605202Lab4 HeapSort c:/data/lab4/asc20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortAsc20K.txt

# QuickSort
ECHO Running quick sort with ascending order files
java EN605202Lab4 QuickSort c:/data/lab4/asc50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc50.txt
java EN605202Lab4 QuickSort c:/data/lab4/asc500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc500.txt
java EN605202Lab4 QuickSort c:/data/lab4/asc1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc1K.txt
java EN605202Lab4 QuickSort c:/data/lab4/asc2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc2K.txt
java EN605202Lab4 QuickSort c:/data/lab4/asc5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc5K.txt
java EN605202Lab4 QuickSort c:/data/lab4/asc10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc10K.txt
java EN605202Lab4 QuickSort c:/data/lab4/asc20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortAsc20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 50
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with ascending order files
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/asc20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Asc20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 100
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with ascending order files
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/asc20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Asc20K.txt

# QuickSort Median-of-Three 
ECHO Running quick sort with median-of-three pivot with ascending order files
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc50.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc500.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc1K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc2K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc5K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc10K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/asc20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeAsc20K.txt

##*********************************************************************************
## Process reverse order files (rev)
##*********************************************************************************

# HeapSort
ECHO Running heap sort with reverse order files
java EN605202Lab4 HeapSort c:/data/lab4/rev50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev50.txt
java EN605202Lab4 HeapSort c:/data/lab4/rev500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev500.txt
java EN605202Lab4 HeapSort c:/data/lab4/rev1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev1K.txt
java EN605202Lab4 HeapSort c:/data/lab4/rev2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev2K.txt
java EN605202Lab4 HeapSort c:/data/lab4/rev5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev5K.txt
java EN605202Lab4 HeapSort c:/data/lab4/rev10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev10K.txt
java EN605202Lab4 HeapSort c:/data/lab4/rev20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRev20K.txt

# QuickSort
ECHO Running quick sort with reverse order files
java EN605202Lab4 QuickSort c:/data/lab4/rev50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev50.txt
java EN605202Lab4 QuickSort c:/data/lab4/rev500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev500.txt
java EN605202Lab4 QuickSort c:/data/lab4/rev1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev1K.txt
java EN605202Lab4 QuickSort c:/data/lab4/rev2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev2K.txt
java EN605202Lab4 QuickSort c:/data/lab4/rev5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev5K.txt
java EN605202Lab4 QuickSort c:/data/lab4/rev10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev10K.txt
java EN605202Lab4 QuickSort c:/data/lab4/rev20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRev20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 50
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with reverse order files
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/rev20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Rev20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 100
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with reverse order files
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/rev20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Rev20K.txt

# QuickSort Median-of-Three 
ECHO Running quick sort with median-of-three pivot with reverse order files
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev50.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev500.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev1K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev2K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev5K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev10K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/rev20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRev20K.txt

##*********************************************************************************
## Process random order files (ran)
##*********************************************************************************

# HeapSort
ECHO Running heap sort with random order files
java EN605202Lab4 HeapSort c:/data/lab4/ran50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan50.txt
java EN605202Lab4 HeapSort c:/data/lab4/ran500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan500.txt
java EN605202Lab4 HeapSort c:/data/lab4/ran1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan1K.txt
java EN605202Lab4 HeapSort c:/data/lab4/ran2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan2K.txt
java EN605202Lab4 HeapSort c:/data/lab4/ran5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan5K.txt
java EN605202Lab4 HeapSort c:/data/lab4/ran10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan10K.txt
java EN605202Lab4 HeapSort c:/data/lab4/ran20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortRan20K.txt

# QuickSort
ECHO Running quick sort with random order files
java EN605202Lab4 QuickSort c:/data/lab4/ran50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan50.txt
java EN605202Lab4 QuickSort c:/data/lab4/ran500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan500.txt
java EN605202Lab4 QuickSort c:/data/lab4/ran1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan1K.txt
java EN605202Lab4 QuickSort c:/data/lab4/ran2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan2K.txt
java EN605202Lab4 QuickSort c:/data/lab4/ran5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan5K.txt
java EN605202Lab4 QuickSort c:/data/lab4/ran10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan10K.txt
java EN605202Lab4 QuickSort c:/data/lab4/ran20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortRan20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 50
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with random order files
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/ran20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Ran20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 100
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with random order files
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/ran20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Ran20K.txt

# QuickSort Median-of-Three 
ECHO Running quick sort with median-of-three pivot with random order files
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan50.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan500.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan1K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan2K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan5K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan10K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/ran20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeRan20K.txt

##*********************************************************************************
## Process randomly ordered files with a higher percentage of duplicates (dup)
##*********************************************************************************

# HeapSort
ECHO Running heap sort with randomly order files with a higher percentage of duplicates
java EN605202Lab4 HeapSort c:/data/lab4/dup50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup50.txt
java EN605202Lab4 HeapSort c:/data/lab4/dup500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup500.txt
java EN605202Lab4 HeapSort c:/data/lab4/dup1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup1K.txt
java EN605202Lab4 HeapSort c:/data/lab4/dup2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup2K.txt
java EN605202Lab4 HeapSort c:/data/lab4/dup5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup5K.txt
java EN605202Lab4 HeapSort c:/data/lab4/dup10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup10K.txt
java EN605202Lab4 HeapSort c:/data/lab4/dup20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputHeapSortDup20K.txt

# QuickSort
ECHO Running quick sort with randomly order files with a higher percentage of duplicates
java EN605202Lab4 QuickSort c:/data/lab4/dup50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup50.txt
java EN605202Lab4 QuickSort c:/data/lab4/dup500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup500.txt
java EN605202Lab4 QuickSort c:/data/lab4/dup1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup1K.txt
java EN605202Lab4 QuickSort c:/data/lab4/dup2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup2K.txt
java EN605202Lab4 QuickSort c:/data/lab4/dup5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup5K.txt
java EN605202Lab4 QuickSort c:/data/lab4/dup10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup10K.txt
java EN605202Lab4 QuickSort c:/data/lab4/dup20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortDup20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 50
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with randomly order files with a higher percentage of duplicates
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid50 c:/data/lab4/dup20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid50Dup20K.txt

# QuickSort InsertionSort Hybrid with stopping case of 100
ECHO Running quick sort insertion sort hybrid with stopping case of 50 with randomly order files with a higher percentage of duplicates
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup50.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup500.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup1K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup2K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup5K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup10K.txt
java EN605202Lab4 QuickSortInsertionSortHybrid100 c:/data/lab4/dup20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortInsertionSortHybrid100Dup20K.txt

# QuickSort Median-of-Three 
ECHO Running quick sort with median-of-three pivot with randomly order files with a higher percentage of duplicates
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup50.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup50.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup500.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup500.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup1K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup1K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup2K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup2K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup5K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup5K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup10K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup10K.txt
java EN605202Lab4 QuickSortMedianOfThree c:/data/lab4/dup20K.dat c:/temp/Lab4Output/TAtwoodLab4_OutputQuickSortMedianOfThreeDup20K.txt
