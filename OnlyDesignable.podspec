Pod::Spec.new do |s|
  s.name	 	 = "OnlyDesignable"
  s.version		 = "2.0.0"
  s.summary		 = "Only collection of designable view for storyboard"
  s.homepage	 = "https://github.com/kciter/OnlyDesignable"
  s.license		 = { :type => 'MIT', :file => 'LICENSE' }
  s.author		 = { "kciter" => "kciter@naver.com" }
  s.source       = { :git => "https://github.com/kciter/OnlyDesignable.git", :tag => "#{s.version}" }
  s.platform	 = :ios, '8.0'
  s.source_files = 'Sources/*.{swift}'
  s.frameworks	 = 'UIKit', 'Foundation'
  s.requires_arc = true
end	
