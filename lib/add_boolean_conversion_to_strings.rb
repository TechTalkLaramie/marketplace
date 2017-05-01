class String
  def to_b
    not ActiveRecord::Type::Boolean::FALSE_VALUES.include?(self)
  end
end