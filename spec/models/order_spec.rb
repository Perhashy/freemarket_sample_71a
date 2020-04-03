require 'rails_helper'

RSpec.describe Order, type: :model do
  describe '#create' do
    context 'can save' do
      it 'is valid with all data' do
        order= build(:order)
        expect(order).to be_valid
      end
    end

    context 'can not save' do
      it 'is invalid without address_id' do
        message = build(:order, address: nil )
        message.valid?
        expect(message.errors[:address]).to include("を入力してください")
      end
    end
  end
end
