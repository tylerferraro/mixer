module Mixer
  class Model
    include Virtus.model

    class << self
      def from_api(data)
        opts = HashUtil.transform_keys(data) do |key|
          StringUtil.serpentize(key).to_sym
        end

        new(opts)
      end
    end
  end
end
