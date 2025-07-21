create database Ola;
use Ola;
select * from bookings;
#1. Retrieve all successful bookings:\
create view Successful_Bookings as
select * from bookings
where Booking_Status='Success';
select * from Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle_type as
select Vehicle_Type,avg(Ride_Distance)
as avg_distance from bookings
group by Vehicle_Type;
select * from ride_distance_for_each_vehicle_type;

#3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers as
select count(*) from bookings
where Booking_Status="Canceled by Customer";
select*from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
create view Top_5_Customers as
select Customer_ID,count(Booking_ID)as total_ride
from bookings
group by Customer_ID
order by total_ride desc limit 5;
select*from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View Rides_cancelled_by_Drivers_P_C_Issues As
select count(*) from bookings
where Canceled_Rides_by_Driver="Personal & Car related issue";
select*from Rides_cancelled_by_Drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings 
where Vehicle_Type="Prime Sedan";
select*from Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
select * from bookings
where Payment_Method="UPI";
select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
select Vehicle_Type,avg(Customer_Rating)
as avg_cust_rating
from bookings
group by Vehicle_Type;
select*from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Create View total_successful_ride_value As
select sum(Booking_Value)
 from bookings
where Booking_Status="Success";
select*from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
 FROM bookings
 WHERE Incomplete_Rides = 'Yes';
 Select * from Incomplete_Rides_Reason;
 
 #1. Retrieve all successful bookings:
Select * From Successful_Bookings;
#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;
#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;
#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Rides_cancelled_by_Drivers_P_C_Issues;
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;
#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;
#8. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;
#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;
#10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason;