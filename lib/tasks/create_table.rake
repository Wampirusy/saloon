task :create_table => :environment do
  saloon = Saloon.new(:name => 'mcDonalds', :time_open => '10:00:00', :time_close => '22:00:00')
  saloon.save
  table = Table.new(:name => 'table near wc', :saloon => saloon).save
end
