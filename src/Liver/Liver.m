classdef Liver
    properties
        time
        time_step
        liver_SpO2
        liver_glucose
        liver_flowrate
    end
    methods 
        % Liver object constructor
        function obj = Liver(time, time_step, liver_SpO2, liver_glucose, liver_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.liver_SpO2 = liver_SpO2;
            obj.liver_glucose = liver_glucose;
            obj.liver_flowrate = liver_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function liver_SpO2 = get.liver_SpO2(obj)
            liver_SpO2 = obj.liver_SpO2;
        end
        function liver_glucose = get.liver_glucose(obj)
            liver_glucose = obj.liver_glucose;
        end
        function liver_flowrate = get.liver_flowrate(obj)
            liver_flowrate = obj.liver_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.liver_SpO2(obj, liver_SpO2)
            obj.liver_SpO2 = liver_SpO2;
        end
        function obj = set.liver_glucose(obj, liver_glucose)
            obj.liver_glucose = liver_glucose;
        end
        function obj = set.liver_flowrate(obj, liver_flowrate)
            obj.liver_flowrate = liver_flowrate;
        end
    end
end
