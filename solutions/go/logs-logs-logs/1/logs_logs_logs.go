package logs

import "unicode/utf8"

func Application(log string) string {
    for _, char := range log {
    	if char == '❗' {
            return "recommendation"
        } else if char == '🔍' {
        	return "search"
        } else if char == '☀' {
        	return "weather"
        }
    }
    return "default"
}


func Replace(log string, oldRune, newRune rune) string {
    
    logAsRunes := []rune(log)
	for index, char := range logAsRunes {
        if char == oldRune {
            logAsRunes[index] = newRune
        }
    }
	return string(logAsRunes)
}

func WithinLimit(log string, limit int) bool {
	return utf8.RuneCountInString(log) <= limit
}
