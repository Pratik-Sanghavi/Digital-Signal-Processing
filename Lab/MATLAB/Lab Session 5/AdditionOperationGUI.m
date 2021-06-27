function varargout = AdditionOperationGUI(varargin)
% ADDITIONOPERATIONGUI MATLAB code for AdditionOperationGUI.fig
%      ADDITIONOPERATIONGUI, by itself, creates a new ADDITIONOPERATIONGUI or raises the existing
%      singleton*.
%
%      H = ADDITIONOPERATIONGUI returns the handle to a new ADDITIONOPERATIONGUI or the handle to
%      the existing singleton*.
%
%      ADDITIONOPERATIONGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADDITIONOPERATIONGUI.M with the given input arguments.
%
%      ADDITIONOPERATIONGUI('Property','Value',...) creates a new ADDITIONOPERATIONGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdditionOperationGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdditionOperationGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdditionOperationGUI

% Last Modified by GUIDE v2.5 08-Oct-2019 20:06:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdditionOperationGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @AdditionOperationGUI_OutputFcn, ...
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


% --- Executes just before AdditionOperationGUI is made visible.
function AdditionOperationGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdditionOperationGUI (see VARARGIN)

% Choose default command line output for AdditionOperationGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AdditionOperationGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdditionOperationGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function operand1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to operand1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operand1_edit as text
%        str2double(get(hObject,'String')) returns contents of operand1_edit as a double

Operand1 = get(handles.operand1_edit, 'String');
Operand1 = str2num(Operand1);
handles.Operand1 = Operand1;

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function operand1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operand1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operand2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to operand2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operand2_edit as text
%        str2double(get(hObject,'String')) returns contents of operand2_edit as a double

Operand2 = get(handles.operand2_edit, 'String');
Operand2 = str2num(Operand2);
handles.Operand2= Operand2;

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function operand2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operand2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Add_pushbutton.
function Add_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Add_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sum = (handles.Operand1)+(handles.Operand2);
sum = num2str(sum);
set(handles.sum_text, 'String', sum);

guidata(hObject, handles);
