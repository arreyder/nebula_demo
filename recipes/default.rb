all = search(:node, "name:crr-tst0")
test = search(:node, "run_list:*role\\[cassandra\\]*")

template "/tmp/foo" do
  mode "644"
  owner "root"
  source "foo.erb"
  variables(
    :all => all,
    :test => test 
  )
end
