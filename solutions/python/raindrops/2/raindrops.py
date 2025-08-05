def convert(number):
    sounds = {
        3: "Pling",
        5: "Plang",
        7: "Plong",
    }
    raindrop_sound = ''.join([ sound for n, sound in sounds.items() if divisible(number, n)])
    return raindrop_sound or str(number)

def divisible(a: int, b: int) -> bool:
    return True if not a % b else False
