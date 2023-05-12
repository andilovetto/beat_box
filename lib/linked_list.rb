class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(beat)
        if @head == nil
            @head = Node.new(beat)
        else
            #require 'pry'; binding.pry
            @head.next_node = Node.new(beat)
        end
        beat
    end
    def count
        return 0 if @head == nil
        counter = 1
        current_node = @head
        until current_node.next_node == nil do
            counter += 1
            current_node = current_node.next_node
        end
        counter
    end
    def to_string
        
    end
end