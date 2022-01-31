body = "MorningGloryが4対2でSunflowerに勝利。\n\n" +
  "2回表、6番渡辺の二塁打から７番山田、８番高橋の連続タイムリーで２点先制。" +
  "９回表、ランナー一、二塁で２番田中の二塁打で２点を挙げ、ダメを押しました。\n\n" +
  "投げては初先発の山本が８回を２失点に抑え、伊藤、中村と繋いで逃げ切りました。"

0.upto(29) do |idx|
  Article.create(
    title: "Article#{idx+10}",
    body: "blah,  blah, blah..",
    released_at: 100.days.ago.advance(days: idx),
    expired_at: nil,
    member_only: false,
  )
end
