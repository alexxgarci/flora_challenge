# Alex Garcia Flora Challenge

![Image description](public/img/logo.png)

## Installation

1. 😀 Clone https://github.com/ger86/symfony-docker.

2. Create the file `./.docker/.env.nginx.local` using `./.docker/.env.nginx` as template. The value of the variable `NGINX_BACKEND_DOMAIN` is the `server_name` used in NGINX.

3. Ensure you have docker and [docker-sync](http://docker-sync.io/) installed.

4. Go inside folder `./docker` and run `docker-sync-stack start` to start containers.

5. You should work inside the `php` container. This project is configured to work with [Remote Container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for Visual Studio Code, so you could run `Reopen in container` command after open the project.

    NOTE: Another option is to find the `php` container name and access via: ``` docker exec {containerName} -it bash ```

6. Inside the `php` container, run `composer install` to install dependencies from `/var/www/symfony` folder.

7. Clone [https://github.com/alexxgarci/flora_challenge](https://github.com/alexxgarci/flora_challenge) at `/var/www/symfony`.


#### To launch the project

- *Example 1* (Product A added + Product C added + Voucher S added + Product A added + Voucher V added + Product B added):

    + at `./docker` folder:
    ``` $ docker-compose run php bin/console flora:calculate:cart --example=1 ```
    + or inside the `php` container:
    ``` $ bin/console flora:calculate:cart --example=1 ```
- *Example 2* (Product A added + Voucher S added + Product A added + Voucher V added + Product B added + Voucher R added + Product C added + Product C added + Product C added):

    + at `./docker` folder:
    ``` $ docker-compose run php bin/console flora:calculate:cart --example=2 ```
    + or inside the `php` container:
    ``` $ bin/console flora:calculate:cart --example=2 ```
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
