.strings as $arr
| if $arr == [] then [] else
  [
    range($arr | length - 1)
    | "For want of a \($arr[.]) the \($arr[. + 1]) was lost."
  ] + ["And all for the want of a \($arr[0])."]
end


