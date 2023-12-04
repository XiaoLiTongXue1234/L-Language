package l.lang;

public class SystemInputStream {
    private static final InputStream inputStream;
    public static String readLine() {
        return inputStream.readLine();
    }
}