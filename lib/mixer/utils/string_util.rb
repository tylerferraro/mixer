module Mixer
  class StringUtil
    class << self
      def camelize(term)
        term.to_s.gsub(/_([a-z0-9])/) { |match| match[1].capitalize }
      end

      def serpentize(term)
        term.to_s.gsub(/[A-Z]/) { |char| "_#{char.downcase}" }
      end
    end
  end
end
