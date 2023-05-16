require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
    it 'exists and has attributes' do
        bb = BeatBox.new
        expect(bb).to be_an_instance_of(BeatBox)
        expect(bb.list.head).to eq(nil)
        expect(bb.append("deep doop ditt")).to eq("deep doop ditt")
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doop")
        expect(bb.append("woo hoo shu")).to eq("woo hoo shu")
        expect(bb.count).to eq(6)
        
    end
end