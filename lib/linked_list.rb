class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(beat)
        @head = Node.new(beat)
        @head.data
    end
end