tables_names = %w(members articles entries)
tables_names.each do |table_name|
  path = Rails.root.join("db/seeds", Rails.env, table_name + ".rb")
  if File.exist?(path)
    puts "Create #{table_name}..."
    require path
  end
end