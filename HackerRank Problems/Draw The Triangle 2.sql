/* https://www.hackerrank.com/challenges/draw-the-triangle-2/problem */
declare @row int = 1
while(@row<21)
begin
print replicate('* ', @row)
set @row = @row + 1
end
