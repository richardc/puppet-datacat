#
define issue5::cat {
  datacat_fragment { "issue5 ${name}":
    target => 'issue5',
    data   => {
      source_path => [ $name ],
    }
  }
}
