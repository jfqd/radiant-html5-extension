# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class Html5Extension < Radiant::Extension
  version "0.1"
  description "Add html5 tags to radiant"
  url "http://github.com/jfqd/radiant_html5_extension"
  
  def activate
    Page.send :include, HtmlFiveTags
  end
end
