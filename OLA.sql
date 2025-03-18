---- SQL Questions:
---- 1. Retrieve all successful bookings:
Create View Successful_Booking As
SELECT * FROM delhi_ncr_ola_data
WHERE Booking_Status = 'Success';

Select * from Successful_Booking;

-----2. Find the average ride distance for each vehicle type:
Create View rid_distance_for_each_vehicles As
SELECT Vehicle_Type,AVG(Ride_Distance)
as avg_distance FROM delhi_ncr_ola_data
GROUP BY Vehicle_Type;

Select * from rid_distance_for_each_vehicles;


-----3. Get the total number of cancelled rides by customers:
Create View Ride_cancelled_by_customer As
SELECT SUM(cancelled_rides_by_customer) AS total_cancelled_rides
FROM delhi_ncr_ola_data;

Select * FROM Ride_cancelled_by_customer

-----4. List the top 5 customers who booked the highest number of rides:
Create View Top_customer AS
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM delhi_ncr_ola_data
GROUP BY Customer_ID
ORDER BY total_rides
DESC LIMIT 5;

SELECT * FROM Top_customer 

-----5. Get the number of rides cancelled by drivers due to personal and car-related issues:

Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) AS cancelled_due_to_personal_car_issues
FROM delhi_ncr_ola_data
WHERE reason_for_cancelling_by_driver = 'Personal & Car related issues';

SELECT * from Rides_cancelled_by_Drivers_P_C_Issues

-----6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM delhi_ncr_ola_data WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM Max_Min_Driver_Rating


-----7. Retrieve all rides where payment was made using UPI:

Create View UPI_Payment As
SELECT * FROM delhi_ncr_ola_data
WHERE Payment_Method = 'UPI';

select * from UPI_Payment;

-----8. Find the average customer rating per vehicle type:

Create View AVG_Cust_Rating As
SELECT Vehicle_Type,AVG(Customer_Rating) as avg_customer_rating
FROM delhi_ncr_ola_data
GROUP BY Vehicle_Type;

select * from AVG_Cust_Rating;

-----9. Calculate the total booking value of rides completed successfully:

Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM delhi_ncr_ola_data
WHERE Booking_Status = 'Success';S

Select * from total_successful_ride_value;

-----10. List all incomplete rides along with the reason:

Create View Incomplete_Rides_Reason As
SELECT booking_id, customer_id, vehicle_type, pickup_location, drop_location, 
       incomplete_rides, incomplete_rides_reason
FROM delhi_ncr_ola_data
WHERE incomplete_rides > 0;

Select * from Incomplete_Rides_Reason;
