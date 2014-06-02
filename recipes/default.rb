include_recipe "nodejs::npm"

execute "npm install forever@#{node['nodejs-support']['forever_version']} --global" do
  not_if 'which forever'
end

execute "npm install coffee-script@#{node['nodejs-support']['coffeescript_version']} --global" do
  not_if 'which coffee'
end
