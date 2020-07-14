require 'rails_helper'

describe Member do
  it "exists" do
    attrs = {
      name: "Afiko",
      allies: "Fire Nation",
      enemies: "Aang",
      affiliation: "Fire Nation",
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Afiko")
    expect(member.allies).to eq("Fire Nation")
    expect(member.enemies).to eq("Aang")
    expect(member.affiliation).to eq("Fire Nation")
  end
end