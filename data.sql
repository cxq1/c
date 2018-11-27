/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.5.49 : Database - databases
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`databases` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `databases`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can add permission',2,'add_permission'),
(5,'Can change permission',2,'change_permission'),
(6,'Can delete permission',2,'delete_permission'),
(7,'Can add group',3,'add_group'),
(8,'Can change group',3,'change_group'),
(9,'Can delete group',3,'delete_group'),
(10,'Can add user',4,'add_user'),
(11,'Can change user',4,'change_user'),
(12,'Can delete user',4,'delete_user'),
(13,'Can add content type',5,'add_contenttype'),
(14,'Can change content type',5,'change_contenttype'),
(15,'Can delete content type',5,'delete_contenttype'),
(16,'Can add session',6,'add_session'),
(17,'Can change session',6,'change_session'),
(18,'Can delete session',6,'delete_session'),
(19,'Can add blog type',7,'add_blogtype'),
(20,'Can change blog type',7,'change_blogtype'),
(21,'Can delete blog type',7,'delete_blogtype'),
(22,'Can add blog',8,'add_blog'),
(23,'Can change blog',8,'change_blog'),
(24,'Can delete blog',8,'delete_blog'),
(25,'Can add read num',9,'add_readnum'),
(26,'Can change read num',9,'change_readnum'),
(27,'Can delete read num',9,'delete_readnum'),
(28,'Can add read num',10,'add_readnum'),
(29,'Can change read num',10,'change_readnum'),
(30,'Can delete read num',10,'delete_readnum'),
(31,'Can add read detail',11,'add_readdetail'),
(32,'Can change read detail',11,'change_readdetail'),
(33,'Can delete read detail',11,'delete_readdetail'),
(34,'Can add comment',12,'add_comment'),
(35,'Can change comment',12,'change_comment'),
(36,'Can delete comment',12,'delete_comment'),
(37,'Can add like record',13,'add_likerecord'),
(38,'Can change like record',13,'change_likerecord'),
(39,'Can delete like record',13,'delete_likerecord'),
(40,'Can add llike count',14,'add_llikecount'),
(41,'Can change llike count',14,'change_llikecount'),
(42,'Can delete llike count',14,'delete_llikecount'),
(43,'Can add like count',14,'add_likecount'),
(44,'Can change like count',14,'change_likecount'),
(45,'Can delete like count',14,'delete_likecount'),
(46,'Can add profile',15,'add_profile'),
(47,'Can change profile',15,'change_profile'),
(48,'Can delete profile',15,'delete_profile');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$100000$Rc6AeKwo68xH$oww7WgK1IImGYZ3OBO6fPo42+esyBpQrzM5Nt2U05pA=','2018-11-20 02:56:27',1,'cxq','','','1986541495@qq.com',1,1,'2018-04-18 11:32:35'),
(2,'pbkdf2_sha256$100000$6nIHUmlGi2Gp$qqj7uLUwXp1mzvpRd7aVUT41WZrh0h3uVPRhC8ykh4k=','2018-06-28 07:42:00',0,'2222','','','',0,1,'2018-06-28 07:42:00'),
(3,'pbkdf2_sha256$100000$pQULbf7A5E0P$R7vbTYJsIUB+zbPwaczyS+1m7VKJYOp9dONvQhkCQXY=','2018-07-10 06:05:13',0,'qqq','','','2216614036@qq.com',0,1,'2018-07-02 10:15:55');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `blog_blog` */

DROP TABLE IF EXISTS `blog_blog`;

CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `created_time` datetime NOT NULL,
  `last_updated_time` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `blog_blog` */

insert  into `blog_blog`(`id`,`title`,`content`,`created_time`,`last_updated_time`,`author_id`,`blog_type_id`) values 
(1,'第一篇博客','////////////////////////////////////////////  \r\n//单链表的初始化，建立，插入，查找，删除。//  \r\n//Author:Wang Yong                        //      \r\n//Date: 2010.8.19                         //  \r\n////////////////////////////////////////////   \r\n#include <stdio.h>  \r\n#include <stdlib.h>  \r\ntypedef int ElemType;  \r\n////////////////////////////////////////////   \r\n//定义结点类型   \r\ntypedef struct Node  \r\n{  \r\n    ElemType data;              //单链表中的数据域   \r\n    struct Node *next;          //单链表的指针域   \r\n}Node,*LinkedList;  \r\n////////////////////////////////////////////   \r\n//单链表的初始化  \r\nLinkedList LinkedListInit()  \r\n{  \r\n    Node *L;  \r\n    L = (Node *)malloc(sizeof(Node));   //申请结点空间   \r\n    if(L == NULL)                       //判断是否有足够的内存空间   \r\n        printf(\"申请内存空间失败/n\");  \r\n    L->next = NULL;                  //将next设置为NULL,初始长度为0的单链表   \r\n}  \r\n////////////////////////////////////////////   \r\n//单链表的建立1，头插法建立单链表  \r\nLinkedList LinkedListCreatH()  \r\n{  \r\n    Node *L;  \r\n    L = (Node *)malloc(sizeof(Node));   //申请头结点空间  \r\n    L->next = NULL;                      //初始化一个空链表  \r\n      \r\n    ElemType x;                         //x为链表数据域中的数据  \r\n    while(scanf(\"%d\",&x) != EOF)  \r\n    {  \r\n        Node *p;  \r\n        p = (Node *)malloc(sizeof(Node));   //申请新的结点   \r\n        p->data = x;                     //结点数据域赋值   \r\n        p->next = L->next;                    //将结点插入到表头L-->|2|-->|1|-->NULL   \r\n        L->next = p;   \r\n    }  \r\n    return L;   \r\n}   \r\n////////////////////////////////////////////   \r\n//单链表的建立2，尾插法建立单链表  \r\nLinkedList LinkedListCreatT()  \r\n{  \r\n    Node *L;  \r\n    L = (Node *)malloc(sizeof(Node));   //申请头结点空间  \r\n    L->next = NULL;                  //初始化一个空链表  \r\n    Node *r;  \r\n    r = L;                          //r始终指向终端结点，开始时指向头结点   \r\n    ElemType x;                         //x为链表数据域中的数据  \r\n    while(scanf(\"%d\",&x) != EOF)  \r\n    {  \r\n        Node *p;  \r\n        p = (Node *)malloc(sizeof(Node));   //申请新的结点   \r\n        p->data = x;                     //结点数据域赋值   \r\n        r->next = p;                 //将结点插入到表头L-->|1|-->|2|-->NULL   \r\n        r = p;   \r\n    }  \r\n    r->next = NULL;   \r\n      \r\n    return L;     \r\n}  \r\n////////////////////////////////////////////   \r\n//单链表的插入，在链表的第i个位置插入x的元素  \r\nLinkedList LinkedListInsert(LinkedList L,int i,ElemType x)  \r\n{  \r\n    Node *pre;                      //pre为前驱结点   \r\n    pre = L;  \r\n    int tempi = 0;  \r\n    for (tempi = 1; tempi < i; tempi++)  \r\n        pre = pre->next;                 //查找第i个位置的前驱结点   \r\n    Node *p;                                //插入的结点为p  \r\n    p = (Node *)malloc(sizeof(Node));  \r\n    p->data = x;   \r\n    p->next = pre->next;  \r\n    pre->next = p;  \r\n      \r\n    return L;                             \r\n}   \r\n////////////////////////////////////////////   \r\n//单链表的删除，在链表中删除值为x的元素  \r\nLinkedList LinkedListDelete(LinkedList L,ElemType x)  \r\n{  \r\n    Node *p,*pre;                   //pre为前驱结点，p为查找的结点。   \r\n    p = L->next;  \r\n    while(p->data != x)              //查找值为x的元素   \r\n    {     \r\n        pre = p;   \r\n        p = p->next;  \r\n    }  \r\n    pre->next = p->next;          //删除操作，将其前驱next指向其后继。   \r\n    free(p);  \r\n    return L;  \r\n}   \r\n/////////////////////////////////////////////  \r\nint main()  \r\n{  \r\n    LinkedList list,start;  \r\n/*  printf(\"请输入单链表的数据：\");  \r\n    list = LinkedListCreatH(); \r\n    for(start = list->next; start != NULL; start = start->next) \r\n        printf(\"%d \",start->data); \r\n    printf(\"/n\"); \r\n*/  printf(\"请输入单链表的数据：\");   \r\n    list = LinkedListCreatT();  \r\n    for(start = list->next; start != NULL; start = start->next)  \r\n        printf(\"%d \",start->data);  \r\n    printf(\"/n\");  \r\n    int i;  \r\n    ElemType x;  \r\n    printf(\"请输入插入数据的位置：\");  \r\n    scanf(\"%d\",&i);  \r\n    printf(\"请输入插入数据的值：\");  \r\n    scanf(\"%d\",&x);  \r\n    LinkedListInsert(list,i,x);  \r\n    for(start = list->next; start != NULL; start = start->next)  \r\n        printf(\"%d \",start->data);  \r\n    printf(\"/n\");  \r\n    printf(\"请输入要删除的元素的值：\");  \r\n    scanf(\"%d\",&x);  \r\n    LinkedListDelete(list,x);   \r\n    for(start = list->next; start != NULL; start = start->next)  \r\n        printf(\"%d \",start->data);  \r\n    printf(\"/n\");  \r\n      \r\n    return 0;  \r\n}','2018-04-18 12:51:03','2018-04-21 08:11:31',1,2),
(2,'第二篇','#include \"stdio.h\"  \r\n#include \"stdlib.h\"  \r\n#include \"time.h\"  \r\n  \r\n#define OK 1  \r\n#define ERROR 0  \r\n#define TRUE 1  \r\n#define FALSE 0  \r\n#define MAXSIZE 20 /* 存储空间初始分配量 */  \r\n  \r\ntypedef int Status;  \r\n/* SElemType类型根据实际情况而定，这里假设为int */  \r\ntypedef int SElemType;  \r\n  \r\n/* 链栈结构 */  \r\ntypedef struct StackNode  \r\n{  \r\n    SElemType data;  \r\n    struct StackNode *next;  \r\n} StackNode,*LinkStackPtr;  \r\n  \r\ntypedef struct  \r\n{  \r\n    LinkStackPtr top;  \r\n    int count;  \r\n} LinkStack;  \r\n  \r\n/*  构造一个空栈S */  \r\nStatus InitStack(LinkStack *S)  \r\n{  \r\n    S->top = (LinkStackPtr)malloc(sizeof(StackNode));  \r\n    if(!S->top)  \r\n        return ERROR;  \r\n    S->top=NULL;  \r\n    S->count=0;  \r\n    return OK;  \r\n}  \r\n  \r\nStatus visit(SElemType c)  \r\n{  \r\n    printf(\"%d \",c);  \r\n    return OK;  \r\n}  \r\nStatus StackTraverse(LinkStack S)  \r\n{  \r\n    LinkStackPtr p;  \r\n    p=S.top;  \r\n    while(p)  \r\n    {  \r\n        visit(p->data);  \r\n        p=p->next;  \r\n    }  \r\n    printf(\"\\n\");  \r\n    return OK;  \r\n}  \r\n  \r\n/* 若栈S为空栈，则返回TRUE，否则返回FALSE */  \r\nStatus StackEmpty(LinkStack S)  \r\n{  \r\n    if (S.count==0)  \r\n        return TRUE;  \r\n    else  \r\n        return FALSE;  \r\n}  \r\n  \r\n/* 插入元素e为新的栈顶元素 */  \r\nStatus Push(LinkStack *S,SElemType e)  \r\n{  \r\n    LinkStackPtr s=(LinkStackPtr)malloc(sizeof(StackNode));  \r\n    s->data=e;  \r\n    s->next=S->top;   /* 把当前的栈顶元素赋值给新结点的直接后继，见图中① */  \r\n    S->top=s;         /* 将新的结点s赋值给栈顶指针，见图中② */  \r\n    S->count++;  \r\n    return OK;  \r\n}  \r\n  \r\n/* 若栈不空，则删除S的栈顶元素，用e返回其值，并返回OK；否则返回ERROR */  \r\nStatus Pop(LinkStack *S,SElemType *e)  \r\n{  \r\n    LinkStackPtr p;  \r\n    if(StackEmpty(*S))  \r\n        return ERROR;  \r\n    *e=S->top->data;  \r\n    p=S->top;                    /* 将栈顶结点赋值给p，见图中③ */  \r\n    S->top=S->top->next;    /* 使得栈顶指针下移一位，指向后一结点，见图中④ */  \r\n    free(p);                    /* 释放结点p */  \r\n    S->count--;  \r\n    return OK;  \r\n}  \r\n  \r\n  \r\n  \r\n/* 把S置为空栈 */  \r\nStatus ClearStack(LinkStack *S)  \r\n{  \r\n    LinkStackPtr p,q;  \r\n    p=S->top;  \r\n    while(p)  \r\n    {  \r\n        q=p;  \r\n        p=p->next;  \r\n        free(q);  \r\n    }  \r\n    S->count=0;  \r\n    return OK;  \r\n}  \r\n  \r\nint main()  \r\n{  \r\n    LinkStack s;  \r\n    int opp;  \r\n    int j, value, e;  \r\n      \r\n    if(InitStack(&s)==OK)  \r\n    {  \r\n        printf(\"链栈初始化成功。\");  \r\n    }  \r\n      \r\n    printf(\"\\n1.随机给栈赋值 \\n2.栈遍历 \\n3.进栈 \\n4.出栈\");  \r\n    printf(\"\\n5.置空链栈 \\n6.判断链栈是否为空\");  \r\n    printf(\"\\n0.退出 \\n请选择你的操作：\\n\");  \r\n    while(opp != \'0\')  \r\n    {  \r\n        scanf(\"%d\",&opp);  \r\n        switch(opp)  \r\n        {  \r\n            case 1:  \r\n                srand(time(0));  \r\n                for(j=1; j<=10; j++)  \r\n                {  \r\n                    Push(&s,rand()%100+1);  \r\n                }  \r\n                StackTraverse(s);  \r\n                break;  \r\n                  \r\n            case 2:  \r\n                StackTraverse(s);  \r\n                break;  \r\n                  \r\n            case 3:  \r\n                printf(\"请输入需要进栈的元素：\");  \r\n                scanf(\"%d\", &value);  \r\n                Push(&s, value);  \r\n                StackTraverse(s);  \r\n                break;  \r\n                  \r\n            case 4:  \r\n                Pop(&s,&e);  \r\n                printf(\"弹出的栈顶元素 e=%d\\n\",e);  \r\n                StackTraverse(s);  \r\n                break;  \r\n                  \r\n            case 5:  \r\n                ClearStack(&s);  \r\n                printf(\"清空栈后，栈是否为空：%d(1:空 0:否)\\n\",StackEmpty(s));  \r\n                break;  \r\n                  \r\n            case 6:  \r\n                printf(\"栈是否为空：%d(1:空 0:否)\\n\",StackEmpty(s));  \r\n                break;  \r\n                  \r\n            case 0:  \r\n                exit(0);  \r\n        }  \r\n    }  \r\n    return 0;  \r\n}','2018-04-21 08:07:57','2018-04-21 08:12:43',1,2),
(3,'第三篇','字符不能打错','2018-04-21 08:15:11','2018-04-21 08:15:11',1,1),
(4,'第四篇','<h1><span style=\"color:#1abc9c\">哈哈哈哈哈哈哈<br />\r\n<span style=\"background-color:#1abc9c\">多打</span></span></h1>','2018-04-22 12:31:25','2018-05-08 12:48:47',1,2),
(5,'shell 下第五篇','cccc','2018-04-30 07:47:20','2018-04-30 07:47:20',1,1),
(6,'for 1','xxx:1','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(7,'for 2','xxx:2','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(8,'for 3','xxx:3','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(9,'for 4','xxx:4','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(10,'for 5','xxx:5','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(11,'for 6','xxx:6','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(12,'for 7','xxx:7','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(13,'for 8','xxx:8','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(14,'for 9','xxx:9','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(15,'for 10','xxx:10','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(16,'for 11','xxx:11','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(17,'for 12','xxx:12','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(18,'for 13','xxx:13','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(19,'for 14','xxx:14','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(20,'for 15','xxx:15','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(21,'for 16','xxx:16','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(22,'for 17','xxx:17','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(23,'for 18','xxx:18','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(24,'for 19','xxx:19','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(25,'for 20','xxx:20','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(26,'for 21','xxx:21','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(27,'for 22','xxx:22','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(28,'for 23','xxx:23','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(29,'for 24','xxx:24','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(30,'for 25','xxx:25','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(31,'for 26','xxx:26','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(32,'for 27','xxx:27','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(33,'for 28','xxx:28','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(35,'for 30','xxx:30','2018-04-30 07:54:22','2018-04-30 07:54:22',1,1),
(36,'kmp','<p><img alt=\"\" src=\"/media/upload/2018/05/08/08f790529822720eb1faa1be77cb0a46f21fabba.jpg\" style=\"height:300px; width:450px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<hr />\r\n<p><img alt=\"smiley\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" />实验报告 实验四： 一、实验名称：kmp算法 二、实验内容： 字符串匹配：设主串为ptr=&quot;ababaaababaa&quot;;，要比较的子串为a=&ldquo;aab&rdquo;； 三、实验过程： 1、实验分析： 字符串匹配最简单的方法可以用bf算法，bf算法太暴力了，这里采用更好的算法kmp KMP算法用到了next数组，然后利用next数组的值来提高匹配速度 2、主要数据结构： char str[ N ] = {0}; char ptr[ N ] = {0}; int slen, plen; int next[ N ]; 3、算法思想： Kmp算法的难点在于next数组的确定，next[i]代表着，除去第i个数，在一个字符串里面从第一个数到第（i-1）字符串前缀与后缀最长重复的个数。 什么是前缀？ 在&ldquo;aba&rdquo;中，前缀就是&ldquo;ab&rdquo;，除去最后一个字符的剩余字符串。 同理可以理解后缀。除去第一个字符的后面全部的字符串。 在&ldquo;aba&rdquo;中，前缀是&ldquo;ab&rdquo;，后缀是&ldquo;ba&rdquo;，那么两者最长的子串就是&ldquo;a&rdquo;； 在&ldquo;ababa&rdquo;中，前缀是&ldquo;abab&rdquo;，后缀是&ldquo;baba&rdquo;，二者最长重复子串是&ldquo;aba&rdquo; 4、源代码： #include #include #include #define N 100 void cal_next( char * str, int * next, int len ) //得到next数组 { int i, j; next[0] = -1; for( i = 1; i &lt; len; i++ ) { j = next[ i - 1 ]; while( str[ j + 1 ] != str[ i ] &amp;&amp; ( j &gt;= 0 ) ) //不匹配回溯 { j = next[ j ]; } if( str[ i ] == str[ j + 1 ] ) { next[ i ] = j + 1; } else { next[ i ] = -1; } } } int KMP( char * str, int slen, char * ptr, int plen, int * next ) //kmp算法类似上面的cal_next { int s_i = 0, p_i = 0; while( s_i &lt; slen &amp;&amp; p_i &lt; plen ) { if( str[ s_i ] == ptr[ p_i ] ) { s_i++; p_i++; } else { if( p_i == 0 ) { s_i++; } else { p_i = next[ p_i - 1 ] + 1; } } } return ( p_i == plen ) ? ( s_i - plen ) : -1; //返回匹配到的位置 } int main() { char str[ N ] = {0}; char ptr[ N ] = {0}; int slen, plen; int next[ N ]; while( scanf( &quot;%s%s&quot;, str, ptr ) ) { slen = strlen( str ); plen = strlen( ptr ); cal_next( ptr, next, plen ); printf( &quot;%d\\n&quot;, KMP( str, slen, ptr, plen, next ) ); } return 0; } 四、实验结果分析： 对于正常的字符串模式匹配，主串长度为m，子串为n，时间复杂度会到达O（m*n），而如果用KMP算法，复杂度将会减少线型时间O（m+n）。</p>','2018-05-01 06:45:57','2018-05-08 14:02:59',1,2),
(37,'稀疏矩阵的简单运算','<p style=\"margin-left:0cm; margin-right:0cm\"><strong><span style=\"background-color:white\"><span style=\"color:red\">实验报告</span></span></strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">实验五：</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>一、实验名称：稀疏矩阵的简单运算</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>二、实验内容</strong><strong>：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">5*5的稀疏矩阵（或者自定义）的列序递增转置与快速转置算法的比较</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>三、实验过程：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>1</strong><strong>、实验分析：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">稀疏矩阵中元素少，为了节约空间与时间，所以用三元表示法，来表示矩阵，可以节约大量空间。</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>2</strong><strong>、主要数据结构：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define R 5</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define C 5</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define MAX 1000</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define MAXS 10</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">typedef struct</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int row, col;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //非零元素的行数，列数，值</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int e;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}Triple;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">typedef struct</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; Triple data[MAX+1];</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int m, n, len;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //稀疏矩阵的行数，列数，非零元素个数</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}TSMatrix;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>3</strong><strong>、算法思想：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">对于列序递增转置算法，要通过双层循环来完成。要改善算法的时间性能，必须去掉双层循环，使整个转置过程通过一重循环来完成。</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">所以要计算好待转置矩阵三元组表A每一列中非零元素的总个数，即转置后矩阵三元组表B的每一行中非零元素的总个数，和待转置矩阵每一列中第一个非零元素在三元租表B中的正确位置，即转置后矩阵每一行中第一个非零元素在三元组表中的正确位置。</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>4</strong><strong>、源代码：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">/*</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">稀疏矩阵的简单运算：</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">列序递增转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">一次定位快速转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">*/</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#include &lt;stdio.h&gt;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#include &lt;string.h&gt;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define R 5</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define C 5</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define MAX 1000</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">#define MAXS 10</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">typedef struct</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int row, col;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //非零元素的行数，列数，值</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int e;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}Triple;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">typedef struct</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; Triple data[MAX+1];</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int m, n, len;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //稀疏矩阵的行数，列数，非零元素个数</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}TSMatrix;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//函数声明</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">void print(TSMatrix A);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //输出三元组表</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">TSMatrix create(TSMatrix A, int a[R][C], TSMatrix B);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //创建稀疏矩阵</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">void TranposeTSMatrix(TSMatrix A, TSMatrix *B);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //列序递增转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">void FastTranposeTSMatrix(TSMatrix A, TSMatrix *B);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //一次定位快速转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//输出三元组表</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">void print(TSMatrix A)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int i;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; printf(&quot;row col&nbsp;&nbsp;&nbsp; e\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; for(i = 1; i &lt;= A.len; i++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%3d%4d%5d\\n&quot;, A.data[i].row, A.data[i].col, A.data[i].e);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//创建稀疏矩阵</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">TSMatrix create(TSMatrix A, int a[R][C], TSMatrix B)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int i, j;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; A.m = R;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; A.n = C;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; A.len = 0;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; printf(&quot;请输入%d * %d的稀疏矩阵\\n&quot;, A.m, A.n);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; for(i = 0, j = 0; i &lt; A.m; i++, j = 0)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;第%d行矩阵元素为：&quot;, i+1);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scanf(&quot;%d%d%d%d%d&quot;, &amp;a[i][j], &amp;a[i][j+1], &amp;a[i][j+2], &amp;a[i][j+3], &amp;a[i][j+4]);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp;&nbsp; //输入稀疏矩阵</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; printf(&quot;矩阵为：\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; for(i=0; i&lt;A.m;i++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(j=0; j&lt;A.n;j++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(a[i][j] != 0)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A.len++;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A.data[A.len].row = i+1;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A.data[A.len].col = j+1;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A.data[A.len].e = a[i][j];</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%5d&quot;, a[i][j]);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp;&nbsp; //输出矩阵，并统计非零元素个数A.len</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; if(A.len &lt; 7)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;稀疏矩阵共有%d个非零元素！\\n&quot;, A.len);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //输出三元组表A</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;输出三元组表 A 为:\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(A);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //输出 按列序转置后 的三元组表B</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;按列序转置后三元组表 B 为：\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TranposeTSMatrix(A, &amp;B);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(B);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //输出 快速转置法&nbsp; 的三元组表B</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;按快速转置法转置后的三元组表 B 为：\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FastTranposeTSMatrix(A, &amp;B);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(B);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; else</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp; &nbsp;&nbsp;{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;因为 A.len = %d, A.len &gt;= %f &quot;, A.len, (5*5*0.3));</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;所以 你输入的不是稀疏矩阵! \\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; create(A, a, B);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp;&nbsp; //判断是否为稀疏矩阵，若不是则重新输入</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; printf(&quot;\\n&quot;);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; return A;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//列序递增转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">void TranposeTSMatrix(TSMatrix A, TSMatrix *B){</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int i, j, k;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; B-&gt;m = A.m;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; B-&gt;n = A.n;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; B-&gt;len = A.len;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; if(B-&gt;len &gt; 0)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; j = 1;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(k = 1; k &lt;= B-&gt;n; k++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(i = 1; i &lt;= B-&gt;len; i++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(A.data[i].col == k)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B-&gt;data[j].row = A.data[i].col;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B-&gt;data[j].col = A.data[i].row;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B-&gt;data[j].e = A.data[i].e;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; j++;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}&nbsp;&nbsp;&nbsp; //按列序递增转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">//一次定位快速转置</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">void FastTranposeTSMatrix(TSMatrix A, TSMatrix *B){</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int col, t, p, q;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int num[MAXS],&nbsp; position[MAXS];</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; B-&gt;len = A.len;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; B-&gt;m = A.m;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; B-&gt;n = A.n;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; if(B-&gt;len)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(col = 1; col &lt;= A.n; col++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num[col] = 0;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(t = 1; t &lt;= A.len; t++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num[A.data[t].col]++;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; position[1] = 1;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(col = 2; col &lt;= A.n; col++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; position[col] = position[col-1] + num[col-1];</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(p = 1; p &lt;= A.len; p++)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; col = A.data[p].col;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; q = position[col];</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B-&gt;data[q].row = A.data[p].col;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B-&gt;data[q].col = A.data[p].row;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B-&gt;data[q].e = A.data[p].e;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; position[col]++;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}&nbsp;&nbsp;&nbsp; //快速转置法</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">int main(void)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">{</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; TSMatrix A;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; TSMatrix B;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; int a[R][C], i = 1;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; while(i){</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; create(A, a, B);</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;&nbsp;&nbsp; return 0;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">}</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><img alt=\"说明: C:\\Users\\cxq\\Documents\\Tencent Files\\1986541495\\FileRecv\\MobileFile\\Image\\6)PTY%7](ZMU34ABCVSA~FY.png\" src=\"file:///C:\\Users\\cxq\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image002.jpg\" style=\"height:200px; width:200px\" /><img alt=\"说明: C:\\Users\\cxq\\Documents\\Tencent Files\\1986541495\\FileRecv\\MobileFile\\Image\\P9QY3B%U%DATRGP_J6~RZ(D.png\" src=\"file:///C:\\Users\\cxq\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\" style=\"height:219px; width:445px\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><strong>四、实验结果分析：</strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">对于序递增转置算法，其主要是在双层循环中，其时间复杂度为O(A.n*A.len)。最坏的情况为：但A.len =A.m*A.n时，时间复杂度为O(A.m*A.n^2)因此，三元组表示法仅适合用于稀疏矩阵。对于一次定位快速转置法的时间复杂度为O(A.m+A.n)，但矩阵中非零元素接近A.n*A.m时，其时间复杂度接近于O(A.m*A.n)</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>','2018-05-13 14:07:34','2018-05-13 14:08:59',1,5);

/*Table structure for table `blog_blogtype` */

DROP TABLE IF EXISTS `blog_blogtype`;

CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `blog_blogtype` */

insert  into `blog_blogtype`(`id`,`type_name`) values 
(1,'django'),
(2,'随笔'),
(3,'感悟'),
(5,'数据结构');

/*Table structure for table `comment_comment` */

DROP TABLE IF EXISTS `comment_comment`;

CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8_bin NOT NULL,
  `comment_time` datetime NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `comment_comment` */

insert  into `comment_comment`(`id`,`object_id`,`text`,`comment_time`,`content_type_id`,`parent_id`,`reply_to_id`,`root_id`,`user_id`) values 
(1,36,'qq','2018-05-26 08:10:02',8,NULL,NULL,NULL,1),
(2,35,'123','2018-05-30 08:09:20',8,NULL,NULL,NULL,1),
(3,35,'123','2018-05-30 08:09:43',8,NULL,NULL,NULL,1),
(4,35,'123','2018-05-30 08:10:16',8,NULL,NULL,NULL,1),
(5,35,'12','2018-05-30 08:10:19',8,NULL,NULL,NULL,1),
(6,35,'4t','2018-05-30 08:31:32',8,NULL,NULL,NULL,1),
(7,35,'','2018-05-30 08:31:56',8,NULL,NULL,NULL,1),
(8,32,'ddd','2018-05-30 12:12:50',8,NULL,NULL,NULL,1),
(9,35,'1577','2018-06-06 14:14:55',8,NULL,NULL,NULL,1),
(10,35,'顶顶顶顶','2018-06-27 12:23:08',8,NULL,NULL,NULL,1),
(11,35,'eeee','2018-06-28 08:09:12',8,NULL,NULL,NULL,1),
(12,35,'呃呃呃\r\ne','2018-06-30 01:20:47',8,NULL,NULL,NULL,1),
(13,34,'rrgerg','2018-06-30 01:36:52',8,NULL,NULL,NULL,1),
(14,33,'wwww','2018-06-30 02:25:05',8,NULL,NULL,NULL,1),
(15,33,'eee','2018-06-30 02:25:08',8,NULL,NULL,NULL,1),
(16,36,'<p><img alt=\"sad\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" style=\"height:23px; width:23px\" title=\"sad\" /></p>','2018-06-30 06:10:36',8,NULL,NULL,NULL,1),
(17,2,'<p>ghj</p>','2018-06-30 06:22:16',8,NULL,NULL,NULL,1),
(18,33,'<p>yyyy</p>','2018-06-30 06:22:30',8,NULL,NULL,NULL,1),
(19,32,'<p>err</p>','2018-06-30 06:32:05',8,NULL,NULL,NULL,1),
(20,32,'<p>33</p>','2018-06-30 07:04:43',8,NULL,NULL,NULL,1),
(21,32,'<p>33</p>','2018-06-30 07:04:47',8,NULL,NULL,NULL,1),
(22,32,'<p>33</p>','2018-06-30 07:04:47',8,NULL,NULL,NULL,1),
(23,32,'<p>33</p>','2018-06-30 07:04:47',8,NULL,NULL,NULL,1),
(24,32,'<p>33</p>','2018-06-30 07:04:48',8,NULL,NULL,NULL,1),
(25,32,'<p>33</p>','2018-06-30 07:04:48',8,NULL,NULL,NULL,1),
(26,32,'<p>33</p>','2018-06-30 07:05:21',8,NULL,NULL,NULL,1),
(27,33,'<p>hh</p>','2018-06-30 07:05:38',8,NULL,NULL,NULL,1),
(28,33,'<p>hh</p>','2018-06-30 07:05:38',8,NULL,NULL,NULL,1),
(29,33,'<p>hh</p>','2018-06-30 07:05:44',8,NULL,NULL,NULL,1),
(30,33,'<p>h</p>','2018-06-30 07:05:52',8,NULL,NULL,NULL,1),
(31,33,'<p>h</p>','2018-06-30 07:05:53',8,NULL,NULL,NULL,1),
(32,33,'<p>h</p>','2018-06-30 07:07:53',8,NULL,NULL,NULL,1),
(33,33,'<p>68</p>','2018-06-30 07:08:49',8,NULL,NULL,NULL,1),
(34,35,'<p>对的多</p>','2018-06-30 07:51:45',8,NULL,NULL,NULL,1),
(35,35,'<p>对的多</p>','2018-06-30 07:52:57',8,NULL,NULL,NULL,1),
(36,35,'<p>放松放松</p>\r\n\r\n<p>&nbsp;</p>','2018-06-30 07:53:06',8,NULL,NULL,NULL,1),
(37,35,'<p>放松放松</p>\r\n\r\n<p>&nbsp;</p>','2018-06-30 08:03:11',8,NULL,NULL,NULL,1),
(38,35,'<p>222</p>','2018-06-30 08:36:01',8,NULL,NULL,NULL,1),
(39,35,'<p>222<img alt=\"angry\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/angry_smile.png\" title=\"angry\" width=\"23\" /></p>','2018-06-30 08:37:03',8,NULL,NULL,NULL,1),
(40,36,'<p>滚滚滚</p>','2018-06-30 08:38:02',8,NULL,NULL,NULL,1),
(41,36,'<p>滚滚滚</p>','2018-06-30 08:38:49',8,NULL,NULL,NULL,1),
(42,36,'<p>滚滚滚</p>','2018-06-30 08:39:41',8,NULL,NULL,NULL,1),
(43,36,'<p>滚滚滚</p>','2018-06-30 08:39:44',8,NULL,NULL,NULL,1),
(44,36,'<p>滚滚滚</p>','2018-06-30 08:40:33',8,NULL,NULL,NULL,1),
(45,36,'<p>对的多</p>','2018-06-30 08:40:38',8,NULL,NULL,NULL,1),
(46,36,'<p>但是</p>','2018-06-30 08:40:42',8,NULL,NULL,NULL,1),
(47,36,'<p><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />1</p>','2018-06-30 08:45:53',8,NULL,NULL,NULL,1),
(48,30,'<p>等等</p>','2018-06-30 08:50:58',8,NULL,NULL,NULL,1),
(49,33,'<p>22fds</p>','2018-07-02 10:14:33',8,NULL,NULL,NULL,1),
(50,31,'<p><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" /><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" /></p>','2018-07-02 10:16:06',8,NULL,NULL,NULL,3),
(51,31,'<p>&euro;<img alt=\"angry\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/angry_smile.png\" title=\"angry\" width=\"23\" /></p>','2018-07-02 10:16:13',8,NULL,NULL,NULL,3),
(52,31,'<p><img alt=\"cool\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/shades_smile.png\" title=\"cool\" width=\"23\" /></p>','2018-07-02 10:16:18',8,NULL,NULL,NULL,3),
(53,33,'<p>qq</p>','2018-07-02 10:24:11',8,NULL,NULL,NULL,1),
(54,33,'<p>fsa</p>','2018-07-02 10:24:33',8,NULL,NULL,NULL,1),
(55,33,'<p>sfa</p>','2018-07-02 10:24:36',8,NULL,NULL,NULL,1),
(56,1,'123','2018-07-03 06:22:31',8,NULL,NULL,NULL,2),
(57,33,'<p><img alt=\"sad\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" title=\"sad\" width=\"23\" /></p>','2018-07-03 07:23:06',8,NULL,NULL,NULL,1),
(58,33,'<p><img alt=\"frown\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/confused_smile.png\" title=\"frown\" width=\"23\" /></p>','2018-07-03 10:00:09',8,NULL,NULL,NULL,1),
(59,33,'<p>444</p>','2018-07-03 10:00:13',8,NULL,NULL,NULL,1),
(60,31,'<p>去</p>','2018-07-04 08:28:53',8,NULL,NULL,NULL,1),
(61,31,'<p>QQ</p>','2018-07-04 08:28:57',8,NULL,NULL,NULL,1),
(62,32,'<p>但是</p>','2018-07-04 08:30:16',8,NULL,NULL,NULL,1),
(63,2,'<p>rtt</p>','2018-07-05 06:00:35',8,NULL,NULL,NULL,1),
(64,2,'<p>eee</p>','2018-07-05 06:03:50',8,63,1,63,1),
(65,35,'<p>yyyy</p>','2018-07-05 06:06:29',8,39,1,39,1),
(66,31,'<p>ddd</p>','2018-07-05 08:01:06',8,NULL,NULL,NULL,1),
(67,31,'<p>ddd</p>','2018-07-05 08:01:09',8,66,1,66,1),
(68,35,'<p>3333</p>','2018-07-09 01:55:12',8,NULL,NULL,NULL,1),
(69,35,'<p>33</p>','2018-07-09 01:55:15',8,65,1,39,1),
(70,33,'<p><img alt=\"laugh\" height=\"23\" src=\"http://127.0.0.1:8002/static/ckeditor/ckeditor/plugins/smiley/images/teeth_smile.png\" title=\"laugh\" width=\"23\" /></p>','2018-07-09 02:01:41',8,58,1,58,1),
(71,35,'<p>对的多</p>','2018-07-09 07:25:55',8,NULL,NULL,NULL,1),
(72,33,'<p>88</p>','2018-07-09 08:19:54',8,59,1,59,1),
(73,35,'<p>ee</p>','2018-07-09 08:24:51',8,71,1,71,1),
(74,35,'<p>ss</p>','2018-07-10 02:55:18',8,NULL,NULL,NULL,1);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2018-04-18 12:46:56','1','BlogType object (1)',1,'[{\"added\": {}}]',7,1),
(2,'2018-04-18 12:47:10','2','BlogType object (2)',1,'[{\"added\": {}}]',7,1),
(3,'2018-04-18 12:47:17','3','BlogType object (3)',1,'[{\"added\": {}}]',7,1),
(4,'2018-04-18 12:51:03','1','<Blog: 第一篇博客>',1,'[{\"added\": {}}]',8,1),
(5,'2018-04-21 08:07:57','2','<Blog: 第二篇>',1,'[{\"added\": {}}]',8,1),
(6,'2018-04-21 08:11:31','1','<Blog: 第一篇博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),
(7,'2018-04-21 08:12:43','2','<Blog: 第二篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),
(8,'2018-04-21 08:14:14','4','随笔',1,'[{\"added\": {}}]',7,1),
(9,'2018-04-21 08:15:11','3','<Blog: 第三篇>',1,'[{\"added\": {}}]',8,1),
(10,'2018-04-22 12:31:25','4','<Blog: 第四篇>',1,'[{\"added\": {}}]',8,1),
(11,'2018-04-29 04:56:19','4','随笔',3,'',7,1),
(12,'2018-05-01 06:45:57','36','<Blog: kmp>',1,'[{\"added\": {}}]',8,1),
(13,'2018-05-08 12:33:42','4','<Blog: 第四篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),
(14,'2018-05-08 12:48:47','4','<Blog: 第四篇>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),
(15,'2018-05-08 13:15:49','36','<Blog: kmp>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),
(16,'2018-05-08 13:29:30','37','<Blog: 图片>',1,'[{\"added\": {}}]',8,1),
(17,'2018-05-08 13:30:46','37','<Blog: 图片>',3,'',8,1),
(18,'2018-05-09 07:45:16','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),
(19,'2018-05-13 14:06:30','5','数据结构',1,'[{\"added\": {}}]',7,1),
(20,'2018-05-13 14:07:34','37','<Blog: 稀疏矩阵的简单运算>',1,'[{\"added\": {}}]',8,1),
(21,'2018-05-13 14:08:59','37','<Blog: 稀疏矩阵的简单运算>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),
(22,'2018-05-15 01:00:02','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),
(23,'2018-05-21 08:03:29','1','ReadDetail object (1)',1,'[{\"added\": {}}]',11,1),
(24,'2018-05-26 08:10:02','1','Comment object (1)',1,'[{\"added\": {}}]',12,1),
(25,'2018-06-30 01:37:33','34','<Blog: for 29>',3,'',8,1),
(26,'2018-07-03 06:22:31','56','123',1,'[{\"added\": {}}]',12,1),
(27,'2018-07-10 05:48:26','1','<Profile:222 for cxq>',1,'[{\"added\": {}}]',15,1),
(28,'2018-07-10 08:03:44','1','<Profile:222 for cxq>',3,'',15,1),
(29,'2018-07-10 13:49:56','2','<Profile:陈相漆 for cxq>',2,'[{\"changed\": {\"fields\": [\"nickname\"]}}]',15,1),
(30,'2018-07-11 05:27:52','2','2222',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(8,'blog','blog'),
(7,'blog','blogtype'),
(9,'blog','readnum'),
(12,'comment','comment'),
(5,'contenttypes','contenttype'),
(14,'likes','likecount'),
(13,'likes','likerecord'),
(11,'read_statistics','readdetail'),
(10,'read_statistics','readnum'),
(6,'sessions','session'),
(15,'user','profile');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2018-11-19 15:10:38'),
(2,'auth','0001_initial','2018-11-19 15:10:39'),
(3,'admin','0001_initial','2018-11-19 15:10:39'),
(4,'admin','0002_logentry_remove_auto_add','2018-11-19 15:10:39'),
(5,'contenttypes','0002_remove_content_type_name','2018-11-19 15:10:39'),
(6,'auth','0002_alter_permission_name_max_length','2018-11-19 15:10:39'),
(7,'auth','0003_alter_user_email_max_length','2018-11-19 15:10:39'),
(8,'auth','0004_alter_user_username_opts','2018-11-19 15:10:39'),
(9,'auth','0005_alter_user_last_login_null','2018-11-19 15:10:39'),
(10,'auth','0006_require_contenttypes_0002','2018-11-19 15:10:39'),
(11,'auth','0007_alter_validators_add_error_messages','2018-11-19 15:10:39'),
(12,'auth','0008_alter_user_username_max_length','2018-11-19 15:10:39'),
(13,'auth','0009_alter_user_last_name_max_length','2018-11-19 15:10:39'),
(14,'blog','0001_initial','2018-11-19 15:10:39'),
(15,'blog','0002_auto_20180430_1604','2018-11-19 15:10:39'),
(16,'blog','0003_auto_20180508_2047','2018-11-19 15:10:39'),
(17,'blog','0004_auto_20180508_2108','2018-11-19 15:10:39'),
(18,'blog','0005_blog_readed_num','2018-11-19 15:10:39'),
(19,'blog','0006_auto_20180509_1530','2018-11-19 15:10:39'),
(20,'blog','0007_auto_20180509_1544','2018-11-19 15:10:39'),
(21,'blog','0008_auto_20180513_1622','2018-11-19 15:10:39'),
(22,'blog','0009_auto_20180513_1635','2018-11-19 15:10:39'),
(23,'blog','0010_auto_20180515_0843','2018-11-19 15:10:40'),
(24,'blog','0002_auto_20181119_1836','2018-11-19 15:10:40'),
(25,'blog','0011_merge_20181119_1843','2018-11-19 15:10:40'),
(26,'comment','0001_initial','2018-11-19 15:10:40'),
(27,'likes','0001_initial','2018-11-19 15:10:40'),
(28,'read_statistics','0001_initial','2018-11-19 15:10:40'),
(29,'sessions','0001_initial','2018-11-19 15:10:40'),
(30,'user','0001_initial','2018-11-19 15:10:40');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('01p6hjnzb3ogn43zr7cehwiwqev6c3r5','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-19 08:01:02'),
('14vabh1hv227yx0xobew83q8bp2qkpfk','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-12 07:51:12'),
('2ecy7pxu6we8wfju1bt1xkhc7of8cicl','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-06-20 14:14:39'),
('2grhzza1ykttc4o9euoqms9a31whz4f0','MWY0YWVkZmE0NTA3OWY4MWQzNTEzM2YyODM5ZWRlMzRjMTc3ZWZmNzp7fQ==','2018-07-12 02:13:47'),
('49r5anwbltt1bda2dl1qhd4kmc4op70i','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-23 05:50:57'),
('6y4imho7vngvcjm6mzuz1b0a1q47hvyp','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-12-03 08:34:37'),
('74qgnpb4cqase6js3oth2ue9b50u9d1j','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-19 06:06:25'),
('7d51qeryoiam3t2ttxim700b0rcvvpqr','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-06-04 08:03:08'),
('9dmgrtq9ya53aw8151yd093w1rs7mwtk','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-05-22 12:31:06'),
('g6ktj0icbwmx0fdc1gjaa4ltighyfojc','MWY0YWVkZmE0NTA3OWY4MWQzNTEzM2YyODM5ZWRlMzRjMTc3ZWZmNzp7fQ==','2018-06-09 09:10:35'),
('hxaeng2mh1f66839l5m8rlznil1kn1ek','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-19 06:00:29'),
('i57k5y26660hnxz3tab01w4ys1mxuhyg','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-12-04 02:56:27'),
('j4slgylk5m6128dl4wis462x7w7vy0bg','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-06-09 09:11:32'),
('jbg3d89vh633oiev73nev551vp6vjdm9','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-05-02 12:43:49'),
('jppd7j6n8yvx45njxyflc9hdk8d2a1ny','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-09-05 09:51:38'),
('jy5pmjsr5ocdd48yj79cbilo4qtosgi2','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-05-04 12:17:41'),
('l4vm7vu34jnbi1ujpbdo3dtkhrhmuzws','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-14 01:31:49'),
('mggrjqlwt366ac43h3mpgc1kzvmlx4nd','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-06-13 07:16:50'),
('nrvbf695ynmdrzwr3rlmm3xu0c6j0x5u','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-18 08:28:49'),
('nzg64bxdlzdd7eu0zfb087rsffyvxwnp','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-05-23 07:37:09'),
('owso3sojlkctj4hze14vl1x6hut39wb1','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-12 08:09:04'),
('q4qr1emck4ovnk6fl59gjt7jtyyd48wp','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-17 06:21:30'),
('qje7548zbmxk2xyjs272yc6o9dn5yc2j','MWQ2MTE5MjhkMjk2ZDgwNjRkMTNlYjE2N2M1MjdkOGYzZmE0NDJmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5IiwiYmluZF9lbWFpbF9jb2RlIjoiTGlIbCIsInNlbmRfY29kZV90aW1lIjoxNTMxMjg2ODgzfQ==','2018-07-25 05:28:04'),
('w7o4eaeyl62fm5acg4ujjawc6fvwpg07','MzlkMTY4ZmY4MGJiYjNlNDVlOTg3MDJjMTAyZDYyNzg5ZjllMmVkOTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZjM5MzdhOWU3NDg2ZDVlYjFkMTIyZmY2YzBkMjA1YWMyNDc4NGI0In0=','2018-07-24 06:05:13'),
('wdnijyhzhg8z939pbqg506w8wprm6np9','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-14 08:45:29'),
('wz1mmsazrj5zs8e4l3qqtzm9bthpmr54','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-06-13 12:12:45'),
('xedi8ukuiyq1myycabqyrhcowoetp0vx','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-23 07:19:49'),
('y9ey242dq79a7981lg3fe025n2i4et2w','OTU0ZmFjYzNkNDRmMWIyMWFiMGExMmI3ZmZmNzIzOWNiNDdjZjc4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4Y2IwZDFiNDg1NWJjOWI1MGU1MGI5ZWVhNGI3YTA5OGRkMDQ5MDk5In0=','2018-07-16 10:24:06');

/*Table structure for table `likes_likecount` */

DROP TABLE IF EXISTS `likes_likecount`;

CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `likes_likecount` */

insert  into `likes_likecount`(`id`,`object_id`,`liked_num`,`content_type_id`) values 
(1,37,0,8),
(2,36,0,8),
(3,35,1,8),
(4,33,1,8),
(5,32,0,8),
(6,31,0,8),
(7,30,0,8),
(8,68,1,12),
(9,39,0,12),
(10,65,0,12),
(11,69,0,12),
(12,38,1,12),
(13,37,1,12),
(14,36,0,12),
(15,35,0,12),
(16,34,0,12),
(17,12,0,12),
(18,11,0,12),
(19,10,0,12),
(20,9,0,12),
(21,7,0,12),
(22,6,0,12),
(23,5,0,12),
(24,4,0,12),
(25,3,0,12),
(26,2,0,12),
(27,59,1,12),
(28,58,0,12),
(29,70,0,12),
(30,57,0,12),
(31,55,0,12),
(32,54,0,12),
(33,53,0,12),
(34,49,0,12),
(35,33,0,12),
(36,32,0,12),
(37,31,0,12),
(38,30,0,12),
(39,29,0,12),
(40,28,0,12),
(41,27,0,12),
(42,18,0,12),
(43,15,0,12),
(44,14,0,12),
(45,47,1,12),
(46,46,1,12),
(47,45,1,12),
(48,44,0,12),
(49,43,0,12),
(50,42,0,12),
(51,41,0,12),
(52,40,0,12),
(53,16,0,12),
(54,1,0,12),
(55,71,1,12),
(56,72,0,12),
(57,4,0,8),
(58,2,0,8),
(59,1,0,8),
(60,73,1,12),
(61,74,0,12),
(62,29,0,8),
(63,28,0,8),
(64,6,0,8),
(65,7,0,8),
(66,8,0,8),
(67,9,0,8),
(68,10,0,8);

/*Table structure for table `likes_likerecord` */

DROP TABLE IF EXISTS `likes_likerecord`;

CREATE TABLE `likes_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_time` datetime NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `likes_likerecord` */

insert  into `likes_likerecord`(`id`,`object_id`,`liked_time`,`content_type_id`,`user_id`) values 
(5,47,'2018-07-09 06:47:19',12,1),
(6,46,'2018-07-09 06:47:20',12,1),
(7,45,'2018-07-09 06:47:22',12,1),
(8,38,'2018-07-09 07:19:53',12,1),
(10,68,'2018-07-09 07:19:56',12,1),
(11,35,'2018-07-09 07:19:59',8,1),
(12,71,'2018-07-09 07:26:01',12,1),
(15,73,'2018-07-09 08:24:53',12,1),
(16,59,'2018-07-09 08:25:09',12,1),
(17,33,'2018-07-09 08:25:13',8,1),
(18,37,'2018-08-22 09:52:02',12,1);

/*Table structure for table `my_cache_table` */

DROP TABLE IF EXISTS `my_cache_table`;

CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` longtext COLLATE utf8_bin NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `my_cache_table` */

insert  into `my_cache_table`(`cache_key`,`value`,`expires`) values 
(':1:hot_blogs_for_7_days','gASVcgoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGJ1YmhdKYGUfZQoaGBoFGg3aDhoB4wFdGl0bGWUh5RSlIaUfZSGlGhmaG1oZ2gUaGhobXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwSR3JlYXRlclRoYW5PckVxdWFslJOUKYGUfZQojANsaHOUaF0pgZR9lChoYGgVaDeMD3JlYWRfc3RhdGlzdGljc5RoPYwEZGF0ZZSHlFKUhpR9lIaUaGZohWhnaBVoaGiFjBJjb250YWluc19hZ2dyZWdhdGWUiXVijANyaHOUjAhkYXRldGltZZSMBGRhdGWUk5RDBAfiCw2UhZRSlIwUYmlsYXRlcmFsX3RyYW5zZm9ybXOUXZRoiYl1Ymh6jAhMZXNzVGhhbpSTlCmBlH2UKGh/aIBoimiNQwQH4gsUlIWUUpRokV2UaImJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloiYl1YowLd2hlcmVfY2xhc3OUaHWMCGdyb3VwX2J5lGheaGmGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhrhpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdogmg9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoiYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1fbG9va3VwX2pvaW5zlF2UKGgUaBVljApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZQofZQoaCpLJWhrjBvnqIDnlo/nn6npmLXnmoTnroDljZXov5DnrpeUaLJLAXV9lChoKkshaGuMBmZvciAyOJRosksBdWWMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGgqaGuGlIwPX2RqYW5nb192ZXJzaW9ulIwFMi4wLjSUdWIu','2018-11-20 03:56:18');

/*Table structure for table `read_statistics_readdetail` */

DROP TABLE IF EXISTS `read_statistics_readdetail`;

CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `read_statistics_readdetail` */

insert  into `read_statistics_readdetail`(`id`,`date`,`read_num`,`object_id`,`content_type_id`) values 
(1,'2018-05-20',4,36,8),
(2,'2018-05-21',4,36,8),
(3,'2018-05-21',2,35,8),
(5,'2018-05-21',1,33,8),
(6,'2018-05-21',1,32,8),
(7,'2018-05-21',2,31,8),
(8,'2018-05-21',1,23,8),
(9,'2018-05-21',2,37,8),
(10,'2018-05-22',1,37,8),
(11,'2018-05-22',1,36,8),
(12,'2018-05-22',1,35,8),
(13,'2018-05-26',1,36,8),
(14,'2018-05-26',1,35,8),
(15,'2018-05-26',1,33,8),
(16,'2018-05-27',1,35,8),
(17,'2018-05-30',2,37,8),
(18,'2018-05-30',2,35,8),
(19,'2018-05-30',1,32,8),
(20,'2018-05-31',1,32,8),
(21,'2018-05-31',1,35,8),
(22,'2018-05-31',1,36,8),
(23,'2018-06-06',1,35,8),
(26,'2018-06-07',1,35,8),
(27,'2018-06-27',1,35,8),
(28,'2018-06-28',1,35,8),
(29,'2018-06-28',1,2,8),
(30,'2018-06-30',1,35,8),
(32,'2018-06-30',1,33,8),
(33,'2018-06-30',1,36,8),
(34,'2018-06-30',1,2,8),
(35,'2018-06-30',1,32,8),
(36,'2018-06-30',1,30,8),
(37,'2018-06-30',1,29,8),
(38,'2018-07-02',2,33,8),
(39,'2018-07-02',1,31,8),
(40,'2018-07-02',2,2,8),
(41,'2018-07-03',1,33,8),
(42,'2018-07-03',1,35,8),
(43,'2018-07-03',1,32,8),
(44,'2018-07-03',1,31,8),
(45,'2018-07-03',1,30,8),
(46,'2018-07-03',1,29,8),
(47,'2018-07-03',1,28,8),
(48,'2018-07-03',1,27,8),
(49,'2018-07-03',1,26,8),
(50,'2018-07-03',1,25,8),
(51,'2018-07-03',1,24,8),
(52,'2018-07-05',1,2,8),
(53,'2018-07-05',1,31,8),
(54,'2018-07-09',1,2,8),
(55,'2018-07-09',1,35,8),
(56,'2018-07-09',1,33,8),
(57,'2018-07-10',2,35,8),
(58,'2018-07-11',1,35,8),
(59,'2018-08-22',1,37,8),
(60,'2018-08-22',1,36,8),
(61,'2018-08-22',1,35,8),
(62,'2018-11-19',1,33,8),
(63,'2018-11-19',1,37,8);

/*Table structure for table `read_statistics_readnum` */

DROP TABLE IF EXISTS `read_statistics_readnum`;

CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `read_statistics_readnum` */

insert  into `read_statistics_readnum`(`id`,`read_num`,`object_id`,`content_type_id`) values 
(1,14,37,8),
(2,11,36,8),
(3,5,34,8),
(4,9,33,8),
(5,7,32,8),
(6,6,31,8),
(7,3,30,8),
(8,3,29,8),
(9,2,28,8),
(10,2,27,8),
(11,20,35,8),
(12,1,23,8),
(13,6,2,8),
(14,1,26,8),
(15,1,25,8),
(16,1,24,8);

/*Table structure for table `user_profile` */

DROP TABLE IF EXISTS `user_profile`;

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_profile` */

insert  into `user_profile`(`id`,`nickname`,`user_id`) values 
(2,'陈相漆',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
