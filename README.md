CI CD Pipeline POC to deploy Azure Data Factory with few other component using Terraform and Azure Devops

Started with basic .tf file to create resource group

![image](https://github.com/user-attachments/assets/6ff6e201-bd80-464a-bcfd-4e050d230e2c)

 

Create pipeline and choose classic editor

![image](https://github.com/user-attachments/assets/bb08e7a6-ab4b-4fe1-b147-109d82de6e77)

 
Create empty Job

 ![image](https://github.com/user-attachments/assets/367d3f18-5e65-4979-85c1-cc6e2688225d)

 ![image](https://github.com/user-attachments/assets/f5df2706-4545-4577-aa42-f45e2a940930)

![image](https://github.com/user-attachments/assets/2420eba8-edaf-417d-a187-4b1bfb12b3d8)

 

Add tasks
![image](https://github.com/user-attachments/assets/aa899b47-4b0f-40ac-82af-f7c9d151acb8)

 
![image](https://github.com/user-attachments/assets/8a34fb72-3d6a-48ef-942a-68e65b7ff17b)

 

Add one more task to publish artifacts

 ![image](https://github.com/user-attachments/assets/616258f5-5e20-484f-a8cb-2a5530ce0dfc)
 ![image](https://github.com/user-attachments/assets/0915e7b1-bad9-42b4-a87b-896030767a10)

 
 

Save it and run pipeline
![image](https://github.com/user-attachments/assets/3088067a-e230-48c2-ae78-232b91c86090)

 

After run, artifacts copied 
 
![image](https://github.com/user-attachments/assets/b40a06d1-6c72-49bb-a84a-0ebbc1470b07)

 ![image](https://github.com/user-attachments/assets/53c2497f-1e60-4d7a-86dc-629df3511691)


Click Release pipe line and create
![image](https://github.com/user-attachments/assets/6029d6cd-1c15-4886-9a74-cd6643d52f34)

 
Select Empty job

Select artifact

 ![image](https://github.com/user-attachments/assets/12839c69-c7d6-41b4-aabe-e8fe54e7f10d)


Save changes

Add task

![image](https://github.com/user-attachments/assets/2d26574a-7730-4c7d-8244-ad20d37dfcb1)


 

Installing Terraform
 ![image](https://github.com/user-attachments/assets/50915718-b1fa-4806-b3e7-e533c829b976)


Add Terraform also
 
![image](https://github.com/user-attachments/assets/b3d6081d-2bd7-4df5-9d4d-6f0f391effae)

![image](https://github.com/user-attachments/assets/f222f831-de72-4975-bd18-2ddab69b276f)
![image](https://github.com/user-attachments/assets/ebaa82e4-fe52-46a7-b92a-b653918a05ab)

 

Create Release
 
 ![image](https://github.com/user-attachments/assets/4eea2ab6-630c-48e3-a990-08318bd0f36b)

![image](https://github.com/user-attachments/assets/3214e251-8e53-479c-84ee-a1e36a1cf30f)
![image](https://github.com/user-attachments/assets/f858362c-9b83-422b-ac00-3da9d531c858)
![image](https://github.com/user-attachments/assets/e9483a41-cefe-4a99-8e09-40d4b5c5cd64)
![image](https://github.com/user-attachments/assets/08c313de-c2ef-4353-9719-d643f7b647fa)




 
 


Resource group created successfully in Azure

Next I tried with below terraform code to deploy ADF and few storage containers

![image](https://github.com/user-attachments/assets/ef749611-accf-4f72-ac3a-1bc87ddfaa6f)

Then executed pipeline and got expected result

![image](https://github.com/user-attachments/assets/b0192256-2b20-41c1-a8cb-46dd5fa489a2)

![image](https://github.com/user-attachments/assets/317b13a3-84a8-4321-9229-1928cd52c662)

![image](https://github.com/user-attachments/assets/eef515ab-01fc-4e10-9dc2-bf06a93ad931)

And state of Terraform exeuction is captured in the Azure storage container

![image](https://github.com/user-attachments/assets/c65664e7-56b0-4ff1-a600-1d2030978241)






 
