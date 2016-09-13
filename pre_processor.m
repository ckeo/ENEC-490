function [processed_data] = pre_processor( gobbled_data )
%Pre processing the data


%missing dta - 0
%negative data - -999

%missing = find(gobbled_data == 0);

for i =1:length(gobbled_data)
    
    if gobbled_data(i) < 1
        
        gobbled_data(i) = mean([gobbled_data(i-1) gobbled_data(i+1)]);
        
    elseif gobbled_data(i) > 200000
        
        gobbled_data(i) = mean([gobbled_data(i-1) gobbled_data(i+1)]);
        
    end
end

processed_data = gobbled_data;

end

