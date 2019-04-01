/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/

select * 
from hackers join (
    select hacker_id, min_score, score
    from submissions join (
        select score as min_score, challenge_id
        from challenges join Difficulty 
        on challenges.difficulty_level = Difficulty.difficulty_level
    ) as d1 on submissions.challenge_id = d1.challenge_id
) as d2 on hackers.hacker_id = d2.hacker_id 