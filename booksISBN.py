#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import requests
from lxml import html

def getImage(isbn):
    page = requests.get('http://search.books.com.tw/exep/prod_search.php?key={}'.format(isbn))
    tree = html.fromstring(page.text)
    value = tree.xpath('//input[@name="C1"]')[0].get('value')
    token = '{}/{}/{}/{}'.format(value[:3], value[3:6], value[6:8], value)
    return 'http://www.books.com.tw/img/{}.jpg'.format(token)

def main():
    isbn = sys.argv[1]
    print getImage(isbn)

if __name__ == '__main__':
    main()