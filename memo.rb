    require "csv"
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
    memo_type = gets.chomp
   
    if memo_type == "1"
     puts "拡張子を除いたファイルを入力してください。"
     memo_type2 = gets.chomp
     puts "メモしたい内容を記入してください"
     puts "完成したらCtrl + Dを押します"
     memo_type = STDIN.read
     CSV.open("#{memo_type2}.csv","w") do | csv |
     csv << ["#{memo_type}"]
    end 
    
    elsif memo_type == "2"
     puts "既存のファイルに追記します"
     puts "追記したいファイル名を入力してください"
     memo_type3 = gets.chomp
     puts "編集したい内容を記入してください"
     puts "完成したらCtrl + Dを押します"
     memo_type = STDIN.read
     CSV.open("#{memo_type3}.csv","a") do | csv |
     csv << ["#{memo_type}"]
    end
    else
     puts "エラー1か2を押してください"
    end