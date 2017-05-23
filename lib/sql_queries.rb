# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts
"SELECT Projects.title, sum(Pledges.amount)
FROM Projects
INNER JOIN Pledges ON Projects.id = Pledges.project_id
GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"SELECT Users.name, Users.age, sum(Pledges.amount)
 FROM Users
 INNER JOIN Pledges ON Pledges.user_id = Users.id
 GROUP BY Users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT Projects.title, (sum(Pledges.amount) - Projects.funding_goal)
FROM Projects
INNER JOIN Pledges ON Projects.id = Pledges.project_id
GROUP BY projects.title HAVING (sum(Pledges.amount) >= Projects.funding_goal);"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"SELECT Users.name, sum(Pledges.amount)
FROM Users
INNER JOIN Pledges ON Pledges.user_id = Users.id
GROUP BY Users.name
ORDER BY(sum(Pledges.amount));"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT Projects.category, Pledges.amount
FROM Projects
INNER JOIN Pledges ON Projects.id = Pledges.project_id
WHERE Projects.category == 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"SELECT Projects.category, SUM(Pledges.amount)
FROM Projects
INNER JOIN Pledges ON Pledges.project_id = Projects.id
WHERE Projects.category == 'books'
GROUP BY Projects.category;"
end
