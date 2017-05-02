/**
 * QuickSort with median of three pivot implementation class
 * @author						Tom Atwood
 * 								EN605.202.81 Data Structures, Spring 2017, Lab #4
 * 								May 2, 2017
 * @version						1.0.0.0
 * @since						1.0.0.0

 */
public class QuickSortMedianOfThree
{
	// Initialize class variables.
	long startTime = -1;		// Start time for timing.
	long endTime = -1;			// End time for timing.
	long elapsed = -1;			// Sort algorithm elapsed time (in nanoseconds).

    /**
     * Sorts intArray[left to right] using iterative QuickSort.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array being sorted.
     */
    public void iterativeQuickSort(int[] intArray)
    {
    	startTime = System.nanoTime();
    	
        int left = 0;
        int right = intArray.length - 1;

        // Mimic recursion through use of stack
        Stack stack = new Stack(intArray.length);

        stack.push(left);
        stack.push(right);

        while (!stack.isEmpty())
        {
            right = stack.pop();
            left = stack.pop();

            int p = partition(intArray, left, right);

            if (p - 1 > left)
            {
                stack.push(left);
                stack.push(p - 1);
            }

            if (p + 1 < right)
            {
                stack.push(p + 1);
                stack.push(right);
            }
        }
        
        endTime = System.nanoTime();
        elapsed = endTime-startTime;        		
    }

    /**
     * Rearranges the elements for the median of three algorithm.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array being sorted.
     * @param left				Left position for subarray.
     * @param right				Right position for subarray.
     */
    private void medianOfThree(int[] intArray, int left, int right)
    {
    	// The goal of this method is to order the left, center, and right
    	// elements of the array before moving ahead with the pivot.
        int n = right - left;
        int mid = (( n - (n%2)) /2) + left;

        if (intArray[left] > intArray[mid])
        {
            swap(intArray, left, mid);
        }

        if (intArray[left] > intArray[right])
        {
            swap(intArray, left, right);
        }

        if (intArray[mid] > intArray[right])
        {
            swap(intArray, mid, right);
        }

        swap(intArray, left, mid);
    }

    /**
    * Calculates current partition position.
    * @author					Tom Atwood
    * @version					1.0.0.0
    * @since					1.0.0.0
    * @param intArray			Array being sorted.
    * @param left				Current left position of subarray.
    * @param right				Current right position of subarray.
    * @return					Returns partition position.
    */
    private int partition(int[] intArray, int left, int right)
    {
    	// Swap left, mid, and center elements based on median of three algorithm.
        medianOfThree(intArray,left,right);
        
        // The pivot should now be ordered following the median of 3 swap.
        int pivot = intArray[right];

        int i = left - 1;

        for (int j = left; j <= right - 1; j++)
        {
            if (intArray[j] <= pivot)
            {
                i++;
                swap(intArray, i, j);
            }
        }

        swap(intArray, i + 1, right);
        return (i + 1);
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
     * Swaps two elements of the array.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array where elements will be swapped.
     * @param index1			Index of the first element.
     * @param index2			Index of the second element.
     */
    private void swap(int[] intArray, int index1, int index2)
    {
        int temp = intArray[index1];
        intArray[index1] = intArray[index2];
        intArray[index2] = temp;
    }
}
