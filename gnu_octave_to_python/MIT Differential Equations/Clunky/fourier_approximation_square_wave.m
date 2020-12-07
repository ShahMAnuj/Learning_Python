b = zeros(1,100);
t = linspace(-2*pi,2*pi,10^5);
N = length(t);
Sq = sign(sin(t));


%% COPY and PASTE the for loop you found from the problem above.
for k= 1:100
    %For each index k define a function to integrate
    f = @(t) sign(sin(t)).*sin(k.*t);
    %Set the kth entry of b equal to the value of the Fourier coefficient
    b(k) = (1/pi)*integral(f,-pi,pi);
    % If b(k) is small, set to 0 since we want to discount nonzero numbers due to numerical error 
    if b(k)<10^-5
        b(k) = 0;
    end
end


%Compute superposition of truncated Fourier series
FSterms = zeros(50,N);

%First, multiply each coefficient by the appropriate sin function
for j=1:50
    if b(j) > 10^-5
        % Give an expression for the jth Fourier term
        FSterms(j,:) = b(j).*sin(j.*t);
    end
end

%Take the sum of the first 100 terms
SqFS = sum(FSterms);

%Plot the Sq and the SqFS
plot(t,SqFS,'b'); hold on;
plot(t,Sq,'k');