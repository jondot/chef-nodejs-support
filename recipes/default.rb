include_recipe "nodejs::npm"

execute "npm install forever --global" do
  not_if 'which forever'
end

execute "npm install coffee-script@#{node['nodejs-support']['coffeescript_version']} --global" do
  not_if 'which coffee'
end
