function fare = taxi_fare(dis, time)
fare = 5 + 2 * ceil(dis-1) + ceil( time) * 0.25;