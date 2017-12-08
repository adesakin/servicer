open('sample_test.rb', 'w') { |f|
    f << "require 'savon'\n"
    f << "require 'json'\n"
    f << "require 'active_support/core_ext/hash'  #from_xml\n"
    f << "require 'nokogiri'\n"
    f << ""
    f << "class SoapService\n"
    f << "end\n"
  }