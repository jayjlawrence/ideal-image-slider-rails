
# Builds a fresh deployment of the assets from the source

require 'json'

package='Ideal-Image-Slider-JS'

unless File.exists?("#{package}/package.json")
  STDERR.puts "You need to have the #{package} source checked out in this directory"
  exit 1
end

dest_dir=File.join('lib', 'ideal', 'image', 'slider')

js_info=JSON.load(File.open("#{package}/package.json"))
puts js_info.inspect

File.open(File.join(dest_dir, 'rails', 'version.rb'), 'w') do |fout|
  fout.puts <<EOF
module Ideal
  module Image
    module Slider
      module Rails
        VERSION = "#{js_info['version']}"
      end
    end
  end
end
EOF
end

require 'fileutils'
FileUtils.copy(File.join(package, 'ideal-image-slider.css'), File.join('vendor', 'assets', 'stylesheets'))
begin
  FileUtils.mkdir(File.join('vendor', 'assets', 'stylesheets', 'ideal-image-slider'))
rescue Errno::EEXIST
  # who cares if it exists!
end
FileUtils.copy(File.join(package, 'themes', 'default', 'default.css'), File.join('vendor', 'assets', 'stylesheets', 'ideal-image-slider'))

FileUtils.copy(File.join(package, 'ideal-image-slider.js'), File.join('vendor', 'assets', 'javascripts'))
