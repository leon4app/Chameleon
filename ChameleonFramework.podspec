Pod::Spec.new do |s|
  s.name         		= "ChameleonFramework"
  s.version     		= "2.2.1"
  s.summary      		= "Color Framework for iOS (Obj-C & Swift)"
  s.homepage    		= "http://10.62.11.48/xielh/Chameleon"
  s.screenshots  		= "https://camo.githubusercontent.com/bde5aa6ee0e1feec044d184a735da8024c60c04c/687474703a2f2f692e696d6775722e636f6d2f427771486842342e706e67"

  s.license      		= { :type => "MIT", :file => "LICENSE.md" }
  s.author       		= ["Vicc Alexander", "Leon Tse"]
  s.platform     		= :ios
  s.ios.deployment_target = '8.0'
  s.source       		= { :git => "http://10.62.11.48/xielh/Chameleon.git", 
                     		:tag => s.version.to_s }
  
  s.public_header_files = 'Chameleon/Chameleon.h'
  s.source_files = 'Chameleon/Chameleon.h'
  # s.public_header_files = 'Pod/Classes/Objective-C/*.h'
  s.frameworks   = 'UIKit', 'QuartzCore', 'CoreGraphics'

  s.default_subspecs = 'Default'

  s.subspec 'Default' do |ss|
    ss.public_header_files = 'Pod/Classes/Objective-C/*.h'
    ss.source_files = 'Pod/Classes/Objective-C/*.{h,m}'
  end

  s.subspec 'Swift' do |ss|
      ss.ios.deployment_target = '8.0'
      ss.source_files = 'Pod/Classes/Swift/ChameleonShorthand.swift'
      ss.dependency 'ChameleonFramework/Default'
  end
end
