package InventoryManagement;

use v5.38;

sub create_inventory ($items) {
    my %inventory;
    add_items( \%inventory, $items );
    return \%inventory;
}

sub add_items( $inventory, $items ) {
    
    foreach my $item (@{$items}){
        if (exists $inventory->{$item}){
            $inventory->{$item} += 1
        } else {
            $inventory->{$item} = 1
        }
    }
    return $inventory;
}

sub remove_items ( $inventory, $items ) {
    foreach my $item (@{$items}){
        if ($inventory->{$item} > 0){
            $inventory->{$item} -= 1
        }
    }
    return $inventory;
}

sub delete_item ( $inventory, $item ) {
    delete $inventory->{$item};
    return $inventory;
}
