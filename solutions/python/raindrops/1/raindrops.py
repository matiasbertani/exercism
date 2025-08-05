def convert(number):
    sounds = {
        3: "Pling",
        5: "Plang",
        7: "Plong",
    }
    raindrop_sound = str()
    for n, sound in sounds.items():
        if divisible(number, n):
            raindrop_sound += sound
    return raindrop_sound if raindrop_sound else str(number)

def divisible(a: int, b: int) -> bool:
    return True if not a % b else False
