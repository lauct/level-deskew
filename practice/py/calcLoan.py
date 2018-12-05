#!/usr/bin/python
# coding=utf-8
capital		= 8000
annualRate	= 0.0185
month		= 11*12

# 每月應攤付本息金額＝貸款本金*{[(1＋年利率 / 12) ** 月數 ] *(年利率 / 12) } / {[(1＋年利率/12 ) ** 月數]－1}

MC = capital*(((1+annualRate/12)**month)*(annualRate/12))/(((1+annualRate/12 )**month)-1)
print "每月應攤付本息金額:"+str(MC)
interest=MC*month-capital
print "應攤總息金額:"+str(interest)