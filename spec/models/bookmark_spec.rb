require 'spec_helper'

describe Bookmark do
  before do
    @date = Date.today
    @bookmark = Bookmark.new(name: "Example Name", url: "example.com", date_saved: @date)
  end

  subject { @bookmark }

  it { should respond_to(:name) }
  it { should respond_to(:url) }
  it { should respond_to(:date_saved) }

  it { should be_valid }

  describe "when name is not present" do
    before { @bookmark.name = " " }
    it { should_not be_valid }
  end

  describe "when url is not present" do
    before { @bookmark.url = " " }
    it { should_not be_valid }
  end    

  describe "when url is too short" do
    before { @bookmark.url = "e" }
    it { should_not be_valid }
  end

  describe "when date saved is not present" do
    before { @bookmark.date_saved = " " }
    it { should_not be_valid }
  end
end
