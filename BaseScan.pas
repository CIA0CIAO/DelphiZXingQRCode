unit BaseScan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIJSForm,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniPanel, uniHTMLFrame, uniMemo, uniBasicGrid, uniDBGrid, Data.Win.ADODB,
  Data.DB, Datasnap.Provider, Datasnap.DBClient, uniEdit, uniScrollBox,
  uniBitBtn, uniDBEdit, uniRadioButton, uniPageControl;

type
  TF_BaseScan = class(TUniForm)
    PanelPlan: TUniPanel;
    UniPanel4: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    PanelMade: TUniPanel;
    EditPan_Auto: TUniEdit;
    UniBitBtn1: TUniBitBtn;
    DBEditMad_Auto: TUniDBEdit;
    DBEditPan_Num: TUniDBEdit;
    DBEditPan_SNum: TUniDBEdit;
    PControlScan: TUniPageControl;
    TSheetScan: TUniTabSheet;
    TSheetMoble: TUniTabSheet;
    UniHTMLFrame1: TUniHTMLFrame;
    btnReset: TUniButton;
    btnStart: TUniButton;
    UniPanel2: TUniPanel;
    EditStk_NO: TUniEdit;
    EditMads_Site: TUniEdit;
    EditMads_Batch: TUniEdit;
    TSheetClose: TUniTabSheet;
    DSP_Plan: TDataSetProvider;
    CDS_Plan: TClientDataSet;
    CDS_PlanPan_Auto: TAutoIncField;
    CDS_PlanCom_NO: TStringField;
    CDS_PlanAcp_NO: TStringField;
    CDS_PlanStk_NO: TStringField;
    CDS_PlanStk_Name: TStringField;
    CDS_PlanStk_Stand: TStringField;
    CDS_PlanStk_Unit: TStringField;
    CDS_PlanDep_NO: TStringField;
    CDS_PlanDep_Name: TStringField;
    CDS_PlanPan_Num: TBCDField;
    CDS_PlanMad_Auto: TStringField;
    CDS_PlanSod_Auto: TStringField;
    CDS_PlanSod_KNO: TStringField;
    CDS_PlanCus_NO: TStringField;
    CDS_PlanCus_Name: TStringField;
    CDS_PlanPan_TNum: TBCDField;
    CDS_PlanPan_SNum: TBCDField;
    CDS_PlanPan_Type: TStringField;
    CDS_PlanPan_Date: TDateTimeField;
    DS_Plan: TDataSource;
    CDS_MadeS: TClientDataSet;
    DSP_MadeS: TDataSetProvider;
    DS_MadeS: TDataSource;
    CDS_MadeSMads_ID: TStringField;
    CDS_MadeSMad_Auto: TStringField;
    CDS_MadeSMads_NO: TIntegerField;
    CDS_MadeSStk_NO: TStringField;
    CDS_MadeSMads_Site: TStringField;
    CDS_MadeSMads_Batch: TStringField;
    CDS_MadeSStk_PNO: TStringField;
    procedure btnResetClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure UniHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure EditStk_NOChange(Sender: TObject);
    procedure UniScrollBox1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure PControlScanChange(Sender: TObject);
    procedure EditPan_AutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditStk_NOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMads_SiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMads_BatchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function F_BaseScan: TF_BaseScan;

implementation

{$R *.dfm}

uses
  uniGUIVars, BaseDataM, uniGUIApplication;

function F_BaseScan: TF_BaseScan;
begin
  Result := TF_BaseScan(DataMod.GetFormInstance(TF_BaseScan));
end;

procedure TF_BaseScan.btnStartClick(Sender: TObject);
begin
  UniSession.AddJS(UniHTMLFrame1.JSName +
    '._ael=document.getElementById("player");' + UniHTMLFrame1.JSName +
    '._ael.load();' + UniHTMLFrame1.JSName + '.oldResultText="";' +
    'let selectedDeviceId;' +
    '    const codeReader = new ZXing.BrowserMultiFormatReader();' +
    '    codeReader.getVideoInputDevices()' +
    '      .then((videoInputDevices) => {' +
    '        const sourceSelect = document.getElementById("sourceSelect");' +
    '        selectedDeviceId = videoInputDevices[0].deviceId;' +
    '        if (videoInputDevices.length >= 1) {' +
    '          videoInputDevices.forEach((element) => {' +
    '            const sourceOption = document.createElement("option");' +
    '            sourceOption.text = element.label;' +
    '            sourceOption.value = element.deviceId;' +
    '            sourceSelect.appendChild(sourceOption);' + '          });' +

    '          sourceSelect.onchange = () => {' +
    '            selectedDeviceId = sourceSelect.value;' + '          };' +

    '          const sourceSelectPanel = document.getElementById("sourceSelectPanel");'
    + '          sourceSelectPanel.style.display = "block";' + '        }' +

    '        document.getElementById("' + btnStart.JSId +
    '").addEventListener("click", () => {' +
    '          codeReader.decodeFromVideoDevice(selectedDeviceId, "video", (result, err) => {'
    + '            if (result&&result.text!=' + UniHTMLFrame1.JSName +
    '.oldResultText) {' + '              window.ajaxRequest(' +
    UniHTMLFrame1.JSName + ', "getResult", ["result="+result.text]);' +
    UniHTMLFrame1.JSName + '.oldResultText=result.text;' + '            }' +
    '            if (err && !(err instanceof ZXing.NotFoundException)) {' +
    // '              console.error(err);'+
    // '              document.getElementById("result").textContent = err;'+
    '            }' + '          });' +
    // '          console.log("Started continous decode from camera with id ${selectedDeviceId}")'+
    '        });' +

    '        document.getElementById("' + btnReset.JSId +
    '").addEventListener("click", () => {' + '          codeReader.reset();' +
    '          ajaxRequest(' + UniHTMLFrame1.JSName +
    ', "getResult", ["result="+""]);' +
    // '          console.log("Reset.")'+
    '        })' +

    '      })' + '      .catch((err) => {' + '        alert(err)' + '      })');
  (Sender as TUniButton).JSInterface.JSCall('el.dom.click', []);
end;

procedure TF_BaseScan.EditMads_BatchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    if (EditMads_Batch.Text <> '')  then
    begin
      CDS_MadeS.FieldByName('Mads_Batch').AsString:=EditMads_Batch.Text;
      CDS_MadeS.Post;
      CDS_MadeS.ApplyUpdates(0);
      EditMads_Site.SetFocus;
    end else  EditMads_Batch.SetFocus;
  end;
end;

procedure TF_BaseScan.EditMads_SiteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    if (EditMads_Site.Text <> '')  then
    begin
      if CDS_MadeS.Locate('Mads_Site', VarArrayOf([EditMads_Site.Text]), []) then
      begin
        EditStk_NO.SetFocus;
      end
      else
      begin
        ShowMessage('未找到匹配记录');
      end;
    end;
  end;
end;

procedure TF_BaseScan.EditPan_AutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    CDS_Plan.Close;
    CDS_Plan.CommandText:=' Select * From MP_Plan where Pan_Auto='''+EditPan_Auto.Text+''' and  Pan_Auto is not null ' ;
    CDS_Plan.Open;
    if not CDS_Plan.IsEmpty  then
    begin
      CDS_MadeS.Close;
      CDS_MadeS.CommandText:='Select Mads_ID,Mad_Auto,Mads_NO,Stk_NO,Stk_PNO,Mads_Site,Mads_Batch From MP_Mades where Mad_Auto='''+CDS_Plan.FieldByName('Mad_Auto').AsString+''' and Mads_ID is not null';
      CDS_MadeS.OPEN;
      CDS_MadeS.MasterSource:=DS_Plan;
      EditMads_Site.SetFocus;
    end else
    begin
      EditPan_Auto.SetFocus;
    end;
  end;
end;

procedure TF_BaseScan.PControlScanChange(Sender: TObject);
begin
  EditPan_Auto.SetFocus;
  if PControlScan.TabIndex=2 then Close;
end;

procedure TF_BaseScan.btnResetClick(Sender: TObject);
begin
  (Sender as TUniButton).JSInterface.JSCall('el.dom.click', []);
end;

procedure TF_BaseScan.EditStk_NOChange(Sender: TObject);
begin
 {if (UniEdit1.Text <> '') and (UniEdit2.Text <> '') then
  begin
    if ClientDataSet1.Locate('Psn_NO; Psn_Code', VarArrayOf([UniEdit1.Text, UniEdit2.Text]), []) then
    begin
      // 将 UniEdit3 的值填入
      ShowMessage('开始插入信息');
      ClientDataSet1.Edit;
      ClientDataSet1.FieldByName('Field').AsString := UniEdit3.Text;
      ClientDataSet1.Post;
      ClientDataSet1.ApplyUpdates(0);
    end
    else
    begin
      ShowMessage('未找到匹配记录');
    end;
  end;   }
end;

procedure TF_BaseScan.EditStk_NOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    if (EditMads_Site.Text <> '') and (EditStk_NO.Text <> '') then
    begin
      if CDS_MadeS.Locate('Mads_Site;Stk_NO', VarArrayOf([EditMads_Site.Text, EditStk_NO.Text]), []) then
      begin
        CDS_Mades.Edit;
        EditMads_Batch.SetFocus;
      end
      else
      begin
        ShowMessage('未找到匹配记录');
      end;
    end;
  end;
end;

procedure TF_BaseScan.UniHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  ResultText: string;
  begin
{    ResultText := Params.Values['result'];
      if UniEdit1.Text = '' then
        UniEdit1.Text := ResultText
      else if UniEdit2.Text = '' then
        UniEdit2.Text := ResultText;
    UniHTMLFrame1.JSInterface.JSCall('_ael.play', []);   }
end;

procedure TF_BaseScan.UniScrollBox1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
//  btnStartClick(btnStart);
end;

initialization

RegisterAppFormClass(TF_BaseScan);

end.
