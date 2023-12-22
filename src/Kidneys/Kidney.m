classdef Kidney
    properties
        time
        time_step
        kidney_SpO2
        kidney_glucose
        kidney_flowrate
    end
    methods 
        % Kidney object constructor
        function obj = Kidney(time, time_step, kidney_SpO2, kidney_glucose, kidney_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.kidney_SpO2 = kidney_SpO2;
            obj.kidney_glucose = kidney_glucose;
            obj.kidney_flowrate = kidney_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function kidney_SpO2 = get.kidney_SpO2(obj)
            kidney_SpO2 = obj.kidney_SpO2;
        end
        function kidney_glucose = get.kidney_glucose(obj)
            kidney_glucose = obj.kidney_glucose;
        end
        function kidney_flowrate = get.kidney_flowrate(obj)
            kidney_flowrate = obj.kidney_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.kidney_SpO2(obj, kidney_SpO2)
            obj.kidney_SpO2 = kidney_SpO2;
        end
        function obj = set.kidney_glucose(obj, kidney_glucose)
            obj.kidney_glucose = kidney_glucose;
        end
        function obj = set.kidney_flowrate(obj, kidney_flowrate)
            obj.kidney_flowrate = kidney_flowrate;
        end
    end
end
