#QUICK START

- clone the repository
- configure DB connection
- run `rake db:migrate` 
- run `rake create_table` to add test data
- start `rails server`

#HOW IT WORKS

- реализована только страница бронирования конкретного столика
- по умолчанию берется столик_id=1 и текущая дата, но это можно переопределить через GET параметры `id` и `date`
- время `from` и `to` задается в часах

#TODO

- перенести Order в nosql чтоб хоть как-то избавиться от этого маразма с json'ом
- как-нибудь переделать создание нового ордера, а то что-то я там совсем натупил
- добавить поддержку после полуночных заведений
- ...
