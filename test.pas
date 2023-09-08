unit test;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid,
  uniEdit, uniDBEdit, unimDBEdit, unimPanel, uniButton, unimButton, unimEdit,
  uniPanel, uniHTMLFrame, unimHTMLFrame, uniLabel, unimLabel;

type
  TUnimForm1 = class(TUnimForm)
    UnimHTMLFrame1: TUnimHTMLFrame;
    procedure UnimFormReady(Sender: TObject);
    procedure UnimHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnStartClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    var xx:String;
  end;
function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}
uses
  MainModule,uniGUIApplication,Mainm;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;


procedure TUnimForm1.btnStartClick(Sender: TObject);
begin
  (Sender as TUnimButton).JSInterface.JSCall('element.dom.click', []);
end;

procedure TUnimForm1.UnimFormReady(Sender: TObject);
begin
UniSession.AddJS(
  UnimHTMLFrame1.JSName + '._ael=document.getElementById("player");' +
  UnimHTMLFrame1.JSName + '.oldResultText="";'+
  'let selectedDeviceId;' +
  'const codeReader = new ZXing.BrowserMultiFormatReader();' +
  'codeReader.getVideoInputDevices()' +
  '  .then((videoInputDevices) => {' +
  '    const sourceSelect = document.getElementById("sourceSelect");' +
  '    selectedDeviceId = (videoInputDevices.length >= 2) ? videoInputDevices[1].deviceId : videoInputDevices[0].deviceId;' +
  '    if (videoInputDevices.length >= 1) {' +
  '      videoInputDevices.forEach((element) => {' +
  '        const sourceOption = document.createElement("option");' +
  '        sourceOption.text = element.label;' +
  '        sourceOption.value = element.deviceId;' +
  '        sourceSelect.appendChild(sourceOption);' +
  '      });' +
  '      sourceSelect.onchange = () => {' +
  '        selectedDeviceId = sourceSelect.value;' +
  '        codeReader.reset();' +
  '        codeReader.decodeFromVideoDevice(selectedDeviceId, "video", (result, err) => {' +
  '          if (result && result.text !== ' + UnimHTMLFrame1.JSName + '.oldResultText) {' +
  '            window.ajaxRequest(' + UnimHTMLFrame1.JSName + ', "getResult", ["result=" + result.text]);' +
  '            ' + UnimHTMLFrame1.JSName + '.oldResultText = result.text;' +
  '          }' +
  '        });' +
  '      };' +
  '      const sourceSelectPanel = document.getElementById("sourceSelectPanel");' +
  '      sourceSelectPanel.style.display = "block";' +
  '      codeReader.decodeFromVideoDevice(selectedDeviceId, "video", (result, err) => {' +
  '        if (result && result.text !== ' + UnimHTMLFrame1.JSName + '.oldResultText) {' +
  '          window.ajaxRequest(' + UnimHTMLFrame1.JSName + ', "getResult", ["result=" + result.text]);' +
  '          ' + UnimHTMLFrame1.JSName + '.oldResultText = result.text;' +
  '        }' +
  '      });' +
  '    }' +
  '  })' +
  '  .catch((err) => {' +
  '    alert(err);' +
  '  });'
);
end;

procedure TUnimForm1.UnimHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if (EventName = 'getResult') then
  begin
     if MainmForm.EditPan_Auto.Text = '' then
      MainmForm.EditPan_Auto.Text := Params.Values['result']
    else if MainmForm.EditMads_Site.Text = '' then
      MainmForm.EditMads_Site.Text := Params.Values['result']
    else if MainmForm.EditStk_NO.Text = '' then
      MainmForm.EditStk_NO.Text := Params.Values['result']
    else
      MainmForm.EditMads_Batch.Text := Params.Values['result'];
    Visible := False;;
  end;
end;


end.
