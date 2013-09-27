# extracted from mcollective::config::common and mcollective::plugin
class issue5 {
  datacat_collector { 'issue5':
    before          => File['issue5'],
    target_resource => File['issue5'],
    target_field    => 'source',
    source_key      => 'source_path',
  }

  file { 'issue5':
    ensure       => directory,
    path         => '/tmp/issue5',
    source       => [],
    sourceselect => 'all',
    recurse      => true,
    purge        => true,
    force        => true,
  }

  issue5::cat { 'puppet:///modules/issue5/base': }
  issue5::cat { 'puppet:///modules/issue5/secondary': }
}
