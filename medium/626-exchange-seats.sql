-- Problem: Exchange Seats
-- Link: https://leetcode.com/problems/exchange-seats/
-- Difficulty: Medium
-- Description:
--   Swap the seat id of every two consecutive students.
--   If the number of students is odd, the last student's seat remains unchanged.
--   Return the result table ordered by id in ascending order.


select 
case 
      when id%2=1 and id=(select max(id) from Seat) then id
      when id%2=1 then id+1
      when id%2=0 then id-1
end as id ,student     
from Seat
order by id

