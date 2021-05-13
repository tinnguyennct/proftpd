# proftpd
## proftpd with TLS connection authen via mysql
### 1. Install Proftpd - CentOS7
```bash
yum -y makecache
yum -y install epel-release
yum -y makecache
yum -y install proftpd proftpd-utils proftpd-mysql
```

### 2. Install Mysql
```bash
wget http://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
rpm -Uvh mysql57-community-release-el7-9.noarch.rpm
yum install mysql-server
systemctl start mysqld
systemctl enable mysqld
```

Get root password:
```bash
sudo grep 'password' /var/log/mysqld.log
```

Login mysql with root:
```bash
mysql -uroot -p'[password]'
```

Change pass root:
```bash
mysql_secure_installation
>>>Type password<<<
```

Install
Create database:
```bash
> create database ftp;
> GRANT ALL PRIVILEGES ON [DB Name].* TO 'root'@'%' IDENTIFIED BY 'password';
> FLUSH PRIVILEGES;
```

Import database:

Import file ftp.sql to database created earlier
```bash
mysql -u root -p [DB Name] < [Dir File DB].sql
```

Use this query to insert user access to ftp server:
```bash
INSERT INTO www VALUES ('user', password('[Password]'), '99', '99', '/home/test', '/bin/bash');
```

### 4. Config proftpd

Replace file proftpd.conf, remember change to your info

### 5. Config SSL

Install open-ssl
```bash
yum install openssl -y
```

Copy file proftpd_gen_ssl to /usr/local/bin/

Run command:
```bash
chmod 777 /usr/local/bin/proftpd_gen_ssl
mkdir -p /etc/ssl/private
/usr/local/bin/proftpd_gen_ssl
```
Enter name of file cert & key: proftpd
Input your info
Check have yes cert?
```bash
ll /etc/ssl/private/
ll /etc/ssl/certs/
```
### 6. Restart service

```bash
service proftpd restart
systemctl enable proftpd
```
Change ID of 4paras to ID of user
SQLMinUserGID
SQLMinUserUID
SQLDefaultGID
SQLDefaultUID
