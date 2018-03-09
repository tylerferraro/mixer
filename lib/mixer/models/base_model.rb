module Mixer
  class BaseModel
    include Virtus.model

    class << self
      def from_api(data)
        opts = HashUtil.transform_keys(data) do |key|
          StringUtil.serpentize(key).to_sym
        end
        self.class.new(opts)
      end
    end
  end
end
