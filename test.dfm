object UnimForm1: TUnimForm1
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = #25195#30721#30028#38754
  TitleButtons = <>
  OnReady = UnimFormReady
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimHTMLFrame1: TUnimHTMLFrame
    Left = 0
    Top = 0
    Width = 360
    Height = 593
    Hint = ''
    HTML.Strings = (
      
        '<audio id="player" height="0px" src="files/beep-digital.mp3" sty' +
        'le="display:none"></audio>'
      '<div>'
      
        '  <video id="video" width="100%" height="100%" style="border: 1p' +
        'x solid gray"></video>'
      '</div>'
      ''
      '<div id="sourceSelectPanel" style="display:none">'
      '  <label for="sourceSelect">  '#21487#36873#25668#20687#22836':</label>'
      '  <select id="sourceSelect" style="max-width:400px">'
      '  </select>'
      '</div>')
    Align = alClient
    OnAjaxEvent = UnimHTMLFrame1AjaxEvent
    ExplicitWidth = 350
    ExplicitHeight = 575
  end
end
