/*

link   : https://platform.stratascratch.com/coding/10078-find-matching-hosts-and-guests-in-a-way-that-they-are-both-of-the-same-gender-and-nationality?tabname=question
author : Mohamed ibrahim

*/

select
    distinct a_h.host_id,
    a_g.guest_id
from 
    airbnb_hosts a_h
inner join 
    airbnb_guests a_g
on a_h.nationality = a_g.nationality
and a_h.gender = a_g.gender




