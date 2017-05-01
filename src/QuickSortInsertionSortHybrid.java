/**
 * QuickSortInsertionSortHybrid class
 * @author						Tom Atwood
 * 								EN605.202.81 Data Structures, Spring 2017, Lab #4
 * 								May 2, 2017
 * @version						1.0.0.0
 * @since						1.0.0.0
 */
public class QuickSortInsertionSortHybrid
{
    public void iterativeQuickSort(int[] intArray)
    {
        iterativeQuickSort(intArray, 0);
    }

    // Sorts intArray[left to right] using iterative QuickSort
    public void iterativeQuickSort(int[] intArray, int kCutoff)
    {
        int left = 0;
        int right = intArray.length - 1;

        Stack stack = new Stack(intArray.length);

        stack.push(left);
        stack.push(right);

        while (!stack.isEmpty())
        {
            right = stack.pop();
            left = stack.pop();

            int k = right - left + 1;

            if (k <= kCutoff)
            {
                iterativeInsertionSort(intArray);
            }
            else
            {
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
        }
    }

    private void iterativeInsertionSort(int[] intArray)
    {
        int n = intArray.length;
        int i, j;
        for (i = 1; i < n; i++)
        {
            int item = intArray[i];
            int ins = 0;
            for (j = i - 1; j >= 0 && ins != 1;)
            {
                if (item < intArray[j])
                {
                    intArray[j + 1] = intArray[j];
                    j--;
                    intArray[j + 1] = item;
                }
                else ins = 1;
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

        for(int j=left; j<=right-1; j++)
        {
            if(intArray[j]<=pivot)
            {
                i++;
                swap(intArray, i, j);
            }
        }

        swap(intArray, i+1, right);
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
