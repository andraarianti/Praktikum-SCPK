function varargout = kalkulator(varargin)
% KALKULATOR MATLAB code for kalkulator.fig
%      KALKULATOR, by itself, creates a new KALKULATOR or raises the existing
%      singleton*.
%
%      H = KALKULATOR returns the handle to a new KALKULATOR or the handle to
%      the existing singleton*.
%
%      KALKULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALKULATOR.M with the given input arguments.
%
%      KALKULATOR('Property','Value',...) creates a new KALKULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalkulator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalkulator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalkulator

% Last Modified by GUIDE v2.5 29-Feb-2020 08:54:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalkulator_OpeningFcn, ...
                   'gui_OutputFcn',  @kalkulator_OutputFcn, ...
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


% --- Executes just before kalkulator is made visible.
function kalkulator_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalkulator (see VARARGIN)

% Choose default command line output for kalkulator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kalkulator wait for user response (see UIRESUME)
% uiwait(handles.hasil);


% --- Outputs from this function are returned to the command line.
function varargout = kalkulator_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function angka1_Callback(~, ~, ~)
% hObject    handle to angka1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angka1 as text
%        str2double(get(hObject,'String')) returns contents of angka1 as a double


% --- Executes during object creation, after setting all properties.
function angka1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angka1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angka2_Callback(hObject, eventdata, handles)
% hObject    handle to angka2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angka2 as text
%        str2double(get(hObject,'String')) returns contents of angka2 as a double


% --- Executes during object creation, after setting all properties.
function angka2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angka2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tambah.
function tambah_Callback(hObject, eventdata, handles)
% hObject    handle to tambah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1=get(handles.angka1,'string');
input2=get(handles.angka2,'string');
angka1=str2num(input1);
angka2=str2num(input2);
hasil=angka1+angka2;
hasilakhir=num2str(hasil);
set(handles.edit1,'string',(hasilakhir))


% --- Executes on button press in kurang.
function kurang_Callback(hObject, eventdata, handles)
% hObject    handle to kurang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1=get(handles.angka1,'string');
input2=get(handles.angka2,'string');
angka1=str2num(input1);
angka2=str2num(input2);
hasil=angka1-angka2;
hasilakhir=num2str(hasil);
set(handles.edit1,'string',(hasilakhir))

% --- Executes on button press in kali.
function kali_Callback(hObject, eventdata, handles)
% hObject    handle to kali (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1=get(handles.angka1,'string');
input2=get(handles.angka2,'string');
angka1=str2num(input1);
angka2=str2num(input2);
hasil=angka1*angka2;
hasilakhir=num2str(hasil);
set(handles.edit1,'string',(hasilakhir))

% --- Executes on button press in bagi.
function bagi_Callback(hObject, eventdata, handles)
% hObject    handle to bagi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1=get(handles.angka1,'string');
input2=get(handles.angka2,'string');
angka1=str2num(input1);
angka2=str2num(input2);
hasil=angka1/angka2;
hasilakhir=num2str(hasil);
set(handles.edit1,'string',(hasilakhir))



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