CREATE TABLE delhi_ncr_ola_data (
    date DATE NOT NULL,
    time TIME NOT NULL,
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_status VARCHAR(50) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    vehicle_type VARCHAR(50) NOT NULL,
    pickup_location VARCHAR(100) NOT NULL,
    drop_location VARCHAR(100) NOT NULL,
    avg_vtat FLOAT,
    avg_ctat FLOAT,
    cancelled_rides_by_customer INT NOT NULL,
    reason_for_cancelling_by_customer TEXT,
    cancelled_rides_by_driver INT NOT NULL,
    reason_for_cancelling_by_driver TEXT,
    incomplete_rides INT NOT NULL,
    incomplete_rides_reason TEXT,
    booking_value FLOAT,
    ride_distance FLOAT,
    driver_ratings FLOAT,
    customer_rating FLOAT,
    payment_method VARCHAR(50) NOT NULL
);
ALTER TABLE delhi_ncr_ola_data DROP CONSTRAINT delhi_ncr_ola_data_pkey;
select * from delhi_ncr_ola_data;

SELECT COUNT(*) FROM public.delhi_ncr_ola_data;

