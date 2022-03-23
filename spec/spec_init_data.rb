class SpecInitData
  def self.init    
    ['man', 'woman'].each do |gender|    
      AccountBanLevel.find_or_create_by(
        name: '正常',
        intro: '正常',
        code_level: '正常',
        code: 'normal',
        limit_hours: 0
      )

      MemberLevel.create(
        name: "正常用户",
        code: "normal",
        gender: gender,    
        day_tell_count: 100,
        day_listen_count: 100,
      )

      AccountBanLevel.find_or_create_by(
        name: '广告营销',
        intro: '引流、打广告、欺诈',
        code_level: 'ad',
        code: 'ad',
        limit_hours: 0
      )

      MemberLevel.create(
        name: "广告营销",
        code: "ad",
        gender: gender,    
        day_tell_count: 100,
        day_listen_count: 100,
      )

    end
  end
end