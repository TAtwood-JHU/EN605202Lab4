/**
* Stack class
* @author						Tom Atwood
* 								EN605.202.81 Data Structures, Spring 2017, Lab #4
* 								May 2, 2017
* @version						1.0.0.0
* @since						1.0.0.0
*/
public class Stack
{
    private int[] intArray;
    private int size = 0;
    private int currentPosition = -1;

    public Stack(int size)
    {
        this.setSize(size);
        intArray = new int[size];
    }

    public void push(int value)
    {
        currentPosition++;
        intArray[currentPosition] = value;
    }

    public boolean isEmpty()
    {
        if(currentPosition<0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public int pop()
    {
        if (this.isEmpty())
        {
            System.out.println("Stack is empty!");
            return -999999999;
        }
        else
        {
            int returnValue = intArray[currentPosition];
            currentPosition--;
            return returnValue;
        }
    }

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}
}
