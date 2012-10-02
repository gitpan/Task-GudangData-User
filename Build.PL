
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
  "dist_abstract" => "SHARYANTO's patch modules",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Task-GudangData-User",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "Task::GudangData::User",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "HTTP::Daemon::Patch::IPv6" => 0,
    "LWP::UserAgent::Patch::HTTPSHardTimeout" => 0,
    "LWP::UserAgent::Patch::LogResponse" => 0,
    "Net::HTTP::Methods::Patch::LogRequest" => 0,
    "UUID::Random::Patch::UseMRS" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
