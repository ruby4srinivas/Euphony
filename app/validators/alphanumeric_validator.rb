class AlphanumericValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~  /^([a-zA-Z0-9\_\-\.\ \\ ]+)$/i
      object.errors[attribute] << (options[:message] || "No special characters ")
    end
  end
end