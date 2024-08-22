import java.util.Scanner;

public class SimpleInterestCalculator {
    // Function to calculate simple interest
    public static double calculateInterest(double principal, int years, double rate) {
        return (principal * years * rate) / 100;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get the principal amount
        System.out.print("Enter the principal amount: ");
        double principal = scanner.nextDouble();

        // Get the number of years
        System.out.print("Enter the number of years: ");
        int years = scanner.nextInt();

        // Check if the customer is a senior citizen
        System.out.print("Is customer senior citizen (y/n): ");
        char isSenior = scanner.next().charAt(0);

        // Determine the rate of interest
        double rate = (isSenior == 'y' || isSenior == 'Y') ? 12.0 : 10.0;

        // Calculate the interest
        double interest = calculateInterest(principal, years, rate);

        // Display the interest
        System.out.println("Interest: " + interest);

        scanner.close();
    }
}
