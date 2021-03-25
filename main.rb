def jyanken(count)
  type = ["グー！","チョキ！","パー！"]
  
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  my_hand = gets.to_i
  partner_hand = rand(3)
  
  if my_hand == 3
    return
  end
  
  if count == 0
    puts "ホイ！"
  else
    puts "ショ"
  end
  
  puts "----------------"
  
  puts "あなた:#{type[my_hand]}を出しました"
  puts "相手:#{type[partner_hand]}を出しました"
  
  if my_hand == 0 && partner_hand == 1 || my_hand == 1 && partner_hand == 2 || my_hand == 2 && partner_hand == 0
    cursor(0)
  elsif my_hand == 1 && partner_hand == 0 || my_hand == 2 && partner_hand == 1 || my_hand == 0 && partner_hand == 2
    cursor(1)
  else my_hand == partner_hand
    puts "----------------"
    puts "あいこで..."
    count += 1
    jyanken(count)
  end
end

def cursor(flag)
  cursor = ["上", "下", "左", "右"]
  your_cursor = rand(4)
  
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  my_cursor = gets.to_i
  puts "ホイ！"
  puts "----------------"
  
  puts "あなた:#{cursor[my_cursor]}を出しました"
  puts "相手:#{cursor[your_cursor]}を出しました"
  
  if my_cursor == your_cursor && flag == 0
    puts "あなたが勝ちました"
  elsif my_cursor == your_cursor && flag == 1
    puts "あなたが負けました"
  else
    jyanken(0)
  end
  
end

puts "じゃんけん..."
jyanken(0)