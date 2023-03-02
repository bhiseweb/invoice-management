# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'avatar' do
    it 'should have one attached avatar' do
      user = FactoryBot.create(:user)
      expect(user.avatar).to be_an_instance_of(ActiveStorage::Attached::One)
    end
  end
end
