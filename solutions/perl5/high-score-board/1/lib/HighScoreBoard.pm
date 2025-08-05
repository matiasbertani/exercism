package HighScoreBoard;

use v5.38;

our %Scores;

sub set_player_scores (%new_scores) {
    foreach my $player (keys %new_scores) {
        $Scores{$player} = $new_scores{$player};
    }
}

sub get_player_score ($player) {
    $Scores{$player}
}

sub increase_player_scores (%additional_scores) {
    foreach my $player (keys %additional_scores) {
        $Scores{$player} = $Scores{$player} + $additional_scores{$player};
    }
}

sub sort_players_by_name {
    sort keys %Scores
}

sub sort_players_by_score {
    sort { $Scores{$b} <=> $Scores{$a}} keys %Scores

}

sub delete_player ($player) {
    delete $Scores{$player}
}
