% Create a vector of zeros to store our coefficients
b = zeros(1,100);

%Determine the range of values you much let k range over
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

%Display bar graph of coefficients
bar(b);