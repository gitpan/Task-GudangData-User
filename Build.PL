
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Modules which use data from gudangdata.org",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Task-GudangData-User",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Task::GudangData::User",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Business::BankCard::Indonesia" => 0,
    "Business::BankList::Indonesia" => 0,
    "Business::ID::BCA" => 0,
    "Business::ID::Mandiri" => 0,
    "Locale::ID::Locality" => 0,
    "Locale::ID::Province" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "Capture::Tiny" => 0,
    "Test::More" => "0.88",
    "blib" => 0
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
