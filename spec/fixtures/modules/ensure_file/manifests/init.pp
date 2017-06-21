class ensure_file {

  File { 
    ensure => directory,
  }
  
  #Etc...

  datacat { '/tmp/ensure_file':
    template => 'ensure_file/sheeps.erb',
  }

  datacat_fragment { 'data foo => 1':
    target => '/tmp/ensure_file',
    data   => { foo => 1 },
  }

  datacat_fragment { 'data bar => 2':
    target => '/tmp/ensure_file',
    data   => { bar => 2 },
  }
}

