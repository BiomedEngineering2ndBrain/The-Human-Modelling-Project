classdef Meal
    properties
        carbohydrates
        proteins
        fibre
        lipids
    end
    methods 
        % Meal object constructor
        function obj = Meal(carbohydrates, proteins, fibre, lipids)
            obj.carbohydrates = carbohydrates;
            obj.proteins = proteins;
            obj.fibre = fibre;
            obj.lipids = lipids;
        end     
        % getters
        function carbohydrates = get.carbohydrates(obj)
            carbohydrates = obj.carbohydrates;
        end
        function proteins = get.proteins(obj)
            proteins = obj.proteins;
        end
        function fibre = get.fibre(obj)
            fibre = obj.fibre;
        end
        function lipids = get.lipids(obj)
            lipids = obj.lipids;
        end
        % setters
        function obj = set.carbohydrates(obj, carbohydrates)
            obj.carbohydrates = carbohydrates;
        end
        function obj = set.proteins(obj, proteins)
            obj.proteins = proteins;
        end
        function obj = set.fibre(obj, fibre)
            obj.fibre = fibre;
        end
        function obj = set.lipids(obj, lipids)
            obj.lipids = lipids;
        end
    end
end
