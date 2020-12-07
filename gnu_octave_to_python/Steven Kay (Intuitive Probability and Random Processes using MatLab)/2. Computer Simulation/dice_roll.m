%{
This function generates a vector X, whose each entry represents the outcome
of a dice roll: 
    '1', '2', '3', '4', '5', and '6'
This function takes only one input:
     M (number of trials)      
%}

function X = dice_roll(M)
for i=1:M
u=rand(1,1);
  if u <= 1/6
    X(i,1)=1;
  elseif u > 1/6 & u <= 2/6
    X(i,1)=2;
  elseif u > 2/6 & u <= 3/6
    X(i,1)=3; 
  elseif u > 3/6 & u <= 4/6
    X(i,1)=4;
  elseif u > 4/6 & u <= 5/6
    X(i,1)=5;
  else
    X(i,1)=6;
  end
end
endfunction