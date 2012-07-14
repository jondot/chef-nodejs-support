include_recipe "nodejs::npm"
execute "npm install forever --global" do
  not_if 'which forever'
end
