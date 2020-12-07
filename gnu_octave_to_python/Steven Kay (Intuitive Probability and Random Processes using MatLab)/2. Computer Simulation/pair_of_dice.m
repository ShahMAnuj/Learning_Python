%{
This program first generates two vectors X1 and X2. Each entry of the 
vectors X1 and X2 represents the outcome of a dice roll: 
    '1', '2', '3', '4', '5', and '6'
Then, we add the entries of X1 and X2, entry-by-entry, to get another 
vector Y. We then plot a relative-frequency histogram of the vector Y. 

According to the Law of Large Numbers, if the number of trials (M) 
which you enter is large enough, then the relative frequency of an outcome 
will be a good estimate for the probability of that outcome!
%}

M = input('Enter number of trials:');

X1 = dice_roll(M);
X2 = dice_roll(M);
Y = (X1 + X2);

hist(Y, 1:1:12, 1);