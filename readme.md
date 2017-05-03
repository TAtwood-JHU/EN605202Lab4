# EN605.202.81 Data Structures, Spring 2017, Lab #4
## Submitted by Tom Atwood, May 2, 2017

This project is for the Data Structures course Lab 4, which requires the comparison of the performance of two distinct sorting algorithms to obtain some appreciation for the parameters to be considered in selecting an appropriate sort - either a **QuickSort** or a **Heap Sort**.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Java 8 is a requirement to compile and run the source code.  Java is available to download [here](https://www.java.com/en/download/win10.jsp).

### Installing

The main entry point for the program is in file EN605202Lab4.java in the src directory within the project root folder.  The program can be compiled at the command-line using the Java compiler with the following command-line entry:

```
javac EN605202Lab4.java
```
## Running the program

The EN605202Lab4 program requires either one or three command-line parameters.

With only one parameter, the only commands accepted are related to displaying the program's help screen and can be entered as one of the following:

```
java EN605202Lab4 /?
java EN605202Lab4 help
java EN605202Lab4 -help
java EN605202Lab4 --help
```

### Accepted parameters

With three parameters, following is the format required for the command-line: 

```
java EN605202Lab4 {parameter0} {parameter1} {parameter2}
```
where
**{parameter0}** represents the sort algorithm to be used.  Valid choices are:
1.  HeapSort -> Uses the heap sort algorithm.
2.  Quicksort -> Uses the Quicksort algorithm treating a partition size of one and two as a stopping case.  The first item of the partition as the pivot.
3.  QuicksortInsertionSortHybrid50 -> Uses the Quicksort algorithm treating a partition size of *k=50* as a stopping case with an insertion sort to finish.  The first item of the partition is used as the pivot.
4.  QuicksortInsertionSortHybrid100 -> Uses the Quicksort algorithm treating a partition size of *k=100* as a stopping case with an insertion sort to finish.  The first item of the partition is used as the pivot.
5.  QuicksortMedianOfThree -> Uses the Quicksort algorithm treating a partition size of one and two as a stopping case.  The first item of the partition is used as the pivot.

**{parameter1}** represents the filepath of the input file of integers to be sorted.  The proper input file type is a text file with integers provided on each line.

**{parameter2}** represents the filepath of the output file of the sorted arrays.  The output file is a text file and also includes the timing of the sort in nanoseconds at the top of the file.

### Example command-line entry

The following command line entry runs the sort using the HeapSort, an input file found at c:/data/asc20k.dat, and an output file at c:/temp/outputResults.txt:

```
java EN605202Lab4 HeapSort c:/data/asc20k.dat c:/temp/outputResults.txt
```

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the git tags by entering at the command-line in the project's root folder:

```
git tag
```

## IDEs and Tools Used

As mentioned previously, Java 8v131 was used to compile and run this program from the command-line.

IDEs
- For C# prototype in the *csharp% directory, Visual Studio 2017 is required with .NET Framework 4.6.2.
- For the Java project, Eclipse Neon.3 IDE was used.

## Authors

* **Tom Atwood** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
