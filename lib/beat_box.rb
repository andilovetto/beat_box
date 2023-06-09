class BeatBox
    attr_accessor :list
    def initialize
        @list = LinkedList.new
    end

    def append(beat)
        new_nodes = beat.split
        new_nodes.each do |node|
            list.append(node)
        end
        beat
    end

    def count
        list.count
    end

    def play
        `say -r 175 -v Boing #{list.to_string}`
    end
end