class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def find_tail
        current_node = @head
        return current_node unless current_node.next_node
        return current_node unless current_node.next_node while current_node = current_node.next_node
    end

    def append(beat)
        if @head
            find_tail.next_node = Node.new(beat)
        else
            
            @head = Node.new(beat)
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
        return "" if @head == nil
        return @head.data if @head.next_node == nil
       
        the_beat = @head.data #doop 
        current_node = @head.next_node # node instance with value/data attr of deep
    
        while current_node.next_node != nil do
            the_beat << " " +  current_node.data
            current_node = current_node.next_node
        end
        the_beat << " " +  current_node.data
    end
    
    def prepend(beat)
        old_head = @head
        @head = Node.new(beat)
        @head.next_node = old_head
        beat
    end

    def insert(position, beat)
        tail = @head
        previous = nil
        position.times do
            previous = tail
            tail = tail.next_node
        end
        previous.next_node = Node.new(beat)
        previous.next_node.next_node = tail
    end

    def find(position, amount)
        current_node = @head
        position.times do
            current_node = current_node.next_node
        end
        found_nodes = ""
        amount.times.with_index do |index|
            found_nodes << current_node.data
            if current_node.next_node != nil
                current_node = current_node.next_node
            end
            found_nodes << " " unless amount == index + 1
        end
        found_nodes
    end

    def includes?(beat)
        current_node = @head
        #require 'pry'; binding.pry
        while current_node.next_node != nil do
            return true if current_node.data == beat
            current_node = current_node.next_node
        end
        return false
    end
end 