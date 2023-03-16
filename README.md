# Alex Garcia Flora Challenge

![Image description](public/img/logo.png)

## Description

#### To launch the project

- *Example 1* (Product A added + Product C added + Voucher S added + Product A added + Voucher V added + Product B added):
    ``` $ docker-compose run php bin/console flora:calculate:cart --example=1 ```
- *Example 2* (Product A added + Voucher S added + Product A added + Voucher V added + Product B added + Voucher R added + Product C added + Product C added + Product C added):
    ``` $ docker-compose run php bin/console flora:calculate:cart --example=2 ```
- Tests:
    ``` $ docker-compose run php vendor/phpunit/phpunit/phpunit --testdox src/AddToCartCommandTest.php ```

#### Expected result

    ========================Flora Challenge Begin======================
    
    +-------------------- Cart ------------+---------+
    | id                                   | price   |
    +--------------------------------------+---------+
    | A                                    | order 1 |
    | B                                    | order 2 |
    +----------------- total cart: 2€ -----+---------+
    
    ========================Flora Challenge End========================
