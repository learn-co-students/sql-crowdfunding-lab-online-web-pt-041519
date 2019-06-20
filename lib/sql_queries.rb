# Select titles of projects and their pledge amounts, alphabetized by project title
def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
  "SELECT projects.title, 
  SUM(pledges.amount) AS 'Total_pledges'
  FROM projects
  INNER JOIN pledges
  ON projects.id = pledges.project_id
  GROUP BY projects.id
  ORDER BY projects.title
  ;"
end

# Select user name, user age, and total pledge amounts; alphabetized by user name
def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age,
  SUM(pledges.amount)
  FROM users
  INNER JOIN pledges
  ON users.id = pledges.user_id
  GROUP BY users.id
  ORDER BY users.name
  ;"
 end
 
 # Select title and amount over goal of projects that have met funding goals
 def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT projects.title,
  SUM(pledges.amount) - projects.funding_goal AS 'Amount_Over_Goal'
  FROM projects
  INNER JOIN pledges
  ON projects.id = pledges.project_id
  GROUP BY projects.id
  HAVING SUM(pledges.amount) - projects.funding_goal >= 0
  ;"
 end

# Select user name and pledge totals grouped by name, and ordered by amount and user name
def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
  "SELECT users.name, 
  SUM(pledges.amount) AS 'Total_pledges'
  FROM users
  INNER JOIN pledges
  ON users.id = pledges.user_id
  GROUP BY users.name
  ORDER BY SUM(pledges.amount), users.name
  ;"
end

# Select project category names and individual pledge amounts in music category
def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT projects.category, pledges.amount
  FROM projects
  INNER JOIN pledges
  ON projects.id = pledges.project_id
  WHERE projects.category = 'music'
  ;"
end

# Select project category name and pledge total in books category
def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT projects.category, 
  SUM(pledges.amount) AS 'Total_pledges'
  FROM projects
  INNER JOIN pledges
  ON projects.id = pledges.project_id
  WHERE projects.category = 'books'
  ;"
end