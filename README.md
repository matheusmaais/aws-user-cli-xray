# Description

The main goal of this project show a xray from all users on AWS account using AWS CLi


   
##### Usage:
 Export your AWS Credentials on terminal:
 ```sh
 clone this repo
 chmod +x user_xray.sh
EXPORT xport AWS_ACCESS_KEY_ID=<YOUR_KEY>                                                                                       ✔  6s 
EXPORT AWS_SECRET_ACCESS_KEY=<YOUR_SECRET_KEY>
./user_xray.sh'
```
USER: USER_NAME

---------------------------------------------------
|                 ListAccessKeys                  |
+--------------+----------------------------------+
|  AccessKeyId | BLABLABLA        |
|  CreateDate  |  00000     |
|  Status      |  Active                          |
|  UserName    |  USER_NAME  |
+--------------+----------------------------------+
-----------------------------
|     ListGroupsForUser     |
+---------------------------+
|  THE USER GROUPs  |
+---------------------------+
---------------------------------------------------
|            ListAttachedUserPolicies             |
+-------------------------------------------------+
|  arn:aws:iam::aws:policy/ATTACHED_POLICIE |
+-------------------------------------------------+

