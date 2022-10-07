/*

    Link   : https://leetcode.com/problems/tree-node/description/
    author : Mohamed Ibrahim

*/


SELECT
    atree.id,
    IF(ISNULL(atree.p_id),
        'Root',
        IF(atree.id IN (SELECT p_id FROM tree), 'Inner','Leaf')) Type
FROM
    tree atree
ORDER BY atree.id




