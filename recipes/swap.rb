include_recipe 'sysctl::default'

swap_file '/mnt/swap' do
  size node['machine']['swap']['size']
  persist true
end

sysctl_param 'vm.swappiness' do
  value node['machine']['swap']['swappiness']
end