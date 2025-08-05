def roman(number):
    number = list(str(number))
    number.reverse()

    roman_number = list()
    for index, digit in enumerate(number, 1):

        if index == 1:
            roman_digit = get_first_roman(digit)

        elif index == 2:
            roman_digit = get_second_roman_digit(digit)

        elif index == 3:
            roman_digit = get_third_roman_digit(digit)

        elif index == 4:
            roman_digit = get_fourth_roman_digit(digit)

        roman_number.append(roman_digit)
    return ''.join(roman_number[::-1])


def get_first_roman(digit: str) -> str:
    number = int(digit)

    if number <= 3:
        return 'I' * number

    if number == 4:
        return 'IV'

    if number == 5:
        return 'V'

    if number < 9:
        return 'V' + 'I' * (number - 5)

    if number == 9:
        return 'IX'


def get_second_roman_digit(digit: str) -> str:
    number = int(digit)

    if number < 3:
        return 'X' * number

    if number == 4:
        return 'XL'

    if number == 5:
        return 'L'

    if number < 9:
        return 'L' + 'X' * (number - 5)

    if number == 9:
        return 'XC'


def get_third_roman_digit(digit: str) -> str:
    number = int(digit)

    if number < 3:
        return 'C' * number

    if number == 4:
        return 'CD'

    if number == 5:
        return 'D'

    if number < 9:
        return 'D' + 'C' * (number - 5)

    if number == 9:
        return 'CM'


def get_fourth_roman_digit(digit: str) -> str:
    return 'M' * int(digit)
