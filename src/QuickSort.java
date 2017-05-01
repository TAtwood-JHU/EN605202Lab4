/**
 * QuickSort class
 * @author						Tom Atwood
 * 								EN605.202.81 Data Structures, Spring 2017, Lab #4
 * 								May 2, 2017
 * @version						1.0.0.0
 * @since						1.0.0.0
 */
public class QuickSort
{
	/**
	 * Sorts intArray[left to right] using iterative QuickSort with default stopping case of 2.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
	 * @param intArray			Array being sorted.
	 */
    public void iterativeQuickSort(int[] intArray)
    {
        iterativeQuickSort(intArray, 2);
    }

    /**
     * Sorts intArray[left to right] using iterative QuickSort.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array being sorted.
     * @param stoppingCase		Stopping case (partition size).
     */
    public void iterativeQuickSort(int[] intArray, int stoppingCase)
    {
        int left = 0;
        int right = intArray.length - 1;

        // Using a stack to emulate recursion in this iterative method
        Stack stack = new Stack(intArray.length);

        // Push the end values onto the stack
        stack.push(left);
        stack.push(right);

        while (!stack.isEmpty())
        {
        	// Pop the left and right values of the subarray off the stack.
            right = stack.pop();
            left = stack.pop();

            int n = right - left;

            if (n <= stoppingCase)
            {

            }
            else
            {
                int p = partition(intArray, left, right);

                // If partition location is greater than left position for subarray
                // Put left value onto stack as well as rightmost value from left partition.
                if (p - 1 > left)
                {
                    stack.push(left);
                    stack.push(p - 1);
                }

                // If partition location is less than right position for subarray
                // Put right value onto stack as well as leftmost value from right partition.
                if (p + 1 < right)
                {
                    stack.push(p + 1);
                    stack.push(right);
                }
            }
        }
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
        ArrayList<Integer> arrayList = new ArrayList<Integer>();

        for (int i = 0; i < intArray.length; i++)
        {
            arrayList.add(intArray[i]);
        }

        FileManager.WriteFileLines(filepath, arrayList);
    }

    /**
     * Swaps two elements of the array.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param intArray			Array where elements will be swapped.
     * @param left				Index of the first element.
     * @param right				Index of the second element.
     */
    private void swap(int[] intArray, int index1, int index2)
    {
        int temp = intArray[index1];
        intArray[index1] = intArray[index2];
        intArray[index2] = temp;
    }
}
