module Mixer
  class HashUtil
    class << self
      def transform_keys(h)
        result = {}

        h.each_key do |key|
          new_key = yield(key)
          result[new_key] = h[key]
        end

        result
      end
    end
  end
end
