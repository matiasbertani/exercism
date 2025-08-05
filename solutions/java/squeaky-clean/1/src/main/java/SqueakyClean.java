class SqueakyClean {

    static String clean(String identifier) {
        identifier = replaceSpaces(identifier);
        identifier = convertKebabCaseToCamelCase(identifier);
        identifier = convertLeetspeakToNormal(identifier);
        identifier = removeNonLetterChars(identifier);
        return identifier;
    }

    static private String replaceSpaces(String str){
        return str.replace(" ", "_");
    }

    static private String convertKebabCaseToCamelCase(String str){
        StringBuilder result = new StringBuilder("");
        int it = 0;
        for (String word: str.split("-")){
            if (it > 0) {
                word = word.substring(0, 1).toUpperCase() + word.substring(1);
            }
            result.append(word);
            it++;
        }
        return result.toString();
    }

    static private String convertLeetspeakToNormal(String str){
        return str
            .replace("4", "a")
            .replace("3", "e")
            .replace("0", "o")
            .replace("1", "l")
            .replace("7", "t");
    }

    static private String removeNonLetterChars(String str){
        return str.replaceAll("[^a-zA-Z_]+", "");
    }
}
