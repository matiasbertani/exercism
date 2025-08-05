import re 

def count_words(sentence):
    result = dict()
    all_words = get_all_words(sentence)
    unique_words = set(all_words)
    for word in unique_words:
        result[word] = all_words.count(word)
    return result

def get_all_words(sentence: str) -> list[str]:
    delimiter = " "
    clean_sentence = re.sub("^'|'$|[^a-z0-9']+", delimiter, sentence.lower()).strip()
    return list(map(lambda word: word.strip("'"), clean_sentence.split(delimiter)))
    