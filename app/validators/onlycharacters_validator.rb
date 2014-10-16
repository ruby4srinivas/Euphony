class OnlycharactersValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~  /^([a-zA-Z\_\-\.\  ]+)$/i
      object.errors[attribute] << (options[:message] || "only allow characters ")
    end
  end
end