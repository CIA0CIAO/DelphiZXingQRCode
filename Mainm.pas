unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, unimHTMLFrame, uniButton,
  unimButton, uniFileUpload, unimFileUpload, uniURLFrame, unimURLFrame, uniMemo,
  unimMemo, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid, unimScrollBox,
  Data.Win.ADODB, Data.DB, Datasnap.DBClient, Datasnap.Provider, uniEdit,
  unimEdit, unimPanel, uniPageControl, unimTabPanel, uniDBEdit, unimDBEdit,
  uniLabel, unimLabel,test;

type
  TMainmForm = class(TUnimForm)
    UnimPanel1: TUnimPanel;
    PanelPlan: TUnimPanel;
    btnScan: TUnimButton;
    UnimPanel2: TUnimPanel;
    EditPan_Auto: TUnimEdit;
    PanelMade: TUnimPanel;
    UnimPanel3: TUnimPanel;
    UnimPanel4: TUnimPanel;
    DBEditPan_SNum: TUnimDBEdit;
    UnimPanel5: TUnimPanel;
    DBEditPan_Num: TUnimDBEdit;
    DBEditMad_Auto: TUnimDBEdit;
    UnimPanel6: TUnimPanel;
    UnimPanel7: TUnimPanel;
    UnimPanel8: TUnimPanel;
    UnimPanel9: TUnimPanel;
    EditMads_Site: TUnimEdit;
    EditStk_NO: TUnimEdit;
    EditMads_Batch: TUnimEdit;
    UnimPanel10: TUnimPanel;
    UnimDBGrid1: TUnimDBGrid;
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
    DSP_MadeS: TDataSetProvider;
    CDS_MadeS: TClientDataSet;
    CDS_MadeSMads_ID: TStringField;
    CDS_MadeSMad_Auto: TStringField;
    CDS_MadeSMads_NO: TIntegerField;
    CDS_MadeSStk_NO: TStringField;
    CDS_MadeSMads_Site: TStringField;
    CDS_MadeSMads_Batch: TStringField;
    CDS_MadeSStk_PNO: TStringField;
    DS_MadeS: TDataSource;
    btnConfirm: TUnimButton;
    procedure EditPan_AutoChange(Sender: TObject);
    procedure EditMads_SiteChange(Sender: TObject);
    procedure EditStk_NOChange(Sender: TObject);
    procedure EditMads_BatchChange(Sender: TObject);
    procedure btnScanClick(Sender: TObject);
    procedure SpeakText(const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;


procedure TMainmForm.btnScanClick(Sender: TObject);
begin
    UnimForm1.ShowModal;
    UnimForm1.Show;
end;

procedure TMainmForm.EditMads_BatchChange(Sender: TObject);
begin
  if (EditMads_Batch.Text <> '')  then
  begin
    CDS_MadeS.FieldByName('Mads_Batch').AsString:=EditMads_Batch.Text;
    CDS_MadeS.Post;
    CDS_MadeS.ApplyUpdates(0);
    EditMads_Site.SetFocus;
  end else  EditMads_Batch.SetFocus;
end;

procedure TMainmForm.EditMads_SiteChange(Sender: TObject);
begin
  if (EditMads_Site.Text <> '')  then
  begin
    if CDS_MadeS.Locate('Mads_Site', VarArrayOf([EditMads_Site.Text]), []) then
    begin
      EditStk_NO.SetFocus;
    end
    else
    begin
    ShowMessage('Î´ÕÒµ½Æ¥Åä¼ÇÂ¼');
SpeakText('Î´ÕÒµ½Æ¥Åä¼ÇÂ¼');
    end;
  end;
end;

procedure TMainmForm.EditPan_AutoChange(Sender: TObject);
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

procedure TMainmForm.EditStk_NOChange(Sender: TObject);
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
      ShowMessage('Î´ÕÒµ½Æ¥Åä¼ÇÂ¼');

    end;
  end;
end;

procedure TMainmForm.SpeakText(const Text: string);
begin
  UniSession.AddJS(
    'if ("speechSynthesis" in window) {' +
    '  var utterance = new SpeechSynthesisUtterance("' + Text + '");' +
    '  utterance.onend = function() {' +
    '    speechSynthesis.cancel();' +
    '  };' +
    '  speechSynthesis.speak(utterance);' +
    '} else {' +
    '  alert("ä¯ÀÀÆ÷²»Ö§³Ö Web Speech API");' +
    '}'
  );
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
