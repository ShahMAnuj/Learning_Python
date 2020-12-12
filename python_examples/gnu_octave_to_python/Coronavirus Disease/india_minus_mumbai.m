pkg load io;
all_data =  xlsread('all_data.xlsx');

full_india_new_cases = all_data(:,2);
full_india_total_cases = cumsum(full_india_new_cases);

india_minus_mumbai_new_cases = all_data(:,4);
india_minus_mumbai_total_cases = cumsum(india_minus_mumbai_new_cases);

loglog(full_india_total_cases, full_india_new_cases);
hold;
loglog(india_minus_mumbai_total_cases, india_minus_mumbai_new_cases);

title('Growth of COVID-19: Mumbai vs India');
xlabel('Total confirmed cases');
ylabel('New confirmed cases');
legend('Full India', 'India Minus Mumbai');
