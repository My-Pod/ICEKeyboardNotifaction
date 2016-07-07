Pod::Spec.new do |s|
s.name             = 'ICEKeyboardNotifaction'
s.version          = '1.0.0'
s.summary          = '对键盘弹出和隐藏的监听封装'
s.description      = <<-DESC
TODO: 对键盘弹出和隐藏的监听封装,方便集成, 并且跟踪动画
DESC

s.homepage         = 'https://github.com/My-Pod/ICEKeyboardNotifaction'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'gumengxiao' => 'rare_ice@163.com' }
s.source           = { :git => 'https://github.com/My-Pod/ICEKeyboardNotifaction.git', :tag => s.version.to_s }

s.ios.deployment_target = '7.0'
s.source_files = 'Classes/*.{h,m}'

end
