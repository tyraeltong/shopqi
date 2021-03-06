# encoding: utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :user do
    email 'admin@shopqi.com'
    shop_attributes({
      name: '测试商店',
      email: 'admin@shopqi.com',
      plan: 'professional',
      domains_attributes: [{subdomain: 'shopqi', domain: Setting.store_host}]
    })
    password '666666'
    password_confirmation '666666'
  end

  factory :user_admin, :parent => :user do
    email 'admin@shopqi.com'
    name 'admin'
  end

  factory :user_saberma, :parent => :user_admin do
    email 'mahb45@gmail.com'
    name 'saberma'
  end

  factory :user_liwh, :parent => :user_admin do
    email 'liwh87@gmail.com'
    name 'liwh'
  end

  factory :normal_user, class: User do # 普通用户
    name "张三"
    email 'zhangsan@shopqi.com'
    password '666666'
    password_confirmation '666666'
    admin false
  end

  factory :free_user, class: User do # 免费用户
    email 'free@shopqi.com'
    shop_attributes({
      name: '免费商店',
      email: 'free@shopqi.com',
      plan: 'free',
      domains_attributes: [{subdomain: 'free', domain: Setting.store_host}]
    })
    password '666666'
    password_confirmation '666666'
  end

end
