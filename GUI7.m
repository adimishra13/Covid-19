function varargout = GUI7(varargin)
% GUI7 MATLAB code for GUI7.fig
%      GUI7, by itself, creates a new GUI7 or raises the existing
%      singleton*.
%
%      H = GUI7 returns the handle to a new GUI7 or the handle to
%      the existing singleton*.
%
%      GUI7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI7.M with the given input arguments.
%
%      GUI7('Property','Value',...) creates a new GUI7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI7

% Last Modified by GUIDE v2.5 17-May-2018 19:58:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI7_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI7_OutputFcn, ...
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


% --- Executes just before GUI7 is made visible.
function GUI7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI7 (see VARARGIN)

% Choose default command line output for GUI7
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in pm.
function pm_Callback(hObject, eventdata, handles)
% hObject    handle to pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pm

choice= get(handles.pm,'value')
if choice==2
    set(handles.edit1,'string',33050)
    set(handles.edit2,'string',1074)
elseif choice==3
    set(handles.edit1,'string',203591)
    set(handles.edit2,'string',27682)
elseif choice==4
    set(handles.edit1,'string',1039909)
    set(handles.edit2,'string',60966)
elseif choice==5
    set(handles.edit1,'string',159119)
    set(handles.edit2,'string',6288)
else
    set(handles.edit1,'string',83917)
    set(handles.edit2,'string',4637)
end
% --- Executes during object creation, after setting all properties.
function pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb1.
function pb1_Callback(hObject, eventdata, handles)
% hObject    handle to pb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup_sel_index = get(handles.pm, 'value');

load data.mat
figure;
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
switch popup_sel_index
    case 2
        x=data.dateRep(246:365);
        y=data.cases(246:365);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
title('INDIA');
 case 3
        x=data.dateRep(367:487);
        y=data.cases(367:487);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
title('ITALY');
 case 4
        x=data.dateRep(489:608);
        y=data.cases(489:608);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
title('USA');
 case 5
        x=data.dateRep(2:122);
        y=data.cases(2:122);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
title('GERMANY');
 case 6
        x=data.dateRep(124:244);
        y=data.cases(124:244);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
title('CHINA');
end


% --- Executes on button press in pb2.
function pb2_Callback(hObject, eventdata, handles)
% hObject    handle to pb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup_sel_index = get(handles.pm, 'value');

load data.mat
figure;
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF DECEASED CASES');
switch popup_sel_index
    case 2
        x=data.dateRep(246:365);
        y=data.deaths(246:365);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF DECEASED CASES');
title('INDIA');
 case 3
        x=data.dateRep(367:487);
        y=data.deaths(367:487);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF DECEASED CASES');
title('ITALY');
 case 4
        x=data.dateRep(489:608);
        y=data.deaths(489:608);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF DECEASED CASES');
title('USA');
 case 5
        x=data.dateRep(2:122);
        y=data.deaths(2:122);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF DECEASED CASES');
title('GERMANY');
 case 6
        x=data.dateRep(124:244);
        y=data.deaths(124:244);
        bar(x,y);
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF DECEASED CASES');
title('CHINA');
end



% --- Executes on button press in pb3.
function pb3_Callback(hObject, eventdata, handles)
% hObject    handle to pb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup_sel_index = get(handles.pm, 'value');

load data.mat
figure;
xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
zlabel('NUMBER OF DECEASED CASES');
switch popup_sel_index
    case 2
        x=data.dateRep(246:365);
        y=data.cases(246:365);
        z=data.deaths(246:365);
        subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
        ylabel('NUMBER OF CONFIRMED CASES');
        subplot(1,2,2);
        bar(x,z);  
xlabel('NUMBER OF DAYS');
zlabel('NUMBER OF DECEASED CASES');
title('INDIA');
 case 3
        x=data.dateRep(367:487);
        y=data.cases(367:487);
        z=data.deaths(367:487);
        subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
 subplot(1,2,2);
        bar(x,z);  
xlabel('NUMBER OF DAYS');
zlabel('NUMBER OF DECEASED CASES');
title('ITALY');
 case 4
        x=data.dateRep(489:608);
        y=data.cases(489:608);
        z=data.deaths(489:608);
        subplot(1,2,1);
        bar(x,y);
      xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
 subplot(1,2,2);
        bar(x,z);  
xlabel('NUMBER OF DAYS');
zlabel('NUMBER OF DECEASED CASES');
title('USA');
 case 5
        x=data.dateRep(2:122);
        y=data.cases(2:122);
         z=data.deaths(2:122);
         subplot(1,2,1);
        bar(x,y);
        xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
subplot(1,2,2);
        bar(x,z);  
xlabel('NUMBER OF DAYS');
zlabel('NUMBER OF DECEASED CASES');
title('GERMANY');
 case 6
        x=data.dateRep(124:244);
        y=data.cases(124:244);
         z=data.deaths(124:244);
         subplot(1,2,1);
        bar(x,y);
     xlabel('NUMBER OF DAYS');
ylabel('NUMBER OF CONFIRMED CASES');
subplot(1,2,2);
        bar(x,z);  
xlabel('NUMBER OF DAYS');
zlabel('NUMBER OF DECEASED CASES');
title('CHINA');
end