class FancyAlgorithm
  attr_accessor :strategy

  def initialize(strategy)
    @strategy = strategy.to_s
  end

  def perform(list)
    self.send("#{strategy}_algorithm!", list)
  end

  private

    def sort_algorithm!(list)
      return list if list.size <= 1

      0.upto(list.size - 1) do |i|
        (list.size - 1).downto(i + 1) do |j|
          if list[j] < list[j - 1]
            list[j], list[j - 1] = list[j - 1], list[j]
          end
        end
      end
      list
    end

    def unsort_algorithm!(list)
      return list.shuffle unless list.empty?
    end
end
