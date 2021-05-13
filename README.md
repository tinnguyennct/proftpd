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

