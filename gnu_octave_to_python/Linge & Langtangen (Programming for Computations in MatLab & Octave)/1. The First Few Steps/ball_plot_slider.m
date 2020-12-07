function ball_plot_slider
  v0 = 5;
  g = 9.81;
  t = linspace(0, 1, 10);
  y = v0*t - 0.5*g*t.^2;
  plot(t, y);
  xlabel('Time (s)');
  ylabel('Height of ball (m)');
  title('Use slider to change step-size!');
  
  hslider = uicontrol (                  
         'style', 'slider',                
         'Units', 'normalized',            
         'position', [0.1, 0.1, 0.8, 0.1], 
         'min', 2,                        
         'max', 20,                        
         'value', 10,                      
         'callback', {@plotstuff}          
       );
endfunction

function plotstuff (h, event)
  n = get (h, 'value');
  
  v0 = 5;
  g = 9.81;
  t = linspace(0, 1, n);
  y = v0*t - 0.5*g*t.^2;
  plot(t, y);
  xlabel('Time (s)');
  ylabel('Height of ball (m)');
  title('Use slider to change step-size!');
end

