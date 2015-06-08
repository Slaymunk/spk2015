
function xoverKids  = crossover_two_point_order(parents,options,NVARS, ...
    FitnessFcn,thisScore,thisPopulation)
%����������� ������������� ����������� 
nKids = length(parents)/2;
xoverKids = cell(nKids,1); % Normally zeros(nKids,NVARS);
index = 1;
for i=1:nKids
    %���� �����
    parent1 = thisPopulation{parents(index)};
    if(parents(index) == length(thisPopulation))
        parent2 = thisPopulation{parents(index)-1};
    else 
        parent2 = thisPopulation{parents(index)+1};
    end
    %����������� �� ����� �����������
     p1 = randi([1 length(parent1)],1,1);
     child = parent1;
     n = 0;
     %��������� � ������� �� ������� ����������� ����� 2 
      %������ � �������������� ������ ���� ������� 
     for j = p1+1:length(parent2)       
        if all(child ~= parent2(j))
            child(p1+1+n) =  parent2(j);
            n = n+1;
        end
     end
     xoverKids{i} = child;
     index = index + 2;
end
