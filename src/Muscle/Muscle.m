classdef Muscle
    properties
        time
        time_step
        muscle_SpO2
        muscle_glucose
        muscle_flowrate
    end
    methods 
        % Muscle object constructor
        function obj = Muscle(time, time_step, muscle_SpO2, muscle_glucose, muscle_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.muscle_SpO2 = muscle_SpO2;
            obj.muscle_glucose = muscle_glucose;
            obj.muscle_flowrate = muscle_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function muscle_SpO2 = get.muscle_SpO2(obj)
            muscle_SpO2 = obj.muscle_SpO2;
        end
        function muscle_glucose = get.muscle_glucose(obj)
            muscle_glucose = obj.muscle_glucose;
        end
        function muscle_flowrate = get.muscle_flowrate(obj)
            muscle_flowrate = obj.muscle_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.muscle_SpO2(obj, muscle_SpO2)
            obj.muscle_SpO2 = muscle_SpO2;
        end
        function obj = set.muscle_glucose(obj, muscle_glucose)
            obj.muscle_glucose = muscle_glucose;
        end
        function obj = set.muscle_flowrate(obj, muscle_flowrate)
            obj.muscle_flowrate = muscle_flowrate;
        end
    end
end
