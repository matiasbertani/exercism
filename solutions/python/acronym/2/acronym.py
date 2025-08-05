import re

def abbreviate(phrase):
    words = re.findall(r"[a-zA-Z']+", phrase)
    return ''.join([word[0].upper() for word in words])
    
