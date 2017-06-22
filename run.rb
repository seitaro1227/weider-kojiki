require "./modules/vote.rb"
include Vote

# 次のようなURLから
# http://www.weider-jp.com/know/bukatsu/club?param=treppWg3pbl1Vo9qlqwGPbc03pM5rWKL
# treppWg3pbl1Vo9qlqwGPbc03pM5rWKL
# を取り出し
club = {p: 'ここに貼り付けるンマ'}

# 投票回数を指定します。
2.times do
  vote_to club
  clear_cookie
  sleep 30
end