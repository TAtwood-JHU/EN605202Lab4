import java.io.File;

/**
 * 
 */

/**
 * EN605.202 Lab 4 Program Entry Point
 * Program runs solely at the command-line.  See readme.md for more information.
 * @author								Tom Atwood
 * @version								1.0.0.0
 * @since								1.0.0.0
 */
public class EN605202Lab4 {

	/**
	 * Program entry point.  Please see readme.md for parameter descriptions.
	 * @author							Tom Atwood
	 * @version							1.0.0.0
	 * @since							1.0.0.0
	 * @param args						Command-line arguments provided by user.
	 * @throws Exception 				Throws an exception if arraylist attempts to get element index outside the bounds of the collection. 
	 */
	public static void main(String[] args) throws Exception {
		// Initialize method variables
		// These are the variables we're looking to populate and verify the values
		String sortType = "";
		String inputFile = "";
		String outputFile = "";

		// If no command-line parameters provided, provide quick guidance to help screen. 
		if (args.length==0) {
			validationInformationScreen("EN605202Lab4.java requires three command-line parameters.  Please type 'EN605202Lab4 /?' for more help.");
			return;
		}
		
		// If only one parameter, it should be a help-related query.
		if(args.length==1) {
			// If help options provided in first parameter, show help screen.
			if ((args[0].equals("help")) ||
					(args[0].equals("/?")) ||
					(args[0].equals("-help")) ||
					(args[0].equals("--help"))) {
				helpScreen();
				return;
			}
			else {
				validationInformationScreen("Invalid first parameter.  Please type 'EN605202Lab4 /?' for more help.");
				return;
			}
		}
		
		// Else, only 3 parameters are valid.
		if (args.length==3) {
			
			// Validate that a proper sort option is provided in the first parameter.
			if((args[0].toLowerCase().equals("heapsort")) ||
					(args[0].toLowerCase().equals("quicksort")) ||
					(args[0].toLowerCase().equals("quicksortinsertionsorthybrid50")) ||
					(args[0].toLowerCase().equals("quicksortinsertionsorthybrid100")) ||
					(args[0].toLowerCase().equals("quicksortmedianofthree"))) {
				sortType = args[0];
			}
			else
			{
				validationInformationScreen("Invalid sort type provided in the first parameter.  Please type 'EN605202Lab4 /?' for more help.");
				return;
			}
			
			// Validate an input file is provided in the second parameter and that it is valid.
			
			inputFile = args[1];
			
			if(args[1]==null) {
				validationInformationScreen("Input file path is required in parameter 1.");
				return;
			}
	
			if(fileExists(inputFile)==false) {
				validationInformationScreen("Input file filepath is invalid.");
				return;
			}
	
			// Validate an output file is provided in the third parameter and that it is valid.
			
			outputFile = args[2];
			
			if(args[2]==null) {
				validationInformationScreen("Output file path is required in parameter 2.");
				return;
			}
			
			if(!fileExists(outputFile)==false) {
				validationInformationScreen("Output file filepath is invalid.");
				return;
			}
			
			// OK, now it's time to work!
			// Get input file contents.
			ArrayList<String> inputStrings = FileManager.GetFileLines(inputFile);
			
			int[] intArray = new int[inputStrings.size()];
			
			for (int i =0;i<inputStrings.size(); i++) {
				intArray[i] = Integer.parseInt(inputStrings.get(i));
			}
			
			// Run sort and output to file!
			switch(sortType.toLowerCase()) {
				case "heapsort": {
					HeapSort heapSort = new HeapSort();
					heapSort.iterativeHeapSort(intArray, true);
					heapSort.printArrayToFile(outputFile, intArray);
					break;
				}
				case "quicksort": {
					QuickSort quickSort = new QuickSort();
					quickSort.iterativeQuickSort(intArray);
					quickSort.printArrayToFile(outputFile, intArray);
					break;
				}
				case "quicksortinsertionsorthybrid50": {
					QuickSortInsertionSortHybrid quickSortInsertionSortHybrid = new QuickSortInsertionSortHybrid();
					quickSortInsertionSortHybrid.iterativeQuickSort(intArray, 50);
					quickSortInsertionSortHybrid.printArrayToFile(outputFile, intArray);
					break;
				}
				case "quicksortinsertionsorthybrid100": {
					QuickSortInsertionSortHybrid quickSortInsertionSortHybrid = new QuickSortInsertionSortHybrid();
					quickSortInsertionSortHybrid.iterativeQuickSort(intArray, 100);
					quickSortInsertionSortHybrid.printArrayToFile(outputFile, intArray);
					break;
				}
				case "quicksortmedianofthree": {
					QuickSortMedianOfThree quickSortMedianOfThree = new QuickSortMedianOfThree();
					quickSortMedianOfThree.iterativeQuickSort(intArray);
					quickSortMedianOfThree.printArrayToFile(outputFile, intArray);
					break;
				}
				default: {}
			}
			
			validationInformationScreen("Sorting process was successful.");
		}
		else {
			validationInformationScreen("EN605202Lab4.java requires three command-line parameters.  Please type 'EN605202Lab4 /?' for more help.");
		}
	}	
	
	/**
	 * Clears the screen.
	 * @author							Tom Atwood
	 * @version							1.0.0.0
	 * @since							1.0.0.0
	 */	
	private static void clearScreen() {
		System.out.print("\033[2J\033[1;1H");
	}

	/**
	 * Determines whether a file exists at the given filepath. 
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 * @param filepath		File path of file being sought.
	 * @return				Returns @true if file exists, else @false.
	 */
	private static boolean fileExists(String filepath) {
		File f = new File(filepath);
		if(f.exists() && !f.isDirectory()) { 
		    return true;
		}
		else { 
		    return false;
		}
	}
	
	/**
	 * Displays a help screen with information regarding options for command-line parameters.
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 */
	private static void helpScreen() {
		clearScreen();
		writeLine("EN605.202.81 Data Structures, Spring 2017, Lab #4 - Help Screen");
		writeLine("");
		writeLine("To run the program from the command-line:");
		writeLine("EN605202Lab4 {parameter0} {parameter1} {parameter2}");
		writeLine("");
		writeLine("Where:");
		writeLine("{parameter0} represents the sort type being run.");
		writeLine("{parameter1} is the filepath of the input file of elements to be sorted.");
		writeLine("{parameter2} is the filepath of the output file for the sort algorithms.");
		writeLine("");
		writeLine("{parameter0} options:");
		writeLine("- HeapSort -> Use a heap sort.");
		writeLine("- QuickSort -> Use a quick sort.");
		writeLine("- QuickSortInsertionSortHybrid50 -> Use a quick sort finishing off with an insertion sort for partition size below 50.");
		writeLine("- QuickSortInsertionSortHybrid100 -> Use a quick sort finishing off with an insertion sort for partition size below 100.");
		writeLine("- QuickSortMedianOfThree -> Use a quick sort with a median-of-three as pivot.");
		writeLine("");
	}
	
	/**
	 * Converts array of type Integer[] to int[].
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 * @param IntegerArray	Array to convert from type Integer[] to int[].
	 * @return				Returns the passed array in type int[].
	 */
	public static int[] toPrimitive(Integer[] IntegerArray) {

		int[] result = new int[IntegerArray.length];
		for (int i = 0; i < IntegerArray.length; i++) {
			result[i] = IntegerArray[i].intValue();
		}
		return result;
	}

	/**
	 * Provides a fresh screen to display validation messages.
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 * @param message		Message to be displayed.
	 */
	 private static void validationInformationScreen(String message) {
		clearScreen();
		writeLine("EN605.202.81 Data Structures, Spring 2017, Lab #4 - Informational Message");
		writeLine("");
		writeLine(message);
		writeLine("");
		writeLine("Please type 'EN605202Lab4 /? to get the help screen.");
		writeLine("");
	}
	
	/**
	 * A method to simplify writing to the console.
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 * @param line			Line to be written to the screen.
	 */
	private static void writeLine(String line) {
		System.out.println(line);
	}
}