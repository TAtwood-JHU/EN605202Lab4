/**
 * HeapSort class
 * @author						Tom Atwood
 * 								EN605.202.81 Data Structures, Spring 2017, Lab #4
 * 								May 2, 2017
 * @version						1.0.0.0
 * @since						1.0.0.0
 */
public class HeapSort
{
	// Initialize class variables.
	long startTime = -1;		// Start time for timing.
	long endTime = -1;			// End time for timing.
	long elapsed = -1;			// Sort algorithm elapsed time (in nanoseconds).

	// Empty constructor
	public HeapSort() {
    }

	// Methods
	
    /**
    * Iterative heap sort.
    * @author					Tom Atwood
    * @version					1.0.0.0
    * @since					1.0.0.0
    * @param intArray			Array to be sorted.
    * @param ascending 			Value should be @true if the array should be sorted in ascending order or @false if in descending order.
    */
    public void iterativeHeapSort(int[] intArray, boolean ascending) {

    	startTime = System.nanoTime();
    	
    	for (int i = intArray.length / 2 - 1; i >= 0; i--) {
            repairTop(intArray, intArray.length - 1, i, ascending ? -1 : 1);
        }
        for (int i = intArray.length - 1; i > 0; i--) {
            swap(intArray, 0, i);
            repairTop(intArray, i - 1, 0, ascending ? -1 : 1);
        }
        
        endTime =  System.nanoTime();
        elapsed = endTime-startTime;
    }
    
    /**
     * Prints the array contents to a text file.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param filepath			The filepath for the output text file.
     * @param intArray			The array to be printed.
     */
    public void printArrayToFile(String filepath, int[] intArray)
    {
    	ArrayList<String> intArrayString = new ArrayList<String>();
    	
    	for(int i=0;i<intArray.length;i++) {
    		intArrayString.add(Integer.toString(intArray[i]));
    	}
    	
        FileManager.WriteFileLines(filepath, intArrayString, elapsed);
    }

    /**
     * Move the top of the heap to the correct place.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array to be sorted.
     * @param bottom			Last index that can be touched.
     * @param topIndex			Index of the top of the heap.
     * @param ascendingOrder	1 = ascending order; -1 descending order
     */
    private void repairTop(int[] intArray, int bottom, int topIndex, int ascendingOrder) {
        int temp = intArray[topIndex];
        int successor = topIndex * 2 + 1;
        
        if ((successor < bottom) && (Integer.compare(intArray[successor],intArray[successor + 1]))==ascendingOrder) {
            successor++;
        }

        while ((successor <= bottom) && (Integer.compare(temp, intArray[successor]))==ascendingOrder) {
            intArray[topIndex] = intArray[successor];
            topIndex = successor;
            successor = successor * 2 + 1;
            if ((successor < bottom) && (Integer.compare(intArray[successor], intArray[successor + 1]))==ascendingOrder) {
                successor++;
            }
        }
        intArray[topIndex] = temp;
    }

    /**
     * Swaps two elements of the heap.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array where elements will be swapped.
     * @param index1			Index of the first element.
     * @param index2			Index of the second element.
     */
    private void swap(int[] intArray, int index1, int index2) {
        int temp = intArray[index1];
        intArray[index1] = intArray[index2];
        intArray[index2] = temp;
    }
 }