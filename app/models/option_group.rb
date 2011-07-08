class OptionGroup < ActiveRecord::Base
  has_many :properties
  has_many :option_types
  acts_as_list
  
  
  def cannot_include?(item)
    case item
      when Property
        (!item.option_group.blank? && item.option_group.id != self.id)
      when OptionType
        (!item.option_group.blank? && item.option_group.id != self.id)
      else true
    end
  end
end