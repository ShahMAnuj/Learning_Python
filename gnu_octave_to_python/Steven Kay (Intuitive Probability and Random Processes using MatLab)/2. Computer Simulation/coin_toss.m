%{
This function generates a vector X, whose each entry represents the outcome
of a coin flip: 
      '0' represents tails
      '1' represents heads 
This function takes only one input:
      M (number of trials)      
%}

function X = coin_toss(M)
for i=1:M
u=rand(1,1);
  if u <= 0.5
    X(i,1)=0;
  else
    X(i,1)=1;
  end
end
endfunction