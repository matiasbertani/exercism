public class LogLevels {

    public static String message(String logLine) {
        String[] str = logLine.split(":");
        return str[1].trim();
    }

    public static String logLevel(String logLine) {
        String[] str = logLine.split(":");
        String logWithBrackets = str[0].toLowerCase();
        return logWithBrackets.substring(1, logWithBrackets.length()-1);
    }

    public static String reformat(String logLine) {
        return message(logLine) + " (" +  logLevel(logLine) + ")";
    }
}
