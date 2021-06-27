function varargout = add_operation(varargin)
% ADD_OPERATION MATLAB code for add_operation.fig
%      ADD_OPERATION, by itself, creates a new ADD_OPERATION or raises the existing
%      singleton*.
%
%      H = ADD_OPERATION returns the handle to a new ADD_OPERATION or the handle to
%      the existing singleton*.
%
%      ADD_OPERATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADD_OPERATION.M with the given input arguments.
%
%      ADD_OPERATION('Property','Value',...) creates a new ADD_OPERATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before add_operation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to add_operation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help add_operation

% Last Modified by GUIDE v2.5 10-Oct-2019 15:15:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @add_operation_OpeningFcn, ...
                   'gui_OutputFcn',  @add_operation_OutputFcn, ...
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


% --- Executes just before add_operation is made visible.
function add_operation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to add_operation (see VARARGIN)

% Choose default command line output for add_operation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes add_operation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = add_operation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function opd1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to opd1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opd1_edit as text
%        str2double(get(hObject,'String')) returns contents of opd1_edit as a double


% --- Executes during object creation, after setting all properties.
function opd1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opd1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function opd2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to opd2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opd2_edit as text
%        str2double(get(hObject,'String')) returns contents of opd2_edit as a double


% --- Executes during object creation, after setting all properties.
function opd2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opd2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add_pb1.
function add_pb1_Callback(hObject, eventdata, handles)
% hObject    handle to add_pb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
