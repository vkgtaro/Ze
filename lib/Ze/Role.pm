package Ze::Role;
use strict;
use warnings;
use Ze::Class ();
use Mouse::Role ();
 
Mouse::Exporter->setup_import_methods(
    also => ['Mouse::Role'],
);
          
1;

=head1 NAME

Ze::Role - same as Mouse Role.

=cut
