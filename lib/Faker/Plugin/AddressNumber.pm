package Faker::Plugin::AddressNumber;

use 5.014;

use strict;
use warnings;

use registry;
use routines;

use Data::Object::Class;
use Data::Object::ClassHas;

extends 'Data::Object::Plugin';

# VERSION

# ATTRIBUTES

has 'faker' => (
  is => 'ro',
  isa => 'InstanceOf["Faker"]',
  req => 1,
);

# METHODS

method execute() {
   my $faker = $self->faker;

  my $options = {
    number_markers => 1,
  };

  return $faker->process(['address', 'number'], $options);
}

1;
