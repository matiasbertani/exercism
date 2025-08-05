package NucleotideCount;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<count_nucleotides>;

sub count_nucleotides ($strand) {
    my %hash = (
    'A' => 0,
    'C' => 0,
    'G' => 0,
    'T' => 0,
    );
    foreach my $nucleotide (split //, $strand){
        if (!exists $hash{$nucleotide}) {
            die "Invalid nucleotide in strand"
        }
        $hash{$nucleotide} += 1;
    }
    return \%hash;
}
