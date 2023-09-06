use strict;

package Box;
sub Box_data
{
    my $class = shift;
    my $self = {
               'number' => shift
               };

    bless $self, $class;
    return $self;
}

for (my $i = 0; $i < 100_000_000; $i++) {
    my $o = Box_data Box( $i );
}
