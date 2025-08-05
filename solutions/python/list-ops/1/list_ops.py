def append(list1, list2):
    return list1 + list2


def concat(lists):
    return sum(lists, [])


def filter(function, list):
    return [el for el in list if function(el)]


def length(list):
    return sum([1 for el in list])


def map(function, list):
    return [function(el) for el in list]


def foldl(function, list, initial):
    for el in list:
        initial = function(initial, el)
    return initial


def foldr(function, list, initial):
    for el in list[::-1]:
        initial = function(initial, el)
    return initial


def reverse(list):
    return list[::-1]
