pkg load io;
all_data =  xlsread('all_data.xlsx');

mumbai_new_cases = all_data(:,3);
mumbai_total_cases = cumsum(mumbai_new_cases);
mumbai_moving_average = movmean(mumbai_new_cases,5);

india_new_cases = all_data(:,4);
india_total_cases = cumsum(india_new_cases);
india_moving_average = movmean(india_new_cases,5);

loglog(india_total_cases, india_moving_average);
hold;
loglog(mumbai_total_cases, mumbai_moving_average);


title('Growth of COVID-19: Mumbai vs India');
xlabel('Total confirmed cases');
ylabel('New confirmed cases');
