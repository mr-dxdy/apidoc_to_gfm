require "rspec_api_documentation"

require "apidoc_to_gfm/version"
require "apidoc_to_gfm/views"
require "apidoc_to_gfm/writers"

module ApidocToGFM
end

RspecApiDocumentation::Writers.const_set("gfm_writer".classify, ApidocToGFM::Writers::Writer)
