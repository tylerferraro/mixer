module Mixer
  class BaseModel
    include Virtus.model

    def initialize(json_data)
      self.attribute_set.each do |virtus_attribute|
        json_name = camelize(virtus_attribute.name)
        value = json_data[json_name]

        virtus_attribute.set(value) unless value.nil?
      end
    end

    protected

    def camelize(term)
      term.to_s
          .split('_')
          .map
          .with_index { |word, i| i == 0 ? word : word.capitalize }
          .join
    end
  end
end
