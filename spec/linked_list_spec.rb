require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it 'exists and has attributes' do
        list = LinkedList.new
        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
    end

    it 'finds the tail' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        list.append("dop")
        expect(list.find_tail.data).to eq("dop")
    end

    it 'appends' do
        list = LinkedList.new
        expect(list.append("doop")).to eq("doop")
        expect(list.head).to be_an_instance_of(Node)
        expect(list.head.next_node).to eq(nil)
        expect(list.append("deep")).to eq("deep")
        expect(list.head.next_node).to be_an_instance_of(Node)
        expect(list.to_string).to eq("doop deep")
    end

    it 'counts nodes' do
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
        list.append("deep")
        expect(list.count).to eq(2)
    end

    it 'drops the beat as a string' do
        list = LinkedList.new
        list.append("doop")
        expect(list.to_string).to eq("doop")
        list.append("deep")
        expect(list.to_string).to eq("doop deep")
    end

    it 'prepends' do
        list = LinkedList.new
        list.append("plop")
        #require 'pry'; binding.pry
        expect(list.to_string).to eq("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end

    it 'inserts' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(2, "woo")
        expect(list.to_string).to eq("dop plop woo suu")
    end

    it 'finds' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.find(2, 1)).to eq("shi")
        expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it 'includes' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.includes?("deep")).to eq(true)
        expect(list.includes?("dep")).to eq(false)
    end

    it 'pops' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.pop).to eq("blop")
        expect(list.pop).to eq("shu")
        expect(list.to_string).to eq("deep woo shi")
    end    
end