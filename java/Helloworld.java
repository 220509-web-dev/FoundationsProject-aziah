/**********************
Aziah B.
Basic Hello World Message
***********************/

import java.lang.*; //included by default (String, System, etc)
import java.util.Scanner;

public class Helloworld {

	// Main method
	public static void main(String[] args) {

		// Print txt to standard output (println creates new line after txt)
		System.out.println("Hello Java World!");

		// Print txt to standard error
		System.err.println("This is an error message?!");

		System.out.print("Your response: ");

		// Scanner class used to read from various input streams (standard input)
		Scanner console = new Scanner(System.in);

		// Obtain data from user via console (standard input)
		String userInput = console.nextLine();

		// Print data from user
		System.out.println("You said: "+userInput);
	}

}