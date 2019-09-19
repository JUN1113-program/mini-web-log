require 'rails_helper'
describe Weblog do
  context "投稿できる場合" do
    it "title, context, image, viewedが存在する場合" do
      weblog = build(:weblog)
      expect(weblog).to be_valid
    end
    it "title, context, imageが存在する場合" do
      weblog = build(:weblog, viewed: "")
      expect(weblog).to be_valid
    end
    it "title, context, viewedが存在する場合" do
      weblog = build(:weblog, image: "")
      expect(weblog).to be_valid
    end
    it "title, contextが存在する場合" do
      weblog = build(:weblog, image: "", viewed: "")
      expect(weblog).to be_valid
    end
  end
end