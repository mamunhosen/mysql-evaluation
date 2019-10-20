SELECT u.*, 
AVG(ts.correct) 'avg_correct_ans', 
MAX(ts.time_taken ) 'most_recently_taken'
FROM `user` u 
LEFT JOIN `test_result` ts
ON u.user_id=ts.user_id
GROUP BY u.user_id
