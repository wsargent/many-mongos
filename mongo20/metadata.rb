name             "mongo20"
maintainer       "Sascha Bates"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures mongo20"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue "0.1.0"

depends 'mongodb'
