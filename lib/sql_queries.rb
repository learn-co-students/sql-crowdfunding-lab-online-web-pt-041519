def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
  "SELECT projects.title, SUM(amount) 
  FROM projects, pledges 
  GROUP BY pledges.project_id, projects.title 
  HAVING projects.id = pledges.project_id 
  ORDER BY projects.title ASC;" 
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, SUM(amount) 
  FROM users, pledges 
  GROUP BY pledges.user_id, users.name 
  HAVING users.id = pledges.user_id 
  ORDER BY users.name ASC;" 
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT projects.title, SUM(amount) - projects.funding_goal 
  FROM projects, pledges 
  WHERE pledges.project_id = projects.id 
  GROUP BY Projects.title 
  HAVING projects.id = pledges.project_id 
  ORDER BY SUM(amount) - projects.funding_goal > -1 DESC LIMIT 2;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT users.name, SUM(amount)
FROM users, pledges
WHERE pledges.user_id = users.id
GROUP BY users.name
HAVING users.id = pledges.user_id
ORDER BY SUM(amount), users.name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category, pledges.amount 
FROM pledges 
LEFT JOIN projects 
ON pledges.project_id = projects.id 
WHERE projects.category = 'music';" 
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT projects.category, SUM(amount)
FROM pledges 
LEFT JOIN projects 
ON pledges.project_id = projects.id 
WHERE projects.category = 'books';" 
end
