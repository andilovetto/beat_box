require "./lib/linked_list"
require "./lib/node"
RSpec.describe LinkedList do
    it 'exists and has attributes' do
        list = LinkedList.new
        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
        expect(list.append("doop")).to eq("doop")
        expect(list.head).to be_an_instance_of(Node)
        expect(list.head.next_node).to eq(nil)
        expect(list.count).to eq(1)
        expect(list.to_string).to eq("doop")
    end
end