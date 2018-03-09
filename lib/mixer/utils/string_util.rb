module Mixer
  class StringUtil
    class << self
      def camelize(term)
        term.to_s.gsub(/_([a-z])/) { |char| "#{char.capitalize}" }
      end

      def serpentize(term)
        term.to_s.gsub(/[A-Z]/) { |char| "_#{char.downcase}" }
      end
    end
  end
end