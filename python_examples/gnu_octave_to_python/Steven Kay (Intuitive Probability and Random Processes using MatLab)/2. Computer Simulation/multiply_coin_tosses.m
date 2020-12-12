%{
This program first generates two vectors X1 and X2. Each entry of the 
vectors X1 and X2 represents the outcome of a coin flip: 
    '0' represents tails
    '1' represents heads
Then, we multiply the entries of X1 and X2, entry-by-entry, to get another 
vector Y. We then plot a relative-frequency histogram of the vector Y. 

According to the Law of Large Numbers, if the number of trials (M) 
which you enter is large enough, then the relative frequency of an outcome 
will be a good estimate for the probability of that outcome!
%}

M = input('Enter number of trials:');

X1 = coin_toss(M);
X2 = coin_toss(M);
Y = (X1 .* X2);

hist(Y, 0:1:2, 1);


