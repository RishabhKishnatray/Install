#! /bin/bash
git clone https://github.com/OT-MICROSERVICES/employee-api.git
git clone https://github.com/RishabhKishnatray/Install.git
sudo chmod 777 /home/ubuntu/Install/employeeconfig.sh
sudo chmod 777 /home/ubuntu/Install/employeej.sh
cd /home/ubuntu/Install
./employeeconfig.sh
./employeej.sh
