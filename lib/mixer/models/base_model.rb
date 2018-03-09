module Mixer
  class BaseModel
    include Virtus.model

    class << self
      def from_api(data)
        opts = HashUtil.transform_keys(data) { |key| StringUtil.serpentize(key).to_sym }
        self.class.new(opts)
      end
    end
  end
end
