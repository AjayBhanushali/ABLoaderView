Pod::Spec.new do |s|
          #1.
          s.name               = "ABLoaderView"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "ABLoaderView is an amazing framework to add gradient loaders your views."
          #4.
          s.homepage        = "https://www.linkedin.com/in/ajaybhanushali/"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Ajay Bhanushali"
          #7.
          s.platform            = :ios, "11.0"
          #8.
          s.source              = { :git => "URL", :tag => "1.0.0" }
          #9.
          s.source_files     = "ABLoaderView", "ABLoaderView/**/*.{h,m,swift}"
    end