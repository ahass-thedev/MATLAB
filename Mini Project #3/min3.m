function [winner] = checkWinner (player, area, handles)
    winner=0;
    % logic for winner
    % checking every possible combination that each player can win
    if area(1,1)==player && area(1,2)==player && area(1,3)==player
        winner=area(1,1);
        return;
    elseif area(2,1)==player && area(2,2)==player && area(2,3)==player
        winner=area(2,1);
        return;
    elseif area(3,1)==player && area(3,2)==player && area(3,3)==player
        winner=area(3,1);
        return;
    elseif area(1,1)==player && area(2,1)==player && area(3,1)==player
        winner=area(1,1);
        return;
    elseif area(1,2)==player && area(2,2)==player && area(3,2)==player
        winner=area(1,2);
        return;
    elseif area(1,3)==player && area(2,3)==player && area(3,3)==player
        winner=area(1,3);
        return;
    elseif area(1,1)==player && area(2,2)==player && area(3,3)==player
        winner=area(1,1);
        return;
    elseif area(1,3)==player && area(2,2)==player && area(3,1)==player
        winner=area(1,3);
        return;
    elseif area(1)~=0 && area(2)~=0 && area(3)~=0 && area(4)~=0 && area(5)~=0 && area(6)~=0 && area(7)~=0 && area(8)~=0 && area(9)~=0
        winner=-1;
    end
end


function handles  = buttonPress(hObject,handles)
%sets string of button and the color flash
if(get(hObject, 'String') == 'X' || get(hObject, 'String') == 'O')
    set(hObject, 'Button', 'RED!');
    set(hObject,'BackgroundColor','red');
    pause(0.5);
    set(hObject,'BackgroundColor','white');
    
else
    %checks the turns and if button has a piece and places it
    if(handles.nextTurn.String == 'O')
        set(hObject,'String','O');
        %switches turn numbers
        handles.turnNumber = handles.turnNumber +1;
        handles.nextTurn.String = 'X';
    else
        set(hObject,'String','X');
        handles.turnNumber = handles.turnNumber +1;
        handles.nextTurn.String = 'O';
    end
end
end
        