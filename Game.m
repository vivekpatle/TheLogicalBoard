function varargout = Game(varargin)
% GAME MATLAB code for Game.fig
%      GAME, by itself, creates a new GAME or raises the existing
%      singleton*.
%
%      H = GAME returns the handle to a new GAME or the handle to
%      the existing singleton*.
%
%      GAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME.M with the given input arguments.
%
%      GAME('Property','Value',...) creates a new GAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Game_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Game_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Game

% Last Modified by GUIDE v2.5 29-Apr-2016 14:26:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Game_OpeningFcn, ...
                   'gui_OutputFcn',  @Game_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Game is made visible.
function Game_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Game (see VARARGIN)

% Choose default command line output for Game
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Game wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = Game_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
% Determine the selected data set.
handles.selected = get(handles.popupmenu,'Value');





% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
down(handles.current_data);

% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
 left(handles.current_data);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
right(handles.current_data);

% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in b21.
function b21_Callback(hObject, eventdata, handles)
% hObject    handle to b21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
        if selectedIndex  == 1
            if(get(handles.b21,'String')~= 'D' | get(handles.b21,'String')~= 'C')
            (set(handles.b21,'String','N')& set(handles.b21,'BackgroundColor','w')) 
            else (set(handles.b21,'String','N')& set(handles.b21,'BackgroundColor','w')) ;
            end
        elseif selectedIndex  == 2
            if(get(handles.b21,'String')~= 'N' | get(handles.b21,'String')~= 'D')
                (set(handles.b21,'String','C')& set(handles.b21,'BackgroundColor','c'))
            else (set(handles.b21,'String','C')& set(handles.b21,'BackgroundColor','c')) ;
            end
        elseif selectedIndex  == 3
            if(get(handles.b21,'String')~= 'N' | get(handles.b21,'String')~= 'C')
                (set(handles.b21,'String','D')& set(handles.b21,'BackgroundColor','[1,1,0.4]'))
            else (set(handles.b21,'String','D')& set(handles.b21,'BackgroundColor','[1,1,0.4]')) ;
            end
        elseif selectedIndex  == 4
            if(get(handles.b21,'String')== 'N') 
                (set(handles.b21,'String',' ')& set(handles.b21,'BackgroundColor','[0.7647,0.5921,0.6039]'))
            else (set(handles.b21,'String',' ')& set(handles.b21,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
            end
        end
    if(get(handles.b21,'String'))== (get(handles.b22,'String')) |  (get(handles.b21,'String'))== (get(handles.b31,'String')) | (get(handles.b21,'String'))== (get(handles.b11,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b32.
function b32_Callback(hObject, eventdata, handles)
% hObject    handle to b32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
        if selectedIndex  == 1
            if(get(handles.b32,'String')~= 'D' | get(handles.b32,'String')~= 'C')
                (set(handles.b32,'String','N')& set(handles.b32,'BackgroundColor','w')) 
            else (set(handles.b32,'String','N')& set(handles.b32,'BackgroundColor','w')) ;

            end
        elseif selectedIndex  == 2
            if(get(handles.b32,'String')~= 'N' | get(handles.b32,'String')~= 'D')
                (set(handles.b32,'String','C')& set(handles.b32,'BackgroundColor','c'))
            else (set(handles.b32,'String','C')& set(handles.b32,'BackgroundColor','c')) ;
            end
        elseif selectedIndex  == 3
            if(get(handles.b32,'String')~= 'N' | get(handles.b32,'String')~= 'C')
                (set(handles.b32,'String','D')& set(handles.b32,'BackgroundColor','[1,1,0.4]'))
            else (set(handles.b32,'String','D')& set(handles.b32,'BackgroundColor','[1,1,0.4]')) ;
            end
        elseif selectedIndex  == 4
            if(get(handles.b32,'String')== 'N') 
                (set(handles.b32,'String',' ')& set(handles.b32,'BackgroundColor','[0.7647,0.5921,0.6039]'))
            else (set(handles.b32,'String',' ')& set(handles.b32,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
            end
        end
    if(get(handles.b32,'String'))== (get(handles.b33,'String')) |  (get(handles.b32,'String'))== (get(handles.b31,'String')) | (get(handles.b32,'String'))== (get(handles.b22,'String')) |  (get(handles.b32,'String'))== (get(handles.b42,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b42.
function b42_Callback(hObject, eventdata, handles)
% hObject    handle to b42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
        if selectedIndex  == 1
            if(get(handles.b42,'String')~= 'D' | get(handles.b42,'String')~= 'C')
                (set(handles.b42,'String','N')& set(handles.b42,'BackgroundColor','w')) 
            else (set(handles.b42,'String','N')& set(handles.b42,'BackgroundColor','w')) ;

            end
        elseif selectedIndex  == 2
            if(get(handles.b42,'String')~= 'N' | get(handles.b42,'String')~= 'D')
                (set(handles.b42,'String','C')& set(handles.b42,'BackgroundColor','c'))
            else (set(handles.b42,'String','C')& set(handles.b42,'BackgroundColor','c')) ;
            end
        elseif selectedIndex  == 3
            if(get(handles.b42,'String')~= 'N' | get(handles.b42,'String')~= 'C')
                (set(handles.b42,'String','D')& set(handles.b42,'BackgroundColor','[1,1,0.4]'))
            else (set(handles.b42,'String','D')& set(handles.b42,'BackgroundColor','[1,1,0.4]')) ;
            end
        elseif selectedIndex  == 4
            if(get(handles.b42,'String')== 'N') 
                (set(handles.b42,'String',' ')& set(handles.b42,'BackgroundColor','[0.7647,0.5921,0.6039]'))
            else (set(handles.b42,'String',' ')& set(handles.b42,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
            end
        end
    if(get(handles.b32,'String'))== (get(handles.b42,'String')) |  (get(handles.b42,'String'))== (get(handles.b52,'String')) | (get(handles.b42,'String'))== (get(handles.b41,'String')) |  (get(handles.b42,'String'))== (get(handles.b43,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b52.
function b52_Callback(hObject, eventdata, handles)
% hObject    handle to b52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
        if selectedIndex  == 1
            if(get(handles.b52,'String')~= 'D' | get(handles.b52,'String')~= 'C')
                (set(handles.b52,'String','N')& set(handles.b52,'BackgroundColor','w')) 
            else (set(handles.b52,'String','N')& set(handles.b52,'BackgroundColor','w')) ;

            end
        elseif selectedIndex  == 2
            if(get(handles.b52,'String')~= 'N' | get(handles.b52,'String')~= 'D')
                (set(handles.b52,'String','C')& set(handles.b52,'BackgroundColor','c'))
            else (set(handles.b52,'String','C')& set(handles.b52,'BackgroundColor','c')) ;
            end
        elseif selectedIndex  == 3
            if(get(handles.b52,'String')~= 'N' | get(handles.b52,'String')~= 'C')
                (set(handles.b52,'String','D')& set(handles.b52,'BackgroundColor','[1,1,0.4]'))
            else (set(handles.b52,'String','D')& set(handles.b52,'BackgroundColor','[1,1,0.4]')) ;
            end
        elseif selectedIndex  == 4
            if(get(handles.b52,'String')== 'N') 
                (set(handles.b52,'String',' ')& set(handles.b52,'BackgroundColor','[0.7647,0.5921,0.6039]'))
            else (set(handles.b52,'String',' ')& set(handles.b52,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
            end
        end
    if(get(handles.b52,'String'))== (get(handles.b53,'String'))|  (get(handles.b52,'String'))== (get(handles.b51,'String'))  | (get(handles.b52,'String'))== (get(handles.b42,'String'))  |  (get(handles.b52,'String'))== (get(handles.b62,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b62.
function b62_Callback(hObject, eventdata, handles)
% hObject    handle to b62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b62,'String')~= 'D' | get(handles.b62,'String')~= 'C')
            (set(handles.b62,'String','N')& set(handles.b62,'BackgroundColor','w')) 
        else (set(handles.b62,'String','N')& set(handles.b62,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b62,'String')~= 'N' | get(handles.b62,'String')~= 'D')
            (set(handles.b62,'String','C')& set(handles.b62,'BackgroundColor','c'))
        else (set(handles.b62,'String','C')& set(handles.b62,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b62,'String')~= 'N' | get(handles.b62,'String')~= 'C')
            (set(handles.b62,'String','D')& set(handles.b62,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b62,'String','D')& set(handles.b62,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b62,'String')== 'N') 
            (set(handles.b62,'String',' ')& set(handles.b62,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b62,'String',' ')& set(handles.b62,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b62,'String'))== (get(handles.b63,'String')) |  (get(handles.b62,'String'))== (get(handles.b61,'String')) | (get(handles.b62,'String'))== (get(handles.b52,'String')) |  (get(handles.b62,'String'))== (get(handles.b72,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b72.
function b72_Callback(hObject, eventdata, handles)
% hObject    handle to b72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b72,'String')~= 'D' | get(handles.b72,'String')~= 'C')
            (set(handles.b72,'String','N')& set(handles.b72,'BackgroundColor','w')) 
        else (set(handles.b72,'String','N')& set(handles.b72,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b72,'String')~= 'N' | get(handles.b72,'String')~= 'D')
            (set(handles.b72,'String','C')& set(handles.b72,'BackgroundColor','c'))
        else (set(handles.b72,'String','C')& set(handles.b72,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b72,'String')~= 'N' | get(handles.b72,'String')~= 'C')
            (set(handles.b72,'String','D')& set(handles.b72,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b72,'String','D')& set(handles.b72,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b72,'String')== 'N') 
            (set(handles.b72,'String',' ')& set(handles.b72,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b72,'String',' ')& set(handles.b72,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b72,'String'))== (get(handles.b62,'String')) |  (get(handles.b72,'String'))== (get(handles.b82,'String')) | (get(handles.b72,'String'))== (get(handles.b71,'String')) |  (get(handles.b72,'String'))== (get(handles.b73,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b82.
function b82_Callback(hObject, eventdata, handles)
% hObject    handle to b82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b82,'String')~= 'D' | get(handles.b82,'String')~= 'C')
            (set(handles.b82,'String','N')& set(handles.b82,'BackgroundColor','w')) 
        else (set(handles.b82,'String','N')& set(handles.b82,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b82,'String')~= 'N' | get(handles.b82,'String')~= 'D')
            (set(handles.b82,'String','C')& set(handles.b82,'BackgroundColor','c'))
        else (set(handles.b82,'String','C')& set(handles.b82,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b82,'String')~= 'N' | get(handles.b82,'String')~= 'C')
            (set(handles.b82,'String','D')& set(handles.b82,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b82,'String','D')& set(handles.b82,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b82,'String')== 'N') 
            (set(handles.b82,'String',' ')& set(handles.b82,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b82,'String',' ')& set(handles.b82,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b82,'String'))== (get(handles.b72,'String')) |  (get(handles.b82,'String'))== (get(handles.b83,'String')) | (get(handles.b82,'String'))== (get(handles.b81,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b31.
function b31_Callback(hObject, eventdata, handles)
% hObject    handle to b31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b31,'String')~= 'D' | get(handles.b31,'String')~= 'C')
            (set(handles.b31,'String','N')& set(handles.b31,'BackgroundColor','w')) 
        else (set(handles.b31,'String','N')& set(handles.b31,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b31,'String')~= 'N' | get(handles.b31,'String')~= 'D')
            (set(handles.b31,'String','C')& set(handles.b31,'BackgroundColor','c'))
        else (set(handles.b31,'String','C')& set(handles.b31,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b31,'String')~= 'N' | get(handles.b31,'String')~= 'C')
            (set(handles.b31,'String','D')& set(handles.b31,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b31,'String','D')& set(handles.b31,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b31,'String')== 'N') 
            (set(handles.b31,'String',' ')& set(handles.b31,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b31,'String',' ')& set(handles.b31,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b32,'String'))== (get(handles.b31,'String')) |  (get(handles.b31,'String'))== (get(handles.b21,'String')) | (get(handles.b31,'String'))== (get(handles.b41,'String')) 
      h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b41.
function b41_Callback(hObject, eventdata, handles)
% hObject    handle to b41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b41,'String')~= 'D' | get(handles.b41,'String')~= 'C')
            (set(handles.b41,'String','N')& set(handles.b41,'BackgroundColor','w')) 
        else (set(handles.b41,'String','N')& set(handles.b41,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b41,'String')~= 'N' | get(handles.b41,'String')~= 'D')
            (set(handles.b41,'String','C')& set(handles.b41,'BackgroundColor','c'))
        else (set(handles.b41,'String','C')& set(handles.b41,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b41,'String')~= 'N' | get(handles.b41,'String')~= 'C')
            (set(handles.b41,'String','D')& set(handles.b41,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b41,'String','D')& set(handles.b41,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b41,'String')== 'N') 
            (set(handles.b41,'String',' ')& set(handles.b41,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b41,'String',' ')& set(handles.b41,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b41,'String'))== (get(handles.b42,'String')) |  (get(handles.b41,'String'))== (get(handles.b31,'String')) | (get(handles.b51,'String'))== (get(handles.b41,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b51.
function b51_Callback(hObject, eventdata, handles)
% hObject    handle to b51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b51,'String')~= 'D' | get(handles.b51,'String')~= 'C')
            (set(handles.b51,'String','N')& set(handles.b51,'BackgroundColor','w')) 
        else (set(handles.b51,'String','N')& set(handles.b51,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b51,'String')~= 'N' | get(handles.b51,'String')~= 'D')
            (set(handles.b51,'String','C')& set(handles.b51,'BackgroundColor','c'))
        else (set(handles.b51,'String','C')& set(handles.b51,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b51,'String')~= 'N' | get(handles.b51,'String')~= 'C')
            (set(handles.b51,'String','D')& set(handles.b51,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b51,'String','D')& set(handles.b51,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b51,'String')== 'N') 
            (set(handles.b51,'String',' ')& set(handles.b51,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b51,'String',' ')& set(handles.b51,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b51,'String'))== (get(handles.b52,'String')) |  (get(handles.b51,'String'))== (get(handles.b41,'String')) | (get(handles.b51,'String'))== (get(handles.b61,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b61.
function b61_Callback(hObject, eventdata, handles)
% hObject    handle to b61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b61,'String')~= 'D' | get(handles.b61,'String')~= 'C')
            (set(handles.b61,'String','N')& set(handles.b61,'BackgroundColor','w')) 
        else (set(handles.b61,'String','N')& set(handles.b61,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b61,'String')~= 'N' | get(handles.b61,'String')~= 'D')
            (set(handles.b61,'String','C')& set(handles.b61,'BackgroundColor','c'))
        else (set(handles.b61,'String','C')& set(handles.b61,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b61,'String')~= 'N' | get(handles.b61,'String')~= 'C')
            (set(handles.b61,'String','D')& set(handles.b61,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b61,'String','D')& set(handles.b61,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b61,'String')== 'N') 
            (set(handles.b61,'String',' ')& set(handles.b61,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b61,'String',' ')& set(handles.b61,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b61,'String'))== (get(handles.b62,'String')) |  (get(handles.b61,'String'))== (get(handles.b51,'String')) | (get(handles.b61,'String'))== (get(handles.b71,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b71.
function b71_Callback(hObject, eventdata, handles)
% hObject    handle to b71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b71,'String')~= 'D' | get(handles.b71,'String')~= 'C')
            (set(handles.b71,'String','N')& set(handles.b71,'BackgroundColor','w')) 
        else (set(handles.b71,'String','N')& set(handles.b71,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b71,'String')~= 'N' | get(handles.b71,'String')~= 'D')
            (set(handles.b71,'String','C')& set(handles.b71,'BackgroundColor','c'))
        else (set(handles.b71,'String','C')& set(handles.b71,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b71,'String')~= 'N' | get(handles.b71,'String')~= 'C')
            (set(handles.b71,'String','D')& set(handles.b71,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b71,'String','D')& set(handles.b71,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b71,'String')== 'N') 
            (set(handles.b71,'String',' ')& set(handles.b71,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b71,'String',' ')& set(handles.b71,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b71,'String'))== (get(handles.b72,'String')) |  (get(handles.b71,'String'))== (get(handles.b61,'String')) | (get(handles.b71,'String'))== (get(handles.b81,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b81.
function b81_Callback(hObject, eventdata, handles)
% hObject    handle to b81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b81,'String')~= 'D' | get(handles.b81,'String')~= 'C')
            (set(handles.b81,'String','N')& set(handles.b81,'BackgroundColor','w')) 
        else (set(handles.b81,'String','N')& set(handles.b81,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b81,'String')~= 'N' | get(handles.b81,'String')~= 'D')
            (set(handles.b81,'String','C')& set(handles.b81,'BackgroundColor','c'))
        else (set(handles.b81,'String','C')& set(handles.b81,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b81,'String')~= 'N' | get(handles.b81,'String')~= 'C')
            (set(handles.b81,'String','D')& set(handles.b81,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b81,'String','D')& set(handles.b81,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b81,'String')== 'N') 
            (set(handles.b81,'String',' ')& set(handles.b81,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b81,'String',' ')& set(handles.b81,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b71,'String'))== (get(handles.b81,'String')) |  (get(handles.b81,'String'))== (get(handles.b82,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b22.
function b22_Callback(hObject, eventdata, handles)
% hObject    handle to b22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b22,'String')~= 'D' | get(handles.b22,'String')~= 'C')
            (set(handles.b22,'String','N')& set(handles.b22,'BackgroundColor','w')) 
        else (set(handles.b22,'String','N')& set(handles.b22,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b22,'String')~= 'N' | get(handles.b22,'String')~= 'D')
            (set(handles.b22,'String','C')& set(handles.b22,'BackgroundColor','c'))
        else (set(handles.b22,'String','C')& set(handles.b22,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b22,'String')~= 'N' | get(handles.b22,'String')~= 'C')
            (set(handles.b22,'String','D')& set(handles.b22,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b22,'String','D')& set(handles.b22,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b22,'String')== 'N') 
            (set(handles.b22,'String',' ')& set(handles.b22,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b22,'String',' ')& set(handles.b22,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b22,'String'))== (get(handles.b32,'String')) |  (get(handles.b22,'String'))== (get(handles.b12,'String')) | (get(handles.b21,'String'))== (get(handles.b22,'String')) | (get(handles.b23,'String'))== (get(handles.b22,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b33.
function b33_Callback(hObject, eventdata, handles)
% hObject    handle to b33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b33,'String')~= 'D' | get(handles.b33,'String')~= 'C')
            (set(handles.b33,'String','N')& set(handles.b33,'BackgroundColor','w')) 
        else (set(handles.b33,'String','N')& set(handles.b33,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b33,'String')~= 'N' | get(handles.b33,'String')~= 'D')
            (set(handles.b33,'String','C')& set(handles.b33,'BackgroundColor','c'))
        else (set(handles.b33,'String','C')& set(handles.b33,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b33,'String')~= 'N' | get(handles.b33,'String')~= 'C')
            (set(handles.b33,'String','D')& set(handles.b33,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b33,'String','D')& set(handles.b33,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b33,'String')== 'N') 
            (set(handles.b33,'String',' ')& set(handles.b33,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b33,'String',' ')& set(handles.b33,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b33,'String'))== (get(handles.b32,'String')) |  (get(handles.b33,'String'))== (get(handles.b34,'String')) | (get(handles.b33,'String'))== (get(handles.b23,'String')) | (get(handles.b33,'String'))== (get(handles.b43,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b43.
function b43_Callback(hObject, eventdata, handles)
% hObject    handle to b43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b43,'String')~= 'D' | get(handles.b43,'String')~= 'C')
            (set(handles.b43,'String','N')& set(handles.b43,'BackgroundColor','w')) 
        else (set(handles.b43,'String','N')& set(handles.b43,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b43,'String')~= 'N' | get(handles.b43,'String')~= 'D')
            (set(handles.b43,'String','C')& set(handles.b43,'BackgroundColor','c'))
        else (set(handles.b43,'String','C')& set(handles.b43,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b43,'String')~= 'N' | get(handles.b43,'String')~= 'C')
            (set(handles.b43,'String','D')& set(handles.b43,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b43,'String','D')& set(handles.b43,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b43,'String')== 'N') 
            (set(handles.b43,'String',' ')& set(handles.b43,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b43,'String',' ')& set(handles.b43,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b43,'String'))== (get(handles.b44,'String')) |  (get(handles.b42,'String'))== (get(handles.b43,'String')) | (get(handles.b43,'String'))== (get(handles.b33,'String')) | (get(handles.b43,'String'))== (get(handles.b53,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b53.
function b53_Callback(hObject, eventdata, handles)
% hObject    handle to b53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b53,'String')~= 'D' | get(handles.b53,'String')~= 'C')
            (set(handles.b53,'String','N')& set(handles.b53,'BackgroundColor','w')) 
        else (set(handles.b53,'String','N')& set(handles.b53,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b53,'String')~= 'N' | get(handles.b53,'String')~= 'D')
            (set(handles.b53,'String','C')& set(handles.b53,'BackgroundColor','c'))
        else (set(handles.b53,'String','C')& set(handles.b53,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b53,'String')~= 'N' | get(handles.b53,'String')~= 'C')
            (set(handles.b53,'String','D')& set(handles.b53,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b53,'String','D')& set(handles.b53,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b53,'String')== 'N') 
            (set(handles.b53,'String',' ')& set(handles.b53,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b53,'String',' ')& set(handles.b53,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b53,'String'))== (get(handles.b52,'String')) |  (get(handles.b53,'String'))== (get(handles.b54,'String')) | (get(handles.b53,'String'))== (get(handles.b43,'String')) | (get(handles.b53,'String'))== (get(handles.b63,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b63.
function b63_Callback(hObject, eventdata, handles)
% hObject    handle to b63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b63,'String')~= 'D' | get(handles.b63,'String')~= 'C')
            (set(handles.b63,'String','N')& set(handles.b63,'BackgroundColor','w')) 
        else (set(handles.b63,'String','N')& set(handles.b63,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b63,'String')~= 'N' | get(handles.b63,'String')~= 'D')
            (set(handles.b63,'String','C')& set(handles.b63,'BackgroundColor','c'))
        else (set(handles.b63,'String','C')& set(handles.b63,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b63,'String')~= 'N' | get(handles.b63,'String')~= 'C')
            (set(handles.b63,'String','D')& set(handles.b63,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b63,'String','D')& set(handles.b63,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b63,'String')== 'N') 
            (set(handles.b63,'String',' ')& set(handles.b63,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b63,'String',' ')& set(handles.b63,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b62,'String'))== (get(handles.b63,'String')) |  (get(handles.b63,'String'))== (get(handles.b64,'String')) | (get(handles.b63,'String'))== (get(handles.b53,'String')) | (get(handles.b73,'String'))== (get(handles.b63,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b73.
function b73_Callback(hObject, eventdata, handles)
% hObject    handle to b73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b73,'String')~= 'D' | get(handles.b73,'String')~= 'C')
            (set(handles.b73,'String','N')& set(handles.b73,'BackgroundColor','w')) 
        else (set(handles.b73,'String','N')& set(handles.b73,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b73,'String')~= 'N' | get(handles.b73,'String')~= 'D')
            (set(handles.b73,'String','C')& set(handles.b73,'BackgroundColor','c'))
        else (set(handles.b73,'String','C')& set(handles.b73,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b73,'String')~= 'N' | get(handles.b73,'String')~= 'C')
            (set(handles.b73,'String','D')& set(handles.b73,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b73,'String','D')& set(handles.b73,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b73,'String')== 'N') 
            (set(handles.b73,'String',' ')& set(handles.b73,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b73,'String',' ')& set(handles.b73,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b73,'String'))== (get(handles.b74,'String')) |  (get(handles.b72,'String'))== (get(handles.b73,'String')) | (get(handles.b73,'String'))== (get(handles.b83,'String')) | (get(handles.b73,'String'))== (get(handles.b63,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b83.
function b83_Callback(hObject, eventdata, handles)
% hObject    handle to b83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b83,'String')~= 'D' | get(handles.b83,'String')~= 'C')
            (set(handles.b83,'String','N')& set(handles.b83,'BackgroundColor','w')) 
        else (set(handles.b83,'String','N')& set(handles.b83,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b83,'String')~= 'N' | get(handles.b83,'String')~= 'D')
            (set(handles.b83,'String','C')& set(handles.b83,'BackgroundColor','c'))
        else (set(handles.b83,'String','C')& set(handles.b83,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b83,'String')~= 'N' | get(handles.b83,'String')~= 'C')
            (set(handles.b83,'String','D')& set(handles.b83,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b83,'String','D')& set(handles.b83,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b83,'String')== 'N') 
            (set(handles.b83,'String',' ')& set(handles.b83,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b83,'String',' ')& set(handles.b83,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b83,'String'))== (get(handles.b84,'String')) |  (get(handles.b83,'String'))== (get(handles.b82,'String')) | (get(handles.b83,'String'))== (get(handles.b73,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b23.
function b23_Callback(hObject, eventdata, handles)
% hObject    handle to b23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b23,'String')~= 'D' | get(handles.b23,'String')~= 'C')
            (set(handles.b23,'String','N')& set(handles.b23,'BackgroundColor','w')) 
        else (set(handles.b23,'String','N')& set(handles.b23,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b23,'String')~= 'N' | get(handles.b23,'String')~= 'D')
            (set(handles.b23,'String','C')& set(handles.b23,'BackgroundColor','c'))
        else (set(handles.b23,'String','C')& set(handles.b23,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b23,'String')~= 'N' | get(handles.b23,'String')~= 'C')
            (set(handles.b23,'String','D')& set(handles.b23,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b23,'String','D')& set(handles.b23,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b23,'String')== 'N') 
            (set(handles.b23,'String',' ')& set(handles.b23,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b23,'String',' ')& set(handles.b23,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b22,'String'))== (get(handles.b23,'String')) |  (get(handles.b23,'String'))== (get(handles.b24,'String')) | (get(handles.b23,'String'))== (get(handles.b13,'String')) | (get(handles.b23,'String'))== (get(handles.b33,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b34.
function b34_Callback(hObject, eventdata, handles)
% hObject    handle to b34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b34,'String')~= 'D' | get(handles.b34,'String')~= 'C')
            (set(handles.b34,'String','N')& set(handles.b34,'BackgroundColor','w')) 
        else (set(handles.b34,'String','N')& set(handles.b34,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b34,'String')~= 'N' | get(handles.b34,'String')~= 'D')
            (set(handles.b34,'String','C')& set(handles.b34,'BackgroundColor','c'))
        else (set(handles.b34,'String','C')& set(handles.b34,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b34,'String')~= 'N' | get(handles.b34,'String')~= 'C')
            (set(handles.b34,'String','D')& set(handles.b34,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b34,'String','D')& set(handles.b34,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b34,'String')== 'N') 
            (set(handles.b34,'String',' ')& set(handles.b34,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b34,'String',' ')& set(handles.b34,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b34,'String'))== (get(handles.b35,'String')) |  (get(handles.b34,'String'))== (get(handles.b33,'String')) | (get(handles.b34,'String'))== (get(handles.b44,'String')) | (get(handles.b34,'String'))== (get(handles.b24,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b44.
function b44_Callback(hObject, eventdata, handles)
% hObject    handle to b44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b44,'String')~= 'D' | get(handles.b44,'String')~= 'C')
            (set(handles.b44,'String','N')& set(handles.b44,'BackgroundColor','w')) 
        else (set(handles.b44,'String','N')& set(handles.b44,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b44,'String')~= 'N' | get(handles.b44,'String')~= 'D')
            (set(handles.b44,'String','C')& set(handles.b44,'BackgroundColor','c'))
        else (set(handles.b44,'String','C')& set(handles.b44,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b44,'String')~= 'N' | get(handles.b44,'String')~= 'C')
            (set(handles.b44,'String','D')& set(handles.b44,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b44,'String','D')& set(handles.b44,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b44,'String')== 'N') 
            (set(handles.b44,'String',' ')& set(handles.b44,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b44,'String',' ')& set(handles.b44,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b44,'String'))== (get(handles.b43,'String')) |  (get(handles.b44,'String'))== (get(handles.b45,'String')) | (get(handles.b44,'String'))== (get(handles.b54,'String')) | (get(handles.b44,'String'))== (get(handles.b34,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b54.
function b54_Callback(hObject, eventdata, handles)
% hObject    handle to b54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b54,'String')~= 'D' | get(handles.b54,'String')~= 'C')
            (set(handles.b54,'String','N')& set(handles.b54,'BackgroundColor','w')) 
        else (set(handles.b54,'String','N')& set(handles.b54,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b54,'String')~= 'N' | get(handles.b54,'String')~= 'D')
            (set(handles.b54,'String','C')& set(handles.b54,'BackgroundColor','c'))
        else (set(handles.b54,'String','C')& set(handles.b54,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b54,'String')~= 'N' | get(handles.b54,'String')~= 'C')
            (set(handles.b54,'String','D')& set(handles.b54,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b54,'String','D')& set(handles.b54,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b54,'String')== 'N') 
            (set(handles.b54,'String',' ')& set(handles.b54,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b54,'String',' ')& set(handles.b54,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b54,'String'))== (get(handles.b55,'String')) |  (get(handles.b54,'String'))== (get(handles.b53,'String')) | (get(handles.b54,'String'))== (get(handles.b44,'String')) | (get(handles.b54,'String'))== (get(handles.b64,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b64.
function b64_Callback(hObject, eventdata, handles)
% hObject    handle to b64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b64,'String')~= 'D' | get(handles.b64,'String')~= 'C')
            (set(handles.b64,'String','N')& set(handles.b64,'BackgroundColor','w')) 
        else (set(handles.b64,'String','N')& set(handles.b64,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b64,'String')~= 'N' | get(handles.b64,'String')~= 'D')
            (set(handles.b64,'String','C')& set(handles.b64,'BackgroundColor','c'))
        else (set(handles.b64,'String','C')& set(handles.b64,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b64,'String')~= 'N' | get(handles.b64,'String')~= 'C')
            (set(handles.b64,'String','D')& set(handles.b64,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b64,'String','D')& set(handles.b64,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b64,'String')== 'N') 
            (set(handles.b64,'String',' ')& set(handles.b64,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b64,'String',' ')& set(handles.b64,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b64,'String'))== (get(handles.b65,'String')) |  (get(handles.b64,'String'))== (get(handles.b63,'String')) | (get(handles.b64,'String'))== (get(handles.b54,'String')) | (get(handles.b64,'String'))== (get(handles.b74,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b74.
function b74_Callback(hObject, eventdata, handles)
% hObject    handle to b74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b74,'String')~= 'D' | get(handles.b74,'String')~= 'C')
            (set(handles.b74,'String','N')& set(handles.b74,'BackgroundColor','w')) 
        else (set(handles.b74,'String','N')& set(handles.b74,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b74,'String')~= 'N' | get(handles.b74,'String')~= 'D')
            (set(handles.b74,'String','C')& set(handles.b74,'BackgroundColor','c'))
        else (set(handles.b74,'String','C')& set(handles.b74,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b74,'String')~= 'N' | get(handles.b74,'String')~= 'C')
            (set(handles.b74,'String','D')& set(handles.b74,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b74,'String','D')& set(handles.b74,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b74,'String')== 'N') 
            (set(handles.b74,'String',' ')& set(handles.b74,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b74,'String',' ')& set(handles.b74,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b74,'String'))== (get(handles.b75,'String')) |  (get(handles.b74,'String'))== (get(handles.b73,'String')) | (get(handles.b74,'String'))== (get(handles.b64,'String')) | (get(handles.b74,'String'))== (get(handles.b84,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b84.
function b84_Callback(hObject, eventdata, handles)
% hObject    handle to b84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b84,'String')~= 'D' | get(handles.b84,'String')~= 'C')
            (set(handles.b84,'String','N')& set(handles.b84,'BackgroundColor','w')) 
        else (set(handles.b84,'String','N')& set(handles.b84,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b84,'String')~= 'N' | get(handles.b84,'String')~= 'D')
            (set(handles.b84,'String','C')& set(handles.b84,'BackgroundColor','c'))
        else (set(handles.b84,'String','C')& set(handles.b84,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b84,'String')~= 'N' | get(handles.b84,'String')~= 'C')
            (set(handles.b84,'String','D')& set(handles.b84,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b84,'String','D')& set(handles.b84,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b84,'String')== 'N') 
            (set(handles.b84,'String',' ')& set(handles.b84,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b84,'String',' ')& set(handles.b84,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if((get(handles.b84,'String'))== (get(handles.b85,'String')) |  (get(handles.b84,'String'))== (get(handles.b83,'String')) | (get(handles.b84,'String'))== (get(handles.b74,'String')) ) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b24.
function b24_Callback(hObject, eventdata, handles)
% hObject    handle to b24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b24,'String')~= 'D' | get(handles.b24,'String')~= 'C')
            (set(handles.b24,'String','N')& set(handles.b24,'BackgroundColor','w')) 
        else (set(handles.b24,'String','N')& set(handles.b24,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b24,'String')~= 'N' | get(handles.b24,'String')~= 'D')
            (set(handles.b24,'String','C')& set(handles.b24,'BackgroundColor','c'))
        else (set(handles.b24,'String','C')& set(handles.b24,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b24,'String')~= 'N' | get(handles.b24,'String')~= 'C')
            (set(handles.b24,'String','D')& set(handles.b24,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b24,'String','D')& set(handles.b24,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b24,'String')== 'N') 
            (set(handles.b24,'String',' ')& set(handles.b24,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b24,'String',' ')& set(handles.b24,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b24,'String'))== (get(handles.b25,'String')) |  (get(handles.b23,'String'))== (get(handles.b24,'String')) | (get(handles.b24,'String'))== (get(handles.b14,'String')) | (get(handles.b24,'String'))== (get(handles.b34,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b35.
function b35_Callback(hObject, eventdata, handles)
% hObject    handle to b35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b35,'String')~= 'D' | get(handles.b35,'String')~= 'C')
            (set(handles.b35,'String','N')& set(handles.b35,'BackgroundColor','w')) 
        else (set(handles.b35,'String','N')& set(handles.b35,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b35,'String')~= 'N' | get(handles.b35,'String')~= 'D')
            (set(handles.b35,'String','C')& set(handles.b35,'BackgroundColor','c'))
        else (set(handles.b35,'String','C')& set(handles.b35,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b35,'String')~= 'N' | get(handles.b35,'String')~= 'C')
            (set(handles.b35,'String','D')& set(handles.b35,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b35,'String','D')& set(handles.b35,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b35,'String')== 'N') 
            (set(handles.b35,'String',' ')& set(handles.b35,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b35,'String',' ')& set(handles.b35,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b35,'String'))== (get(handles.b34,'String')) |  (get(handles.b35,'String'))== (get(handles.b36,'String')) | (get(handles.b35,'String'))== (get(handles.b45,'String')) | (get(handles.b35,'String'))== (get(handles.b25,'String')) 
        h = msgbox('Wrong Move!','Error');
    end

% --- Executes on button press in b45.
function b45_Callback(hObject, eventdata, handles)
% hObject    handle to b45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b45,'String')~= 'D' | get(handles.b45,'String')~= 'C')
            (set(handles.b45,'String','N')& set(handles.b45,'BackgroundColor','w')) 
        else (set(handles.b45,'String','N')& set(handles.b45,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b45,'String')~= 'N' | get(handles.b45,'String')~= 'D')
            (set(handles.b45,'String','C')& set(handles.b45,'BackgroundColor','c'))
        else (set(handles.b45,'String','C')& set(handles.b45,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b45,'String')~= 'N' | get(handles.b45,'String')~= 'C')
            (set(handles.b45,'String','D')& set(handles.b45,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b45,'String','D')& set(handles.b45,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b45,'String')== 'N') 
            (set(handles.b45,'String',' ')& set(handles.b45,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b45,'String',' ')& set(handles.b45,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b45,'String'))== (get(handles.b46,'String')) |  (get(handles.b45,'String'))== (get(handles.b44,'String')) | (get(handles.b35,'String'))== (get(handles.b45,'String')) | (get(handles.b45,'String'))== (get(handles.b55,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b55.
function b55_Callback(hObject, eventdata, handles)
% hObject    handle to b55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b55,'String')~= 'D' | get(handles.b55,'String')~= 'C')
            (set(handles.b55,'String','N')& set(handles.b55,'BackgroundColor','w')) 
        else (set(handles.b55,'String','N')& set(handles.b55,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b55,'String')~= 'N' | get(handles.b55,'String')~= 'D')
            (set(handles.b55,'String','C')& set(handles.b55,'BackgroundColor','c'))
        else (set(handles.b55,'String','C')& set(handles.b55,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b55,'String')~= 'N' | get(handles.b55,'String')~= 'C')
            (set(handles.b55,'String','D')& set(handles.b55,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b55,'String','D')& set(handles.b55,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b55,'String')== 'N') 
            (set(handles.b55,'String',' ')& set(handles.b55,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b55,'String',' ')& set(handles.b55,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b55,'String'))== (get(handles.b54,'String')) |  (get(handles.b55,'String'))== (get(handles.b56,'String')) | (get(handles.b55,'String'))== (get(handles.b45,'String')) | (get(handles.b55,'String'))== (get(handles.b65,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b65.
function b65_Callback(hObject, eventdata, handles)
% hObject    handle to b65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b65,'String')~= 'D' | get(handles.b65,'String')~= 'C')
            (set(handles.b65,'String','N')& set(handles.b65,'BackgroundColor','w')) 
        else (set(handles.b65,'String','N')& set(handles.b65,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b65,'String')~= 'N' | get(handles.b55,'String')~= 'D')
            (set(handles.b65,'String','C')& set(handles.b65,'BackgroundColor','c'))
        else (set(handles.b65,'String','C')& set(handles.b65,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b65,'String')~= 'N' | get(handles.b65,'String')~= 'C')
            (set(handles.b65,'String','D')& set(handles.b65,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b65,'String','D')& set(handles.b65,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b65,'String')== 'N') 
            (set(handles.b65,'String',' ')& set(handles.b65,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b65,'String',' ')& set(handles.b65,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b65,'String'))== (get(handles.b64,'String')) |  (get(handles.b65,'String'))== (get(handles.b66,'String')) | (get(handles.b65,'String'))== (get(handles.b55,'String')) | (get(handles.b65,'String'))== (get(handles.b75,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b75.
function b75_Callback(hObject, eventdata, handles)
% hObject    handle to b75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b75,'String')~= 'D' | get(handles.b75,'String')~= 'C')
            (set(handles.b75,'String','N')& set(handles.b75,'BackgroundColor','w')) 
        else (set(handles.b75,'String','N')& set(handles.b75,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b75,'String')~= 'N' | get(handles.b75,'String')~= 'D')
            (set(handles.b75,'String','C')& set(handles.b75,'BackgroundColor','c'))
        else (set(handles.b75,'String','C')& set(handles.b75,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b75,'String')~= 'N' | get(handles.b75,'String')~= 'C')
            (set(handles.b75,'String','D')& set(handles.b75,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b75,'String','D')& set(handles.b75,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b75,'String')== 'N') 
            (set(handles.b75,'String',' ')& set(handles.b75,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b75,'String',' ')& set(handles.b75,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b75,'String'))== (get(handles.b76,'String')) |  (get(handles.b75,'String'))== (get(handles.b74,'String')) | (get(handles.b75,'String'))== (get(handles.b85,'String')) | (get(handles.b75,'String'))== (get(handles.b65,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b85.
function b85_Callback(hObject, eventdata, handles)
% hObject    handle to b85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b85,'String')~= 'D' | get(handles.b85,'String')~= 'C')
            (set(handles.b85,'String','N')& set(handles.b85,'BackgroundColor','w')) 
        else (set(handles.b85,'String','N')& set(handles.b85,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b85,'String')~= 'N' | get(handles.b85,'String')~= 'D')
            (set(handles.b85,'String','C')& set(handles.b85,'BackgroundColor','c'))
        else (set(handles.b85,'String','C')& set(handles.b85,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b85,'String')~= 'N' | get(handles.b85,'String')~= 'C')
            (set(handles.b85,'String','D')& set(handles.b85,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b85,'String','D')& set(handles.b85,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b85,'String')== 'N') 
            (set(handles.b85,'String',' ')& set(handles.b85,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b85,'String',' ')& set(handles.b85,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b85,'String'))== (get(handles.b84,'String')) |  (get(handles.b85,'String'))== (get(handles.b86,'String')) | (get(handles.b85,'String'))== (get(handles.b75,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b25.
function b25_Callback(hObject, eventdata, handles)
% hObject    handle to b25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b25,'String')~= 'D' | get(handles.b25,'String')~= 'C')
            (set(handles.b25,'String','N')& set(handles.b25,'BackgroundColor','w')) 
        else (set(handles.b25,'String','N')& set(handles.b25,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b25,'String')~= 'N' | get(handles.b25,'String')~= 'D')
            (set(handles.b25,'String','C')& set(handles.b25,'BackgroundColor','c'))
        else (set(handles.b25,'String','C')& set(handles.b25,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b25,'String')~= 'N' | get(handles.b25,'String')~= 'C')
            (set(handles.b25,'String','D')& set(handles.b25,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b25,'String','D')& set(handles.b25,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b25,'String')== 'N') 
            (set(handles.b25,'String',' ')& set(handles.b25,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b25,'String',' ')& set(handles.b25,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b25,'String'))== (get(handles.b24,'String')) |  (get(handles.b25,'String'))== (get(handles.b26,'String')) | (get(handles.b25,'String'))== (get(handles.b35,'String')) | (get(handles.b25,'String'))== (get(handles.b15,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b36.
function b36_Callback(hObject, eventdata, handles)
% hObject    handle to b36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b36,'String')~= 'D' | get(handles.b36,'String')~= 'C')
            (set(handles.b36,'String','N')& set(handles.b36,'BackgroundColor','w')) 
        else (set(handles.b36,'String','N')& set(handles.b36,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b36,'String')~= 'N' | get(handles.b36,'String')~= 'D')
            (set(handles.b36,'String','C')& set(handles.b36,'BackgroundColor','c'))
        else (set(handles.b36,'String','C')& set(handles.b36,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b36,'String')~= 'N' | get(handles.b36,'String')~= 'C')
            (set(handles.b36,'String','D')& set(handles.b36,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b36,'String','D')& set(handles.b36,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b36,'String')== 'N') 
            (set(handles.b36,'String',' ')& set(handles.b36,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b36,'String',' ')& set(handles.b36,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b35,'String'))== (get(handles.b36,'String')) |  (get(handles.b36,'String'))== (get(handles.b37,'String')) | (get(handles.b36,'String'))== (get(handles.b46,'String')) | (get(handles.b36,'String'))== (get(handles.b26,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b46.
function b46_Callback(hObject, eventdata, handles)
% hObject    handle to b46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b46,'String')~= 'D' | get(handles.b46,'String')~= 'C')
            (set(handles.b46,'String','N')& set(handles.b46,'BackgroundColor','w')) 
        else (set(handles.b46,'String','N')& set(handles.b46,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b46,'String')~= 'N' | get(handles.b46,'String')~= 'D')
            (set(handles.b46,'String','C')& set(handles.b46,'BackgroundColor','c'))
        else (set(handles.b46,'String','C')& set(handles.b46,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b46,'String')~= 'N' | get(handles.b46,'String')~= 'C')
            (set(handles.b46,'String','D')& set(handles.b46,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b46,'String','D')& set(handles.b46,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b46,'String')== 'N') 
            (set(handles.b46,'String',' ')& set(handles.b46,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b46,'String',' ')& set(handles.b46,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b46,'String'))== (get(handles.b47,'String')) |  (get(handles.b45,'String'))== (get(handles.b46,'String')) | (get(handles.b46,'String'))== (get(handles.b56,'String')) | (get(handles.b46,'String'))== (get(handles.b36,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b56.
function b56_Callback(hObject, eventdata, handles)
% hObject    handle to b56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b56,'String')~= 'D' | get(handles.b56,'String')~= 'C')
            (set(handles.b56,'String','N')& set(handles.b56,'BackgroundColor','w')) 
        else (set(handles.b56,'String','N')& set(handles.b56,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b56,'String')~= 'N' | get(handles.b56,'String')~= 'D')
            (set(handles.b56,'String','C')& set(handles.b56,'BackgroundColor','c'))
        else (set(handles.b56,'String','C')& set(handles.b56,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b56,'String')~= 'N' | get(handles.b56,'String')~= 'C')
            (set(handles.b56,'String','D')& set(handles.b56,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b56,'String','D')& set(handles.b56,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b56,'String')== 'N') 
            (set(handles.b56,'String',' ')& set(handles.b56,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b56,'String',' ')& set(handles.b56,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b56,'String'))== (get(handles.b57,'String')) |  (get(handles.b56,'String'))== (get(handles.b55,'String')) | (get(handles.b56,'String'))== (get(handles.b46,'String')) | (get(handles.b56,'String'))== (get(handles.b66,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b66.
function b66_Callback(hObject, eventdata, handles)
% hObject    handle to b66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b66,'String')~= 'D' | get(handles.b66,'String')~= 'C')
            (set(handles.b66,'String','N')& set(handles.b66,'BackgroundColor','w')) 
        else (set(handles.b66,'String','N')& set(handles.b66,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b66,'String')~= 'N' | get(handles.b66,'String')~= 'D')
            (set(handles.b66,'String','C')& set(handles.b66,'BackgroundColor','c'))
        else (set(handles.b66,'String','C')& set(handles.b66,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b66,'String')~= 'N' | get(handles.b66,'String')~= 'C')
            (set(handles.b66,'String','D')& set(handles.b66,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b66,'String','D')& set(handles.b66,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b66,'String')== 'N') 
            (set(handles.b66,'String',' ')& set(handles.b66,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b66,'String',' ')& set(handles.b66,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b66,'String'))== (get(handles.b67,'String')) |  (get(handles.b66,'String'))== (get(handles.b65,'String')) | (get(handles.b66,'String'))== (get(handles.b56,'String')) | (get(handles.b66,'String'))== (get(handles.b76,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b76.
function b76_Callback(hObject, eventdata, handles)
% hObject    handle to b76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b76,'String')~= 'D' | get(handles.b76,'String')~= 'C')
            (set(handles.b76,'String','N')& set(handles.b76,'BackgroundColor','w')) 
        else (set(handles.b76,'String','N')& set(handles.b76,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b76,'String')~= 'N' | get(handles.b76,'String')~= 'D')
            (set(handles.b76,'String','C')& set(handles.b76,'BackgroundColor','c'))
        else (set(handles.b76,'String','C')& set(handles.b76,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b76,'String')~= 'N' | get(handles.b76,'String')~= 'C')
            (set(handles.b76,'String','D')& set(handles.b76,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b76,'String','D')& set(handles.b76,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b76,'String')== 'N') 
            (set(handles.b76,'String',' ')& set(handles.b76,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b76,'String',' ')& set(handles.b76,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b76,'String'))== (get(handles.b77,'String')) |  (get(handles.b76,'String'))== (get(handles.b75,'String')) | (get(handles.b76,'String'))== (get(handles.b66,'String')) | (get(handles.b76,'String'))== (get(handles.b86,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b86.
function b86_Callback(hObject, eventdata, handles)
% hObject    handle to b86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b86,'String')~= 'D' | get(handles.b86,'String')~= 'C')
            (set(handles.b86,'String','N')& set(handles.b86,'BackgroundColor','w')) 
        else (set(handles.b86,'String','N')& set(handles.b86,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b86,'String')~= 'N' | get(handles.b86,'String')~= 'D')
            (set(handles.b86,'String','C')& set(handles.b86,'BackgroundColor','c'))
        else (set(handles.b86,'String','C')& set(handles.b86,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b86,'String')~= 'N' | get(handles.b86,'String')~= 'C')
            (set(handles.b86,'String','D')& set(handles.b86,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b86,'String','D')& set(handles.b86,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b86,'String')== 'N') 
            (set(handles.b86,'String',' ')& set(handles.b86,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b86,'String',' ')& set(handles.b86,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b86,'String'))== (get(handles.b87,'String')) |  (get(handles.b86,'String'))== (get(handles.b85,'String')) | (get(handles.b86,'String'))== (get(handles.b76,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b26.
function b26_Callback(hObject, eventdata, handles)
% hObject    handle to b26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b26,'String')~= 'D' | get(handles.b26,'String')~= 'C')
            (set(handles.b26,'String','N')& set(handles.b26,'BackgroundColor','w')) 
        else (set(handles.b26,'String','N')& set(handles.b26,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b26,'String')~= 'N' | get(handles.b26,'String')~= 'D')
            (set(handles.b26,'String','C')& set(handles.b26,'BackgroundColor','c'))
        else (set(handles.b26,'String','C')& set(handles.b26,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b26,'String')~= 'N' | get(handles.b26,'String')~= 'C')
            (set(handles.b26,'String','D')& set(handles.b26,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b26,'String','D')& set(handles.b26,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b26,'String')== 'N') 
            (set(handles.b26,'String',' ')& set(handles.b26,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b26,'String',' ')& set(handles.b26,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b26,'String'))== (get(handles.b27,'String')) |  (get(handles.b25,'String'))== (get(handles.b26,'String')) | (get(handles.b26,'String'))== (get(handles.b16,'String')) | (get(handles.b36,'String'))== (get(handles.b26,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b37.
function b37_Callback(hObject, eventdata, handles)
% hObject    handle to b37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b37,'String')~= 'D' | get(handles.b37,'String')~= 'C')
            (set(handles.b37,'String','N')& set(handles.b37,'BackgroundColor','w')) 
        else (set(handles.b37,'String','N')& set(handles.b37,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b37,'String')~= 'N' | get(handles.b37,'String')~= 'D')
            (set(handles.b37,'String','C')& set(handles.b37,'BackgroundColor','c'))
        else (set(handles.b37,'String','C')& set(handles.b37,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b37,'String')~= 'N' | get(handles.b37,'String')~= 'C')
            (set(handles.b37,'String','D')& set(handles.b37,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b37,'String','D')& set(handles.b37,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b37,'String')== 'N') 
            (set(handles.b37,'String',' ')& set(handles.b37,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b37,'String',' ')& set(handles.b37,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b37,'String'))== (get(handles.b38,'String')) |  (get(handles.b37,'String'))== (get(handles.b36,'String')) | (get(handles.b37,'String'))== (get(handles.b47,'String')) | (get(handles.b37,'String'))== (get(handles.b27,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b47.
function b47_Callback(hObject, eventdata, handles)
% hObject    handle to b47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b47,'String')~= 'D' | get(handles.b47,'String')~= 'C')
            (set(handles.b47,'String','N')& set(handles.b47,'BackgroundColor','w')) 
        else (set(handles.b47,'String','N')& set(handles.b47,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b47,'String')~= 'N' | get(handles.b47,'String')~= 'D')
            (set(handles.b47,'String','C')& set(handles.b47,'BackgroundColor','c'))
        else (set(handles.b47,'String','C')& set(handles.b47,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b47,'String')~= 'N' | get(handles.b47,'String')~= 'C')
            (set(handles.b47,'String','D')& set(handles.b47,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b47,'String','D')& set(handles.b47,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b47,'String')== 'N') 
            (set(handles.b47,'String',' ')& set(handles.b47,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b47,'String',' ')& set(handles.b47,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b47,'String'))== (get(handles.b48,'String')) |  (get(handles.b47,'String'))== (get(handles.b46,'String')) | (get(handles.b57,'String'))== (get(handles.b47,'String')) | (get(handles.b47,'String'))== (get(handles.b37,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b57.
function b57_Callback(hObject, eventdata, handles)
% hObject    handle to b57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b57,'String')~= 'D' | get(handles.b57,'String')~= 'C')
            (set(handles.b57,'String','N')& set(handles.b57,'BackgroundColor','w')) 
        else (set(handles.b57,'String','N')& set(handles.b57,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b57,'String')~= 'N' | get(handles.b57,'String')~= 'D')
            (set(handles.b57,'String','C')& set(handles.b57,'BackgroundColor','c'))
        else (set(handles.b57,'String','C')& set(handles.b57,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b57,'String')~= 'N' | get(handles.b57,'String')~= 'C')
            (set(handles.b57,'String','D')& set(handles.b57,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b57,'String','D')& set(handles.b57,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b57,'String')== 'N') 
            (set(handles.b57,'String',' ')& set(handles.b57,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b57,'String',' ')& set(handles.b57,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b57,'String'))== (get(handles.b58,'String')) |  (get(handles.b57,'String'))== (get(handles.b56,'String')) | (get(handles.b57,'String'))== (get(handles.b47,'String')) | (get(handles.b57,'String'))== (get(handles.b67,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b67.
function b67_Callback(hObject, eventdata, handles)
% hObject    handle to b67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b67,'String')~= 'D' | get(handles.b67,'String')~= 'C')
            (set(handles.b67,'String','N')& set(handles.b67,'BackgroundColor','w')) 
        else (set(handles.b67,'String','N')& set(handles.b67,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b37,'String')~= 'N' | get(handles.b37,'String')~= 'D')
            (set(handles.b67,'String','C')& set(handles.b67,'BackgroundColor','c'))
        else (set(handles.b67,'String','C')& set(handles.b67,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b67,'String')~= 'N' | get(handles.b67,'String')~= 'C')
            (set(handles.b67,'String','D')& set(handles.b67,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b67,'String','D')& set(handles.b67,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b67,'String')== 'N') 
            (set(handles.b67,'String',' ')& set(handles.b67,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b67,'String',' ')& set(handles.b67,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b67,'String'))== (get(handles.b68,'String')) |  (get(handles.b67,'String'))== (get(handles.b66,'String')) | (get(handles.b67,'String'))== (get(handles.b57,'String')) | (get(handles.b67,'String'))== (get(handles.b77,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b77.
function b77_Callback(hObject, eventdata, handles)
% hObject    handle to b77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b77,'String')~= 'D' | get(handles.b77,'String')~= 'C')
            (set(handles.b77,'String','N')& set(handles.b77,'BackgroundColor','w')) 
        else (set(handles.b77,'String','N')& set(handles.b77,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b77,'String')~= 'N' | get(handles.b77,'String')~= 'D')
            (set(handles.b77,'String','C')& set(handles.b77,'BackgroundColor','c'))
        else (set(handles.b77,'String','C')& set(handles.b77,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b77,'String')~= 'N' | get(handles.b77,'String')~= 'C')
            (set(handles.b77,'String','D')& set(handles.b77,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b77,'String','D')& set(handles.b77,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b77,'String')== 'N') 
            (set(handles.b77,'String',' ')& set(handles.b77,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b77,'String',' ')& set(handles.b77,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b77,'String'))== (get(handles.b78,'String')) |  (get(handles.b77,'String'))== (get(handles.b76,'String')) | (get(handles.b77,'String'))== (get(handles.b87,'String')) | (get(handles.b77,'String'))== (get(handles.b67,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b87.
function b87_Callback(hObject, eventdata, handles)
% hObject    handle to b87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b87,'String')~= 'D' | get(handles.b87,'String')~= 'C')
            (set(handles.b87,'String','N')& set(handles.b87,'BackgroundColor','w')) 
        else (set(handles.b87,'String','N')& set(handles.b87,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b87,'String')~= 'N' | get(handles.b87,'String')~= 'D')
            (set(handles.b87,'String','C')& set(handles.b87,'BackgroundColor','c'))
        else (set(handles.b87,'String','C')& set(handles.b87,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b87,'String')~= 'N' | get(handles.b87,'String')~= 'C')
            (set(handles.b87,'String','D')& set(handles.b87,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b87,'String','D')& set(handles.b87,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b87,'String')== 'N') 
            (set(handles.b87,'String',' ')& set(handles.b87,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b87,'String',' ')& set(handles.b87,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b87,'String'))== (get(handles.b88,'String')) |  (get(handles.b87,'String'))== (get(handles.b86,'String')) | (get(handles.b87,'String'))== (get(handles.b77,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b27.
function b27_Callback(hObject, eventdata, handles)
% hObject    handle to b27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b27,'String')~= 'D' | get(handles.b27,'String')~= 'C')
            (set(handles.b27,'String','N')& set(handles.b27,'BackgroundColor','w')) 
        else (set(handles.b27,'String','N')& set(handles.b27,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b27,'String')~= 'N' | get(handles.b27,'String')~= 'D')
            (set(handles.b27,'String','C')& set(handles.b27,'BackgroundColor','c'))
        else (set(handles.b27,'String','C')& set(handles.b27,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b27,'String')~= 'N' | get(handles.b27,'String')~= 'C')
            (set(handles.b27,'String','D')& set(handles.b27,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b27,'String','D')& set(handles.b27,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b27,'String')== 'N') 
            (set(handles.b27,'String',' ')& set(handles.b27,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b27,'String',' ')& set(handles.b27,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b27,'String'))== (get(handles.b28,'String')) |  (get(handles.b27,'String'))== (get(handles.b26,'String')) | (get(handles.b27,'String'))== (get(handles.b37,'String')) | (get(handles.b27,'String'))== (get(handles.b17,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b38.
function b38_Callback(hObject, eventdata, handles)
% hObject    handle to b38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b38,'String')~= 'D' | get(handles.b38,'String')~= 'C')
            (set(handles.b38,'String','N')& set(handles.b38,'BackgroundColor','w')) 
        else (set(handles.b38,'String','N')& set(handles.b38,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b38,'String')~= 'N' | get(handles.b38,'String')~= 'D')
            (set(handles.b38,'String','C')& set(handles.b38,'BackgroundColor','c'))
        else (set(handles.b38,'String','C')& set(handles.b38,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b38,'String')~= 'N' | get(handles.b38,'String')~= 'C')
            (set(handles.b38,'String','D')& set(handles.b38,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b38,'String','D')& set(handles.b38,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b38,'String')== 'N') 
            (set(handles.b38,'String',' ')& set(handles.b38,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b38,'String',' ')& set(handles.b38,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b38,'String'))== (get(handles.b37,'String')) |  (get(handles.b38,'String'))== (get(handles.b28,'String')) | (get(handles.b38,'String'))== (get(handles.b48,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b48.
function b48_Callback(hObject, eventdata, handles)
% hObject    handle to b48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b48,'String')~= 'D' | get(handles.b48,'String')~= 'C')
            (set(handles.b48,'String','N')& set(handles.b48,'BackgroundColor','w')) 
        else (set(handles.b48,'String','N')& set(handles.b48,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b48,'String')~= 'N' | get(handles.b48,'String')~= 'D')
            (set(handles.b48,'String','C')& set(handles.b48,'BackgroundColor','c'))
        else (set(handles.b48,'String','C')& set(handles.b48,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b48,'String')~= 'N' | get(handles.b48,'String')~= 'C')
            (set(handles.b48,'String','D')& set(handles.b48,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b48,'String','D')& set(handles.b48,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b48,'String')== 'N') 
            (set(handles.b48,'String',' ')& set(handles.b48,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b48,'String',' ')& set(handles.b48,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b48,'String'))== (get(handles.b47,'String')) |  (get(handles.b48,'String'))== (get(handles.b58,'String')) | (get(handles.b48,'String'))== (get(handles.b38,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b58.
function b58_Callback(hObject, eventdata, handles)
% hObject    handle to b58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b58,'String')~= 'D' | get(handles.b58,'String')~= 'C')
            (set(handles.b58,'String','N')& set(handles.b58,'BackgroundColor','w')) 
        else (set(handles.b58,'String','N')& set(handles.b58,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b58,'String')~= 'N' | get(handles.b58,'String')~= 'D')
            (set(handles.b58,'String','C')& set(handles.b58,'BackgroundColor','c'))
        else (set(handles.b58,'String','C')& set(handles.b58,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b58,'String')~= 'N' | get(handles.b58,'String')~= 'C')
            (set(handles.b58,'String','D')& set(handles.b58,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b58,'String','D')& set(handles.b58,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b58,'String')== 'N') 
            (set(handles.b58,'String',' ')& set(handles.b58,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b58,'String',' ')& set(handles.b58,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b58,'String'))== (get(handles.b57,'String')) |  (get(handles.b58,'String'))== (get(handles.b48,'String')) | (get(handles.b58,'String'))== (get(handles.b68,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b68.
function b68_Callback(hObject, eventdata, handles)
% hObject    handle to b68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b68,'String')~= 'D' | get(handles.b68,'String')~= 'C')
            (set(handles.b68,'String','N')& set(handles.b68,'BackgroundColor','w')) 
        else (set(handles.b68,'String','N')& set(handles.b68,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b68,'String')~= 'N' | get(handles.b68,'String')~= 'D')
            (set(handles.b68,'String','C')& set(handles.b68,'BackgroundColor','c'))
        else (set(handles.b68,'String','C')& set(handles.b68,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b68,'String')~= 'N' | get(handles.b68,'String')~= 'C')
            (set(handles.b68,'String','D')& set(handles.b68,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b68,'String','D')& set(handles.b68,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b68,'String')== 'N') 
            (set(handles.b68,'String',' ')& set(handles.b68,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b68,'String',' ')& set(handles.b68,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b68,'String'))== (get(handles.b67,'String')) |  (get(handles.b68,'String'))== (get(handles.b78,'String')) | (get(handles.b68,'String'))== (get(handles.b58,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b78.
function b78_Callback(hObject, eventdata, handles)
% hObject    handle to b78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b78,'String')~= 'D' | get(handles.b78,'String')~= 'C')
            (set(handles.b78,'String','N')& set(handles.b78,'BackgroundColor','w')) 
        else (set(handles.b78,'String','N')& set(handles.b78,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b78,'String')~= 'N' | get(handles.b78,'String')~= 'D')
            (set(handles.b78,'String','C')& set(handles.b78,'BackgroundColor','c'))
        else (set(handles.b78,'String','C')& set(handles.b78,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b78,'String')~= 'N' | get(handles.b78,'String')~= 'C')
            (set(handles.b78,'String','D')& set(handles.b78,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b78,'String','D')& set(handles.b78,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b78,'String')== 'N') 
            (set(handles.b78,'String',' ')& set(handles.b78,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b78,'String',' ')& set(handles.b78,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b78,'String'))== (get(handles.b77,'String')) |  (get(handles.b78,'String'))== (get(handles.b88,'String')) | (get(handles.b78,'String'))== (get(handles.b68,'String'))  
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b88.
function b88_Callback(hObject, eventdata, handles)
% hObject    handle to b88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b88,'String')~= 'D' | get(handles.b88,'String')~= 'C')
            (set(handles.b88,'String','N')& set(handles.b88,'BackgroundColor','w')) 
        else (set(handles.b88,'String','N')& set(handles.b88,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b88,'String')~= 'N' | get(handles.b88,'String')~= 'D')
            (set(handles.b88,'String','C')& set(handles.b88,'BackgroundColor','c'))
        else (set(handles.b88,'String','C')& set(handles.b88,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b88,'String')~= 'N' | get(handles.b88,'String')~= 'C')
            (set(handles.b88,'String','D')& set(handles.b88,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b88,'String','D')& set(handles.b88,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b88,'String')== 'N') 
            (set(handles.b88,'String',' ')& set(handles.b88,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b88,'String',' ')& set(handles.b88,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b88,'String'))== (get(handles.b87,'String')) |  (get(handles.b88,'String'))== (get(handles.b78,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b28.
function b28_Callback(hObject, eventdata, handles)
% hObject    handle to b28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b28,'String')~= 'D' | get(handles.b28,'String')~= 'C')
            (set(handles.b28,'String','N')& set(handles.b28,'BackgroundColor','w')) 
        else (set(handles.b28,'String','N')& set(handles.b28,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b28,'String')~= 'N' | get(handles.b28,'String')~= 'D')
            (set(handles.b28,'String','C')& set(handles.b28,'BackgroundColor','c'))
        else (set(handles.b28,'String','C')& set(handles.b28,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b28,'String')~= 'N' | get(handles.b28,'String')~= 'C')
            (set(handles.b28,'String','D')& set(handles.b28,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b28,'String','D')& set(handles.b28,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b28,'String')== 'N') 
            (set(handles.b28,'String',' ')& set(handles.b28,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b28,'String',' ')& set(handles.b28,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b28,'String'))== (get(handles.b27,'String')) |  (get(handles.b28,'String'))== (get(handles.b18,'String')) | (get(handles.b28,'String'))== (get(handles.b38,'String'))  
        h = msgbox('Wrong Move!','Error');
    end

% --- Executes on button press in b11.
function b11_Callback(hObject, eventdata, handles)
% hObject    handle to b11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get value of popup
    selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b11,'String')~= 'D' | get(handles.b11,'String')~= 'C')
            (set(handles.b11,'String','N')& set(handles.b11,'BackgroundColor','w')) 
        else (set(handles.b11,'String','N')& set(handles.b11,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b11,'String')~= 'N' | get(handles.b11,'String')~= 'D')
            (set(handles.b11,'String','C')& set(handles.b11,'BackgroundColor','c'))
        else (set(handles.b11,'String','C')& set(handles.b11,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b11,'String')~= 'N' | get(handles.b11,'String')~= 'C')
            (set(handles.b11,'String','D')& set(handles.b11,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b11,'String','D')& set(handles.b11,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b11,'String')== 'N') 
            (set(handles.b11,'String',' ')& set(handles.b11,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b11,'String',' ')& set(handles.b11,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b11,'String'))== (get(handles.b12,'String')) |  (get(handles.b11,'String'))== (get(handles.b21,'String'))
        h = msgbox('Wrong Move','Error');
    end
        % --- Executes on button press in b12.
function b12_Callback(hObject, eventdata, handles)
% hObject    handle to b12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b12,'String')~= 'D' | get(handles.b12,'String')~= 'C')
            (set(handles.b12,'String','N')& set(handles.b12,'BackgroundColor','w')) 
        else (set(handles.b12,'String','N')& set(handles.b12,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b12,'String')~= 'N' | get(handles.b12,'String')~= 'D')
            (set(handles.b12,'String','C')& set(handles.b12,'BackgroundColor','c'))
        else (set(handles.b12,'String','C')& set(handles.b12,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b12,'String')~= 'N' | get(handles.b12,'String')~= 'C')
            (set(handles.b12,'String','D')& set(handles.b12,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b12,'String','D')& set(handles.b12,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b12,'String')== 'N') 
            (set(handles.b12,'String',' ')& set(handles.b12,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b12,'String',' ')& set(handles.b12,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b12,'String'))== (get(handles.b11,'String')) |  (get(handles.b12,'String'))== (get(handles.b13,'String')) | (get(handles.b12,'String'))== (get(handles.b22,'String')) 
        h = msgbox('Wrong Move!','Error');
    end


% --- Executes on button press in b13.
function b13_Callback(hObject, eventdata, handles)
% hObject    handle to b13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b13,'String')~= 'D' | get(handles.b13,'String')~= 'C')
            (set(handles.b13,'String','N')& set(handles.b13,'BackgroundColor','w')) 
        else (set(handles.b13,'String','N')& set(handles.b13,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b13,'String')~= 'N' | get(handles.b13,'String')~= 'D')
            (set(handles.b13,'String','C')& set(handles.b13,'BackgroundColor','c'))
        else (set(handles.b13,'String','C')& set(handles.b13,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b13,'String')~= 'N' | get(handles.b13,'String')~= 'C')
            (set(handles.b13,'String','D')& set(handles.b13,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b13,'String','D')& set(handles.b13,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b13,'String')== 'N') 
            (set(handles.b13,'String',' ')& set(handles.b13,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b13,'String',' ')& set(handles.b13,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b13,'String'))== (get(handles.b14,'String')) |  (get(handles.b13,'String'))== (get(handles.b12,'String')) | (get(handles.b13,'String'))== (get(handles.b23,'String')) 
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b14.
function b14_Callback(hObject, eventdata, handles)
% hObject    handle to b14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b14,'String')~= 'D' | get(handles.b14,'String')~= 'C')
            (set(handles.b14,'String','N')& set(handles.b14,'BackgroundColor','w')) 
        else (set(handles.b14,'String','N')& set(handles.b14,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b14,'String')~= 'N' | get(handles.b14,'String')~= 'D')
            (set(handles.b14,'String','C')& set(handles.b14,'BackgroundColor','c'))
        else (set(handles.b14,'String','C')& set(handles.b14,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b14,'String')~= 'N' | get(handles.b14,'String')~= 'C')
            (set(handles.b14,'String','D')& set(handles.b14,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b14,'String','D')& set(handles.b14,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b14,'String')== 'N') 
            (set(handles.b14,'String',' ')& set(handles.b14,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b14,'String',' ')& set(handles.b14,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
    if(get(handles.b14,'String'))== (get(handles.b13,'String')) |  (get(handles.b14,'String'))== (get(handles.b15,'String')) | (get(handles.b14,'String'))== (get(handles.b24,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b15.
function b15_Callback(hObject, eventdata, handles)
% hObject    handle to b15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b15,'String')~= 'D' | get(handles.b15,'String')~= 'C')
            (set(handles.b15,'String','N')& set(handles.b15,'BackgroundColor','w')) 
        else (set(handles.b15,'String','N')& set(handles.b15,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b15,'String')~= 'N' | get(handles.b15,'String')~= 'D')
            (set(handles.b15,'String','C')& set(handles.b15,'BackgroundColor','c'))
        else (set(handles.b15,'String','C')& set(handles.b15,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b15,'String')~= 'N' | get(handles.b15,'String')~= 'C')
            (set(handles.b15,'String','D')& set(handles.b15,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b15,'String','D')& set(handles.b15,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b15,'String')== 'N') 
            (set(handles.b15,'String',' ')& set(handles.b15,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b15,'String',' ')& set(handles.b15,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b15,'String'))== (get(handles.b16,'String')) |  (get(handles.b15,'String'))== (get(handles.b14,'String')) | (get(handles.b15,'String'))== (get(handles.b25,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b16.
function b16_Callback(hObject, eventdata, handles)
% hObject    handle to b16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b16,'String')~= 'D' | get(handles.b16,'String')~= 'C')
            (set(handles.b16,'String','N')& set(handles.b16,'BackgroundColor','w')) 
        else (set(handles.b16,'String','N')& set(handles.b16,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b16,'String')~= 'N' | get(handles.b16,'String')~= 'D')
            (set(handles.b16,'String','C')& set(handles.b16,'BackgroundColor','c'))
        else (set(handles.b16,'String','C')& set(handles.b16,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b16,'String')~= 'N' | get(handles.b16,'String')~= 'C')
            (set(handles.b16,'String','D')& set(handles.b16,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b16,'String','D')& set(handles.b16,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b16,'String')== 'N') 
            (set(handles.b16,'String',' ')& set(handles.b16,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b16,'String',' ')& set(handles.b16,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b17,'String'))== (get(handles.b16,'String')) |  (get(handles.b15,'String'))== (get(handles.b16,'String')) | (get(handles.b16,'String'))== (get(handles.b26,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in b18.
function b18_Callback(hObject, eventdata, handles)
% hObject    handle to b18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
    if selectedIndex  == 1
        if(get(handles.b18,'String')~= 'D' | get(handles.b18,'String')~= 'C')
            (set(handles.b18,'String','N')& set(handles.b18,'BackgroundColor','w')) 
        else (set(handles.b18,'String','N')& set(handles.b18,'BackgroundColor','w')) ;
            
        end
    elseif selectedIndex  == 2
        if(get(handles.b18,'String')~= 'N' | get(handles.b18,'String')~= 'D')
            (set(handles.b18,'String','C')& set(handles.b18,'BackgroundColor','c'))
        else (set(handles.b18,'String','C')& set(handles.b18,'BackgroundColor','c')) ;
        end
    elseif selectedIndex  == 3
        if(get(handles.b18,'String')~= 'N' | get(handles.b18,'String')~= 'C')
            (set(handles.b18,'String','D')& set(handles.b18,'BackgroundColor','[1,1,0.4]'))
        else (set(handles.b18,'String','D')& set(handles.b18,'BackgroundColor','[1,1,0.4]')) ;
        end
    elseif selectedIndex  == 4
        if(get(handles.b18,'String')== 'N') 
            (set(handles.b18,'String',' ')& set(handles.b18,'BackgroundColor','[0.7647,0.5921,0.6039]'))
        else (set(handles.b18,'String',' ')& set(handles.b18,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
        end
    end
if(get(handles.b17,'String'))== (get(handles.b18,'String')) |  (get(handles.b18,'String'))== (get(handles.b28,'String'))
        h = msgbox('Wrong Move!','Error');
    end
% --- Executes on button press in b17.
function b17_Callback(hObject, eventdata, handles)
% hObject    handle to b17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.pop, 'value');
    % Take action based upon selection
        if selectedIndex  == 1
            if(get(handles.b17,'String')~= 'D' | get(handles.b17,'String')~= 'C')
                (set(handles.b17,'String','N')& set(handles.b17,'BackgroundColor','w')) 
            else (set(handles.b17,'String','N')& set(handles.b17,'BackgroundColor','w')) ;

            end
        elseif selectedIndex  == 2
            if(get(handles.b17,'String')~= 'N' | get(handles.b17,'String')~= 'D')
                (set(handles.b17,'String','C')& set(handles.b17,'BackgroundColor','c'))
            else (set(handles.b17,'String','C')& set(handles.b17,'BackgroundColor','c')) ;
            end
        elseif selectedIndex  == 3
            if(get(handles.b17,'String')~= 'N' | get(handles.b17,'String')~= 'C')
                (set(handles.b17,'String','D')& set(handles.b17,'BackgroundColor','[1,1,0.4]'))
            else (set(handles.b17,'String','D')& set(handles.b17,'BackgroundColor','[1,1,0.4]')) ;
            end
        elseif selectedIndex  == 4
            if(get(handles.b17,'String')== 'N') 
                (set(handles.b17,'String',' ')& set(handles.b17,'BackgroundColor','[0.7647,0.5921,0.6039]'))
            else (set(handles.b17,'String',' ')& set(handles.b17,'BackgroundColor','[0.7647,0.5921,0.6039]')) ;
            end
        end
    if(get(handles.b17,'String'))== (get(handles.b18,'String')) |  (get(handles.b17,'String'))== (get(handles.b16,'String')) | (get(handles.b17,'String'))== (get(handles.b27,'String'))
        h = msgbox('Wrong Move','Error');
    end 

% --- Executes on selection change in pop.
function pop_Callback(hObject, eventdata, handles)
% hObject    handle to pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pop


% --- Executes during object creation, after setting all properties.
function pop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Exit.
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox({ '1. Once you moved your token you are not allowed to Reset' '2. No two crosses or noughts or diamonds are placed in squares with a common edge.' '3. If a player cannot place his/ her token in a valid square the player is out of the game.' '4. The last player who places the token in a valid squre wins the game.'}, 'Rules');
