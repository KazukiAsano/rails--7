require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    let(:params) {{name:"satou"}}
    it "年齢1:ユーザーの名前が取得できること" do
      params.merge!(age:1)
      user=User.new(params)
      expect(user.desc_user).to eq "satouちゃん"
    end
    it "年齢15:ユーザーの名前が取得できること" do
      params.merge!(age:15)
      user=User.new(params)
      expect(user.desc_user).to eq "satouくん"
    end
    it "年齢25:ユーザーの名前が取得できること" do
      params.merge!(age:25)
      user=User.new(params)
      expect(user.desc_user).to eq "satouさん"
    end
  end
end
