packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libbsd0
  /
when "precise"
  packages |= %w/
    libbsd0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
