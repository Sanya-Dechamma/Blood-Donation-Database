Problem Overview
The ‘Blood Bank Management System’ allows us to keep track of quality of blood and also keeps  track  of  available  blood  when  requested  by  the  acceptor.  The  existing  systems  are Manual systems which are time consuming and not so effective. ‘Blood Bank Management 
system’ automates the distribution of blood. This database consists of thousands of records of each blood bank.The ‘Blood Bank Management System’ allow us to keep track of donors and their blood groups and the recipients who might need them in emergency cases. The existing systems can be manual but they are time consuming and need a lot of manual labor which is impossible in emergency situations. Therefore, it is necessary to develop a data management system to keep track of donors and rare blood groups to minimize cost and making it less time consuming, more flexible and manageable.

Tables in the project
	Manager Table
	Donor Table
	City Table
	Recipient Table
	Recording Staff Table

	Manager Table
The manager of the blood bank is responsible for taking care of the available and unavailable blood samples, handling new entries and requests for blood from various organizations. The manager has a unique ID as (m_ID) as the primary key along with his name and phone number.

	Donor Table
The donor is a person who willingly donates blood of his own free will. He has a unique ID (bd_ID) and his personal details are stored such as name, age, gender and blood type. Also it contains the recording ID of the recording staff who recorded this information and the city in which it occurred

	City Table
This will store the information regarding the presence of donors and recipients. It contains a unique identifier (city_ID) as primary key to identify that particular city along with the name of that city.

	Recipient Table
The recipient is a person who receives the blood from the donor and it is kept confidential. The recipient has a unique ID (reci_ID) as primary key along with their personal information.

	Recording Staff Table
The staff who registers the blood donor and recipients. They have a unique ID (reco_ID) as primary key along with their name, phone number and gender.


Relationship between Tables
City and Blood_Donor
 In a city, many donors are available but one donor belongs to  one city only.

City and Recipient
In a city, many recipient can live but one recipient belongs to one city.

Recording Staff and Donor
One recording staff can be able to register many donors but the donor can register his information with only one recording staff.

Recording Staff and Recipient
One recording staff can be able to register many recipients but the recipient can register his information with only one recording staff.


