# PHPイメージをベースに構築
FROM php:8.1-apache

# PDO MySQL拡張機能をインストール
RUN docker-php-ext-install pdo_mysql

# 作業ディレクトリを設定
WORKDIR /var/www/html

# ローカルファイルをコンテナにコピー
COPY . /var/www/html

# 必要な権限を設定
RUN chown -R www-data:www-data /var/www/html

# ポートを公開
EXPOSE 80
