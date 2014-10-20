# == Schema Information
#
# Table name: users
#
#  id                        :integer          not null, primary key
#  email                     :string(255)      default(""), not null
#  encrypted_password        :string(255)      default("")
#  reset_password_token      :string(255)
#  reset_password_sent_at    :datetime
#  remember_created_at       :datetime
#  sign_in_count             :integer          default(0), not null
#  current_sign_in_at        :datetime
#  last_sign_in_at           :datetime
#  current_sign_in_ip        :inet
#  last_sign_in_ip           :inet
#  created_at                :datetime
#  updated_at                :datetime
#  name                      :string(255)
#  confirmation_token        :string(255)
#  confirmed_at              :datetime
#  confirmation_sent_at      :datetime
#  unconfirmed_email         :string(255)
#  role                      :integer
#  invitation_token          :string(255)
#  invitation_created_at     :datetime
#  invitation_sent_at        :datetime
#  invitation_accepted_at    :datetime
#  invitation_limit          :integer
#  invited_by_id             :integer
#  invited_by_type           :string(255)
#  invitations_count         :integer          default(0)
#  cash                      :decimal(12, 2)   default(0.0), not null
#  purchased_shares_count    :integer          default(0), not null
#  selling_trades_count      :integer          default(0), not null
#  buying_trades_count       :integer          default(0), not null
#  trader_portfolios_count   :integer          default(0), not null
#  wishlist_portfolios_count :integer          default(0), not null
#

FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    name Faker::Name.name
    email Faker::Internet.email
    password Faker::Internet.password
    cash Random.rand(1000000.00..9999999999.00)

    trait :admin do
      role 'admin'
    end

  end
end
