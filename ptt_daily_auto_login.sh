#!/usr/bin/expect -f
set timeout 60
log_file -noappend $env(HOME)/log/ptt.log
spawn telnet -8 ptt.cc
expect "new"
send "$env(PTT_ID)\r"
expect ":"
send "$env(PTT_PWD)\r"
expect {
  "您想刪除其他重複登入的連線嗎" {
    send "n\r"
    exp_continue
  }
  "請按任意鍵繼續" {
    send "\r"
    exp_continue
  }
  "批踢踢實業坊" {
    exit
  }
}


# NOTE:
# 這裡要注意的是編碼問題，因為 PTT 是 BIG-5 編碼，直接在原始碼中放 UTF-8 的中文字串會導致誤判，筆者是先透過 "iconv -f UTF-8 -t BIG-5" 處理原始碼。



# USAGE:
# PTT_ID=PTT_帳號 PTT_PWD=PTT_密碼 ptt

# Crontab
# PATH=/path/to/ptt/bin
# 6 6 * * * LC_ALL=zh_TW.Big5 PTT_ID=帳號 PTT_PWD=密碼 ptt

