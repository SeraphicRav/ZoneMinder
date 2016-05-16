package ONVIF::Analytics::Types::EventCapabilities;
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

my %XAddr_of :ATTR(:get<XAddr>);
my %WSSubscriptionPolicySupport_of :ATTR(:get<WSSubscriptionPolicySupport>);
my %WSPullPointSupport_of :ATTR(:get<WSPullPointSupport>);
my %WSPausableSubscriptionManagerInterfaceSupport_of :ATTR(:get<WSPausableSubscriptionManagerInterfaceSupport>);

__PACKAGE__->_factory(
    [ qw(        XAddr
        WSSubscriptionPolicySupport
        WSPullPointSupport
        WSPausableSubscriptionManagerInterfaceSupport

    ) ],
    {
        'XAddr' => \%XAddr_of,
        'WSSubscriptionPolicySupport' => \%WSSubscriptionPolicySupport_of,
        'WSPullPointSupport' => \%WSPullPointSupport_of,
        'WSPausableSubscriptionManagerInterfaceSupport' => \%WSPausableSubscriptionManagerInterfaceSupport_of,
    },
    {
        'XAddr' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
        'WSSubscriptionPolicySupport' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'WSPullPointSupport' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'WSPausableSubscriptionManagerInterfaceSupport' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'XAddr' => 'XAddr',
        'WSSubscriptionPolicySupport' => 'WSSubscriptionPolicySupport',
        'WSPullPointSupport' => 'WSPullPointSupport',
        'WSPausableSubscriptionManagerInterfaceSupport' => 'WSPausableSubscriptionManagerInterfaceSupport',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::EventCapabilities

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
EventCapabilities from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * XAddr


=item * WSSubscriptionPolicySupport


=item * WSPullPointSupport


=item * WSPausableSubscriptionManagerInterfaceSupport




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::EventCapabilities
   XAddr =>  $some_value, # anyURI
   WSSubscriptionPolicySupport =>  $some_value, # boolean
   WSPullPointSupport =>  $some_value, # boolean
   WSPausableSubscriptionManagerInterfaceSupport =>  $some_value, # boolean
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

