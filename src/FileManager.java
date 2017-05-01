import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * File manager helper to abstract away all handling of file reading and writing.
 * @author					Tom Atwood
 * 							EN605.202.81 Data Structures, Spring 2017, Lab #4
 * 							May 2, 2017
 * @version					1.0.0.0
 * @since					1.0.0.0
 */
public class FileManager {

	// Empty constructor
	public FileManager() {}
	
	// Methods
	/**
	 * Retrieves file lines from the specified file provided with the file path.
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 * @param filepath		File path of file to be read.
	 * @return				An array list of all lines in the file.
	 */
	public static ArrayList<Integer> GetFileLines(String filepath) {
		ArrayList<Integer> fileData = new ArrayList<Integer>();
		String line = "";
		FileReader fileReader = null;
		
		try {
			fileReader = new FileReader(filepath);
		}
		catch(Exception e) {
			System.out.println("Error reading file: " + filepath);
			e.printStackTrace();
		}
		
		BufferedReader bufferedReader = new BufferedReader(fileReader);
		
		try {
			while((line = bufferedReader.readLine()) != null) {
				int intLine = Integer.parseInt(line);
				fileData.add(intLine);
			}
		}
		catch (IOException e) {
			System.out.println("Buffered reader cannot access file reader.");
			e.printStackTrace();
		}
		
		return fileData;
	}
	
	/**
	 * Writes file lines to the file specified in the filepath.
	 * @author				Tom Atwood
	 * @version				1.0.0.0
	 * @since				1.0.0.0
	 * @param filepath		The file to be written.
	 * @param fileData		Lines of data to be written.
	 */
	public static void WriteFileLines(String filepath, ArrayList<Integer> fileData) {
		FileWriter fileWriter = null;
		try {
			fileWriter = new FileWriter(filepath);
		}
		catch (IOException e) {
			System.out.println("Filewriter cannot write to file: " + filepath);
			e.printStackTrace();
		}
		
		BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
		
		for(int i=0; i<fileData.size(); i++) {
			try {
				bufferedWriter.write(fileData.get(i).toString());
				bufferedWriter.newLine();
			}
			catch (Exception e) {
				System.out.println("Filewriter cannot write to file: " + filepath);
				e.printStackTrace();
			}
		}
		
		try {
			bufferedWriter.close();
			fileWriter.close();
		}
		catch (IOException e) {
			System.out.println("Error closing writing resources.");
			e.printStackTrace();
		}
	}
}