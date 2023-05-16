# frozen_string_literal: true

require 'rails_helper'

describe 'モデルのテスト' do
  it '有効な投稿内容の場合は保存されるか' do
    #FactoryBot.build(:list)で作成したListモデルのインスタンスをexpectに渡して、be_validで有効かを判定しています。
    expect(FactoryBot.build(:list)).to be_valid
  end
end