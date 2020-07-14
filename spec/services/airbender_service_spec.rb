require 'rails_helper'

describe AirbenderService do
  context "instance methods" do
    context "#members_of_nation" do
      it "returns member data" do
        service = AirbenderService.new
        search = service.members_of_nation("Fire Nation")

        expect(search).to be_an Array
        member_data = search.first

        expect(member_data).to have_key :name
        expect(member_data).to have_key :allies
        expect(member_data).to have_key :enemies
        expect(member_data).to have_key :affiliation
      end
    end
  end
end