class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string      :name        # 氏名
      t.string      :first_name  # 姓
      t.string      :last_name   # 名
      t.string      :first_name_roman  # 姓ローマ字
      t.string      :last_name_roman   # 名ローマ字
      t.string      :email      # Email
      t.string      :zipcode    # 郵便番号
      t.string      :region     # 都道府県
      t.string      :address    # 住所
      t.string      :tel        # 電話番号
      t.string      :fax        # Fax
      t.string      :mobile     # 携帯番号
      t.text        :body       # その他・要望
      t.timestamps
    end

    create_table :passports do |t|
      t.references  :user
      t.string      :no         # パスポートNO
      t.string      :sex        # 男女
      t.string      :origin     # 国籍
      t.string      :resident   # 居住国
      t.date        :birthday   # 誕生日
      t.date        :issued_at  # 発行年月日
      t.string      :expired_at # 有効期限
      t.timestamps
    end

    create_table :questions do |t|
      t.references  :user
      t.boolean     :a, :default => false
      t.boolean     :b, :default => false
      t.boolean     :c, :default => false
      t.boolean     :d, :default => false
      t.boolean     :e, :default => false
      t.boolean     :f, :default => false
      t.boolean     :g, :default => false
      t.timestamps
    end

  end

  def self.down
    drop_table :users
    drop_table :passports
  end
end
