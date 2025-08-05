def letter_grade:
. as $score
| if $score < 60 then "F"
elif $score < 70 then "D"
elif $score < 80 then "C"
elif $score <90 then "B"
else "A"
end
;


def count_letter_grades:
{"A": 0, "B": 0, "C": 0, "D": 0, "F": 0} as $object
| reduce (to_entries[] | .value | letter_grade) as $letter ($object; .[$letter] += 1)
;