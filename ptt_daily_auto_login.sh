#!/usr/bin/expect -f
set timeout 60
log_file -noappend $env(HOME)/log/ptt.log
spawn telnet -8 ptt.cc
expect "new"
send "$env(PTT_ID)\r"
expect ":"
send "$env(PTT_PWD)\r"
expect {
  "�z�Q�R����L���Ƶn�J���s�u��" {
    send "n\r"
    exp_continue
  }
  "�Ы����N���~��" {
    send "\r"
    exp_continue
  }
  "�����~�{" {
    exit
  }
}


# NOTE:
# �o�̭n�`�N���O�s�X���D�A�]�� PTT �O BIG-5 �s�X�A�����b��l�X���� UTF-8 ������r��|�ɭP�~�P�A���̬O���z�L "iconv -f UTF-8 -t BIG-5" �B�z��l�X�C



# USAGE:
# PTT_ID=PTT_�b�� PTT_PWD=PTT_�K�X ptt

# Crontab
# PATH=/path/to/ptt/bin
# 6 6 * * * LC_ALL=zh_TW.Big5 PTT_ID=�b�� PTT_PWD=�K�X ptt

