namespace :yaffle do
  desc "Prints out the word 'Yaffle'"
  task :squawk => :environment do
    puts "squawk!"
  end
end