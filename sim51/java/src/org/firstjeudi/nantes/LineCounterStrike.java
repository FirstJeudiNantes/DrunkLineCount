package org.firstjeudi.nantes;

import java.io.*;

public class LineCounterStrike {

    public static void main(String[] args) {
        // we retrieve parameters
        String filePath = null;
        for (int i = 0; i < args.length; i++) {
            if (args[i].startsWith("--")) {
                if (args[i].startsWith("--file=")) {
                    filePath = args[i].substring(7);
                    System.out.print("File is " + filePath);
                }
            }
        }

        if (filePath != null) {
            File file = new File(filePath);
            int i =0;
            try {
                FileInputStream fis = new FileInputStream(file);
                DataInputStream in = new DataInputStream(fis);
                BufferedReader br = new BufferedReader(new InputStreamReader(in));
                while(true){
                    i++;
                    br.readLine().toString();
                }
            } catch (Exception e) {
                System.out.println("Nb line: " + i);
            }
        }
    }
}
