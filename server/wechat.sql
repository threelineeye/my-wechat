SET NAMES UTF8;
DROP DATABASE IF EXISTS wechat;
CREATE DATABASE wechat CHARSET=UTF8;
USE wechat;

/** 用户登录信息 **/
DROP TABLE IF EXISTS v_login;
CREATE TABLE v_login (
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(25),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16),
    avatar VARCHAR(128),#头像路径
    gender INT #性别 0-女 1-男
);
INSERT INTO v_login VALUES(null,'tom',md5('123456'),'tom@qq.com','13566784388','img/avatar/default.png','1');
INSERT INTO v_login VALUES(null,'jerry',md5('123456'),'jerry@qq.com','15866766688','img/avatar/default.png','0');

/** 完成微信聊天信息功能 **/
DROP TABLE IF EXISTS chat_info;
CREATE TABLE chat_info (
    id INT PRIMARY KEY AUTO_INCREMENT,
    img  VARCHAR(128),
    title  VARCHAR(64),
    subtitle VARCHAR(128),
    time VARCHAR(10),
    uid INT
);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','腾讯新闻','早起要喝水，身体才会倍儿精神！','08:15',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',1);

INSERT INTO chat_info VALUES(null,'img/defult_group.png','支付宝服务','支付宝提醒您，你有一次免费提升花呗额度...','16:30',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','QQ邮箱','您本周有一次在异地的登录，详情请查看http://...a.com','12:30',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',2);
INSERT INTO chat_info VALUES(null,'img/defult_group.png','微信支付','微信支付凭证','13:25',2);