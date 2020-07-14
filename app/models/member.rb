class Member
  attr_reader :name, :photoUrl, :allies, :enemies, :affiliation
  def initialize(attributes)
    @name = attributes[:name]
    @photo = attributes[:photoUrl]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
end