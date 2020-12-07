%%THIS PROGRAM IS HELLA COMPLICATED! SO PLEASE, DON'T FEEL SAD IF YOU CAN'T UNDERSTAND IT.
%%SHM = Simple Harmonic Motion

function SHM 
%%STEP 1: Intitial plot. Before you move the slider around to vary the vector field, you need an initial plot.   
    x = -10:1:10; %initially, position (x) takes the values [-10,-9,-8,...,+8,+9,+10]
    v = -10:1:10; %initially, velocity (x) takes the values [-10,-9,-8,...,+8,+9,+10]
    [X,V] = meshgrid(x,v); %let's create a grid for our vector field!
    Fx = V; %In SHM, we know that x' = v. That is why we're puting Fx = V.
    Fv = -0.9 * X; %In SHM, we know that v' = -w^2 * x. Selecting arbitrary value of w, we put Fv = -w^2 * X.
    figure(1);
    quiver(X,V,Fx,Fv); 
      %Quiver is similar to the plot() command, but is used to plot vector fields instead of regular functions.
    grid on;
    title('Simple Harmonic Motion');
    ylabel('Velocity (v)');
    xlabel('Position (x)');
    
    %% Add ui 'slider' element      
    hslider = uicontrol (                  ...
         'style', 'slider',                ...%because we want a slider!
         'Units', 'normalized',            ...%No idea.
         'position', [0.1, 0.1, 0.8, 0.1], ...%No idea
         'min', 1,                         ...%Minimum value of slider
         'max', 25,                        ...%Maximum value of slider
         'value', 10,                      ...%Default value of slider?
         'callback', {@plotstuff}          ...%Send this argument to the function plotstuff?
       );
end


%% Callback function called by slider event
%% Also in file myplot.m (i.e. a subfunction)
function plotstuff (h, event)
  n = get (h, 'value');%What is the value of `n'? the value of `n' is just the value of `h' from the slider.
  %%Same code as in the function SHM, but now with variable parameters. 
  x = -n:1:n;
  v = -n:1:n;
  [X,V] = meshgrid(x,v);
  Fx = V;
  Fv = -0.9 * X;
  figure(1);
  quiver(X,V,Fx,Fv);
  grid on;
  title('Simple Harmonic Motion');
  ylabel('Velocity (v)');
  xlabel('Position (x)');
end




