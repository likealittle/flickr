# Require of whole library for rails plugins

flickr_config = "#{RAILS_ROOT}/config/flickr.api.yml"       

require File.dirname(__FILE__)+'/lib/flickr.rb'

Flickr::Config.load_from_file flickr_config