def create_score_board: {"The Best Ever": 1000000};

def add_player(player; score): .[player] = score;

def remove_player(player): del(.[player]);

def update_score(player; points):
  add_player(player; points + .[player])
;

def apply_monday_bonus:
  with_entries({key: .key, value: (.value + 100)})  
;

def total_score: values | add // 0;
