public class LogLevels {

    public static String message(String logLine) {
        return logLine.split(":")[1].trim();
    }

    public static String logLevel(String logLine) {
        String logWithBrackets = logLine.split(":")[0].toLowerCase();
        return logWithBrackets.substring(1, logWithBrackets.length()-1);
    }

    public static String reformat(String logLine) {
        return message(logLine) + " (" +  logLevel(logLine) + ")";
    }
}
