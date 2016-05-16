package ONVIF::Analytics::Types::RecordingConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Source_of :ATTR(:get<Source>);
my %Content_of :ATTR(:get<Content>);
my %MaximumRetentionTime_of :ATTR(:get<MaximumRetentionTime>);

__PACKAGE__->_factory(
    [ qw(        Source
        Content
        MaximumRetentionTime

    ) ],
    {
        'Source' => \%Source_of,
        'Content' => \%Content_of,
        'MaximumRetentionTime' => \%MaximumRetentionTime_of,
    },
    {
        'Source' => 'ONVIF::Analytics::Types::RecordingSourceInformation',
        'Content' => 'ONVIF::Analytics::Types::Description',
        'MaximumRetentionTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::duration',
    },
    {

        'Source' => 'Source',
        'Content' => 'Content',
        'MaximumRetentionTime' => 'MaximumRetentionTime',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::RecordingConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RecordingConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Source


=item * Content


=item * MaximumRetentionTime




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::RecordingConfiguration
   Source =>  { # ONVIF::Analytics::Types::RecordingSourceInformation
     SourceId =>  $some_value, # anyURI
     Name => $some_value, # Name
     Location => $some_value, # Description
     Description => $some_value, # Description
     Address =>  $some_value, # anyURI
   },
   Content => $some_value, # Description
   MaximumRetentionTime =>  $some_value, # duration
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

