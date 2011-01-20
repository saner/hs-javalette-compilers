import java.io.*;

public class JavaletteStdLib {

    public static int readInt() {
        try {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String line = reader.readLine();

        return Integer.parseInt(line);
        }
        catch(Exception e) {
            
        }

        return 0;
    }

    public static double readDouble() {
        try {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String line = reader.readLine();

        return Double.parseDouble(line);
        }
        catch(Exception e) {

        }

        return 0;
    }

    public static void error() throws Exception {
        System.out.println("runtime error");
        System.exit(0);
    }
}
