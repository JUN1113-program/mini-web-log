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
  context "投稿できない場合" do
    it "titleが未入力である" do
      weblog = build(:weblog, title: "")
      weblog.valid?
      expect(weblog.errors[:title]).to include("を入力してください")
    end
    it "contentが未入力である" do
      weblog = build(:weblog, content: "")
      weblog.valid?
      expect(weblog.errors[:content]).to include("を入力してください")
    end
    it "title、contentが未入力である" do
      weblog = build(:weblog, title: "", content: "")
      weblog.valid?
      expect(weblog.errors[:content]).to include("を入力してください")
    end
  end
end