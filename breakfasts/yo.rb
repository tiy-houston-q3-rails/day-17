Breakfast.where("date_tried IS NULL").each do |breakfast|
  breakfast.date_tried = 5.days.ago
  breakfast.save
end


has_nil_for_date_tried = Breakfast.all.select do |breakfast|
  breakfast.date_tried.nil?
end
has_nil_for_date_tried.each do |breakfast|
  breakfast.date_tried = 5.days.ago
  breakfast.save
end
