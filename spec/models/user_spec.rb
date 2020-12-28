require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    # パラメータをまとめて定義
    let(:params) {{name: "satou", age: 1}}
    let(:params2) {{name: "satou", age: 15}}
    let(:params3) {{name: "satou", age: 30}}

    # パラメータを使用してテスト
    it "年齢1：ユーザーの名前が取得できること" do
      user = User.new(params)
      expect(user.disp_name).to eq "satouちゃん"
    end
    it "年齢15：ユーザーの名前が取得できること" do
      user = User.new(params2)
      expect(user.disp_name).to eq "satouくん"
    end
    it "年齢20：ユーザーの名前が取得できること" do
      user = User.new(params3)
      expect(user.disp_name).to eq "satouさん"
    end
  end
end