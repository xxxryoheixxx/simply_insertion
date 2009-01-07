# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
   
  PREFECTURES_STR = [
    '北海道','青森県','岩手県','秋田県', '宮城県','山形県','福島県','東京都', '神奈川県','千葉県','埼玉県','茨城県',
    '栃木県','群馬県','愛知県','三重県', '岐阜県','静岡県','長野県','山梨県', '富山県','石川県','新潟県','福井県',
    '京都府','滋賀県','大阪府','兵庫県', '奈良県','和歌山県','香川県','愛媛県', '徳島県','高知県','岡山県','広島県',
    '山口県','鳥取県','島根県','福岡県', '佐賀県','長崎県','熊本県','大分県', '宮崎県','鹿児島県','沖縄県' ]

  def regions
    PREFECTURES_STR
  end
end
