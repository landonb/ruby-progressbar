class ProgressBar
  module Format
    class Molecule
      MOLECULES = {
        :t => [:@title_comp,   :title],
        :T => [:@title_comp,   :title],
        :c => [:@progressable, :progress],
        :C => [:@progressable, :total],
        :p => [:@percentage,   :percentage],
        :P => [:@percentage,   :percentage_with_precision],
        :j => [:@percentage,   :justified_percentage],
        :J => [:@percentage,   :justified_percentage_with_precision],
        :a => [:@time,         :elapsed_with_label],
        :e => [:@time,         :estimated_with_unknown_oob],
        :E => [:@time,         :estimated_with_friendly_oob],
        :f => [:@time,         :estimated_with_no_oob],
        :B => [:@bar,          :complete_bar],
        :b => [:@bar,          :bar],
        :w => [:@bar,          :bar_with_percentage],
        :i => [:@bar,          :incomplete_space],
        :r => [:@rate,         :rate_of_change],
        :R => [:@rate,         :rate_of_change_with_precision],
      }

      BAR_MOLECULES     = %w{w B b i}

      attr_reader   :key
      attr_reader   :method_name

      def initialize(letter)
        @key         = letter
        @method_name = MOLECULES.fetch(@key.to_sym)
      end

      def bar_molecule?
        BAR_MOLECULES.include? @key
      end
    end
  end
end
