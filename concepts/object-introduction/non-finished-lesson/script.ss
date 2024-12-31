object "Application"
{
    state "main"
    {
        state = "10";
    }

    state "10" {
        // Write your code at each state
        // Comment this line:
        // Application.exit();
        Console.print("10");
        timeout(1);
        state = "9";
    }

    state "9" {
        // Write your code at each state
        Console.print("9");
        timeout(1);
        state = "8";
    }

    state "8" {
        // Write your code at each state
        Console.print("8");
        timeout(1);
        state = "7";
    }

    state "7" {
        // Write your code at each state
        Console.print("7");
        timeout(1);
        state = "6";
    }

    state "6" {
        // Write your code at each state
        Console.print("6");
        timeout(1);
        state = "5";
    }

    state "5" {
        // Write your code at each state
        Console.print(state);
        timeout(1);
        state = "4";
    }

    state "4" {
        // Write your code at each state
        Console.print(state);
        timeout(1);
        state = "3";
    }

    state "3" {
        // Write your code at each state
        Console.print(state);
        timeout(1);
        state = "2";
    }

    state "2" {
        // Write your code at each state
        Console.print(state);
        timeout(1);
        state = "1";
    }

    state "1" {
        // Write your code at each state
        Console.print(state);
        timeout(1);
        Console.print("Happy, 2025!");
    }
}