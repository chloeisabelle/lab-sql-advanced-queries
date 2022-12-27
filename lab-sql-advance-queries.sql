-- 1. List each pair of actors that have worked together.

select f.film_id, fa1.actor_id, fa2.actor_id, concat(a1.first_name," ", a1.last_name), concat(a2.first_name," ", a2.last_name)
from film f
    inner join film_actor fa1
    on f.film_id=fa1.film_id
    
    inner join actor a1
    on fa1.actor_id=a1.actor_id
    
    inner join film_actor fa2
    on f.film_id=fa2.film_id
    
    inner join actor a2
    on fa2.actor_id=a2.actor_id ;


-- 2. For each film, list actor that has acted in more films. ** I can't figure out how to do this for each film - have done for total films - please can you show me right answer? 

select count(film_actor.actor_id), actor.first_name, actor.last_name 
from actor inner join film_actor on actor.actor_id = film_actor.actor_id
group by film_actor.actor_id ;
