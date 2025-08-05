def trim: sub("^\\s+"; "") | sub("\\s+$"; "");

def split_message_and_log: . / ": ";

def message:
  split_message_and_log[1] | trim
;

def log_level:
  split_message_and_log[0][1:-1] | ascii_downcase | trim
;

def reformat: "\(message) (\(log_level))";
