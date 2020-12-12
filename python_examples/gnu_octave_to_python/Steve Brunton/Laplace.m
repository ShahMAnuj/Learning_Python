clear all, close all, clc
L = 100;
H = 100;
u = zeros(L,H);

iteration = 0;
while (iteration<1000),
    iteration = iteration + 1
    
    % BCs
    u(1,:) = 0;  % top = 0
    u(L,:) = 0;  % bottom = 0
%     u(:,1) = 1;  % left = 1
    u(:,H) = 1;  % right = 1 
    
    % Other BCs    
%     u(:,H) = sin(2*pi*(1:L)/L);
    u(:,1) = 0;

    % Plot every 10 iterations
    if (mod(iteration,10)==0),        
        imagesc(u);
        colorbar;
        drawnow;
    end
    
    %% OPTION 1, A:  Use 'del2' to compute Laplacian
    Lu = del2(u);   % Laplacian of u
    u(2:L-1,2:H-1) = u(2:L-1,2:H-1)+Lu(2:L-1,2:H-1);  % replace inner part
    % remember to vary alpha and dt... foreshadowing!
    

    %% OPTION 1, B:  Use a 5-point stencil
%     Lu = u;
%     for i=2:L-1
%         for j=2:H-1
%             Lu(i,j) = (1)*(-4*u(i,j)+u(i,j+1)+u(i-1,j)+u(i+1,j)+u(i,j-1));
%         end
%     end
%     u(2:L-1,2:H-1) = u(2:L-1,2:H-1)+.1*Lu(2:L-1,2:H-1);    
%     % less numerically stable... need a smaller dt.
%     
    
    %% OPTION 1, C:  Use an 8-point stencil
%     Lu = u;
%     for i=2:L-1
%         for j=2:H-1
%             Lu(i,j) = (-8*u(i,j)+u(i-1,j+1)+u(i,j+1)+u(i+1,j+1)+u(i-1,j)+u(i+1,j)+u(i-1,j-1)+u(i,j-1)+u(i+1,j-1));
%         end
%     end
%     u(2:L-1,2:H-1) = u(2:L-1,2:H-1)+.1*Lu(2:L-1,2:H-1);    
%     % less numerically stable... need a smaller dt.
   
%     %% OPTION 2, A:  Forget heat equation, just iteratively try to make Laplacian = 0
%     % 5-pt stencil
%     Lu = u;
%     for i=2:L-1
%         for j=2:H-1
%             Lu(i,j) = (1/4)*(u(i,j+1)+u(i-1,j)+u(i+1,j)+u(i,j-1));
%         end
%     end
%     u(2:L-1,2:H-1) = Lu(2:L-1,2:H-1);    
% 
%     
    %% OPTION 2, B:  Forget heat equation, just iteratively try to make Laplacian = 0
%     % 8-pt stencil
%     Lu = u;
%     for i=2:L-1
%         for j=2:H-1
%             Lu(i,j) = (1/8)*(u(i-1,j+1)+u(i,j+1)+u(i+1,j+1)+u(i-1,j)+u(i+1,j)+u(i-1,j-1)+u(i,j-1)+u(i+1,j-1));
%         end
%     end
%     u(2:L-1,2:H-1) = Lu(2:L-1,2:H-1);        

end