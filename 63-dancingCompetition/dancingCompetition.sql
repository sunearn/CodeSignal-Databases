SELECT 
    arbiter_id,
    first_criterion,
    second_criterion,
    third_criterion
FROM scores
WHERE (
    (first_criterion = (SELECT MIN(first_criterion) FROM scores) OR 
     first_criterion = (SELECT MAX(first_criterion) FROM scores)) +
    (second_criterion = (SELECT MIN(second_criterion) FROM scores) OR 
     second_criterion = (SELECT MAX(second_criterion) FROM scores)) +
    (third_criterion = (SELECT MIN(third_criterion) FROM scores) OR 
     third_criterion = (SELECT MAX(third_criterion) FROM scores))
) < 2
ORDER BY arbiter_id;
