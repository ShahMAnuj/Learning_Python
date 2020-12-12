function result = SIR(x,t)
  beta = 10/(40*8*24);
  gamma = 3/(15*24);
  
  S = x(1); I = x(2); R = x(3);
  result = [-beta*S*I ...
             beta*S*I - gamma*I ...
             gamma*I];
end
