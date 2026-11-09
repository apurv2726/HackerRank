select sum(c.population) from city c join country co on 
c.countrycode=co.code where continent='Asia';
