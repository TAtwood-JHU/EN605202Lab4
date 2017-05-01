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
	// Initialize class variables
    private int[] intArray;
    private int size = 0;
    private int currentPosition = -1;

    // Constructor
    /**
     * Constructors requires static size for the stack at initialization.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param size				Size of the stack.
     */
    public Stack(int size)
    {
        this.setSize(size);
        intArray = new int[size];
    }

    // Methods
    /**
     * Push a value onto the stack.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @param value				Value to be pushed onto the stack.
     */
    public void push(int value)
    {
        currentPosition++;
        intArray[currentPosition] = value;
    }

    /**
     * Checks to see if the stack is empty.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @return					Returns @true if the stack is empty, else @false.
     */
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
    
    /**
     * Pops the top value off the stack.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @return					The top value off the stack.
     */
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

    /**
     * Gets the size of the stack.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
     * @return					The integer value representing the stack size.
     */
	public int getSize() {
		return size;
	}
	
	/**
	 * Sets the size of the stack.
     * @author					Tom Atwood
     * @version					1.0.0.0
     * @since					1.0.0.0
	 * @param size				The integer value representing the stack size.
	 */
	private void setSize(int size) {
		this.size = size;
	}
}