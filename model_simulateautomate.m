%123
%456
% this is code for the automate the simulation 
% f='TRAnsfer_Function'
f=input("enter the model file name");
open_system(f)
% if(is_simulink_loaded)
%     fprintf("loaded successfully\n");
% end
is_loaded = bdIsLoaded(f);
if(is_loaded)
     fprintf("Model is loaded successfully\n ");
% else
%       disp("Model is not successfull");
end
 
  simOut=sim(f);
  simout;
set_param(f,"SimulationCommand","start");
% if simOut.get('Error') == 0
%     disp("No errors");
% end
if isempty(simOut)
        disp('No simulation results found. Check for errors or warnings.');
else
    disp('Simulation completed successfully.');
end
