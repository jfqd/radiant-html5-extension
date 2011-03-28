module HtmlFiveTags
  include Radiant::Taggable
  
  desc %{
    html5 is here to stay. Use it today - for every new project!
    
    Need to know more about html5?
    There are tons of good articles about html5 out there!
    
    * http://diveintohtml5.org/
    * http://html5boilerplate.com/
    * http://html5doctor.com/
    * http://lmgtfy.com/?q=html5
  }
  tag 'html5' do |tag|
    tag.expand
  end

  desc %{ 
    Renders the new html5 doctype
    
    <pre><!DOCTYPE html></pre>
  }
  tag 'html5:doctype' do |tag|
    %{<!DOCTYPE html>}
  end
  
  desc %{
    html5 utf8 charset encoding
  }
  tag 'html5:charset' do |tag|
    %{<meta charset="utf-8" />}
  end
  
  desc %{
    html5 support for older browsers. Add this tag to your html head element to load the modernizr JavaScript library.
    
    <pre>
      <script src="/javascripts/modernizr-1.6.min.js"></script>
    </pre>
  }
  tag 'html5:legacy_support' do |tag|
    %{<script src="/javascripts/modernizr-1.6.min.js"></script>}
  end
  
  desc %{ tbd }
  tag 'html5:article' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<article #{a unless a.empty?}>#{tag.expand}</article>}
    else
      raise TagError.new("'html5:article' tag must have any content")
    end
  end
  
  desc %{ tbd }
  tag 'html5:section' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<section #{a unless a.empty?}>#{tag.expand}</section>}
    else
      raise TagError.new("'html5:section' tag must have any content")
    end
  end
  
  desc %{ tbd }
  tag 'html5:nav' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<nav #{a unless a.empty?}>#{tag.expand}</nav>}
    else
      raise TagError.new("'html5:nav' tag must have any content")
    end
  end
  
  desc %{ tbd }
  tag 'html5:aside' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<aside #{a unless a.empty?}>#{tag.expand}</aside>}
    else
      raise TagError.new("'html5:aside' tag must have any content")
    end
  end
  
  desc %{ tbd }
  tag 'html5:hgroup' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<hgroup #{a unless a.empty?}>#{tag.expand}</hgroup>}
    else
      raise TagError.new("'html5:hgroup' tag must have any content")
    end
  end
  
  desc %{ tbd }
  tag 'html5:header' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<header #{a unless a.empty?}>#{tag.expand}</header>}
    else
      raise TagError.new("'html5:header' tag must have any content")
    end
  end
  
  desc %{ tbd }
  tag 'html5:footer' do |tag|
    if tag.double?
      a = element_attributes(tag.attr)
      %{<footer #{a unless a.empty?}>#{tag.expand}</footer>}
    else
      raise TagError.new("'footer:aside' tag must have any content")
    end
  end
  
  private
    def element_attributes(tag_attr)
      options = tag_attr.dup
      options.inject('') { |s, (k, v)| s << %{#{k.downcase}="#{v}" } }.strip
    end
end