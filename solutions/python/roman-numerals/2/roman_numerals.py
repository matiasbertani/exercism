from dataclasses import dataclass


@dataclass
class DigitBuilder:
    base_unit: str
    middle_symbol: str
    top_symbol: str


def roman(number: int) -> str:

    digit_builders = {
        1: DigitBuilder('I', 'V', 'X'),
        2: DigitBuilder('X', 'L', 'C'),
        3: DigitBuilder('C', 'D', 'M'),
        4: DigitBuilder('M', '', ''),
    }
    return ''.join(
        [
            roman_digit(int(digit), digit_builders[index])
            for index, digit in enumerate(str(number)[::-1], 1)
        ][::-1]
    )


def roman_digit(digit: int, digit_builder: DigitBuilder) -> str:

    if digit <= 3:
        return digit_builder.base_unit * digit

    elif digit == 4:
        return digit_builder.base_unit + digit_builder.middle_symbol

    elif 5 <= digit < 9:
        return digit_builder.middle_symbol + digit_builder.base_unit * (digit - 5)

    elif digit == 9:
        return digit_builder.base_unit + digit_builder.top_symbol
