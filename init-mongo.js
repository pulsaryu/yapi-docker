db.auth("root", "ad2lk8@s");
db.createUser({
 user: 'yapi',
 pwd: 'd=pj791gD',
 roles: [
   { role: "dbAdmin", db: "yapi" },
   { role: "readWrite", db: "yapi" }
 ]

});
