package l.lang;

public class SystemOutputStream {
    private static final OutputStream outputStream;
    public static void println(String s) {
        outputStream.println(s);
    }
}