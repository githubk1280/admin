
INSERT INTO `privilege` VALUES (1,'M','主管','all'),(2,'E','普通员工','customer,doc,literature,message,outsource,project,status,sample,login,logout'),(3,'C','客户','project,message,login,logout'),(4,'F','财务','contract,project,message,login,logout');

INSERT INTO `employee_role` VALUES (1,'M','manager'),(2,'E','employee'),(3,'C','customer'),(4,'F','finical');

INSERT INTO test.employee values(null,'admin',1,1,'admin','abc@qq.com');

