# frozen_string_literal: true

require 'rails_helper'
#describe : 投稿のテスト
describe '投稿のテスト' do
  #let!：let!による事前評価
  let!(list) { create(:list,title:'hoge',body:'body') }
  #describe：トップ画面(top_path)のテスト
  describe 'トップ画面(top_path)のテスト' do
    #before：トップ画面への遷移
    before do
      visit top_path
    end
    #context：表示の確認
    context '表示の確認' do
      #it：トップ画面(top_path)に「ここはTopページです」が表示されているか
      it 'トップ画面(top_path)に「ここはTopページです」が表示されているか' do
        expect(page).to have_link "", href: top_path
      end
      #it：top_pathが"/top"であるか
      it 'top_pathが"/top"であるか' do
        expect(current_path).to eq('/top')
      end
    end
  end
  
  #describe ：投稿画面のテスト
  describe '投稿画面(new_list_path)のテスト' do
    #before ：投稿画面への遷移
    before do
      visite new_list_path
    end
    #context：表示の確認 
    context '表示の確認' do
      #it ：new_list_pathが"/lists/new"であるか'
      it 'new_list_pathが"/lists/new"であるか' do
        expect(current_path).to eq('/list/new')
      end
      #it：投稿ボタンが表示されているか'
      it '投稿ボタンが表示されている' do
        expect(page).to have_buttom '投稿'
      end
    end
    #context：投稿処理のテスト
    context '投稿処理のテスト' do
      #it：投稿後のリダイレクト先は正しいか
      it '投稿後のリダイレクト先は正しいか' do
        fill_in 'list[title]', with: Faker::Lorem.characters(number:10)
        fill_in 'list[body]', with: Faker::Lorem.characters(number:30)
        click_buttom '投稿'
        expect(page).to have_current_path list_path(list.last)
      end
    end
  end

  describe：一覧画面のテスト
    before：一覧画面への遷移
    context ：一覧の表示とリンクの確認
      it：一覧表示画面に投稿されたものが表示されているか
        テストコード

  describe：詳細画面のテスト
    before：詳細画面への遷移
    context：表示の確認
      it：削除リンクが存在しているか
        テストコード
      it：編集リンクが存在しているか
    context：リンクの遷移先の確認
      it：編集の遷移先は編集画面か
        テストコード
    context：list削除のテスト
      it：listの削除
        テストコード 
        
  describe：編集画面のテスト
    before：編集画面への遷移
    context：表示の確認
      it：編集前のタイトルと本文がフォームに表示(セット)されている
        テストコード
      it：保存ボタンが表示される
    context：更新処理に関するテスト
      it：更新後のリダイレクト先は正しいか
        テストコード
end