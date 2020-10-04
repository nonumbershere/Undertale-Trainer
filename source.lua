-- Made by Lapide
------- Open source.
-- Avalibe to edit and give away for FREE. If paid cheat engine might say something about it.
Form.Show()
local addressList = getAddressList()
local g = addressList.getMemoryRecordByDescription('gold')
 local hp = addressList.getMemoryRecordByDescription('hp')
Form.ScreenPosition = "poScreenCenter"
Form.BorderStyle = "bsToolWindow"
Form.ShowInTaskbar = "stAlways"
godmode = Form.Godmode
CheckyBox = Form.CECheckbox1
TextyBox = Otherhack.CEEdit1
TextyBox2 = Otherhack.CEEdit2
TextyBox3 = Otherhack.CEEdit3
checkbox1 = Form.showem
 function close()
    closeCE()
 end
function Form_CEButton1Click(sender)
if openProcess("Undertale.exe") == null then
      showMessage("Can't find undertale.")
      Form.CELabel1.Caption = "Can't find PROC"
       else
       Form.injector.Enabled = false
       Form.injector.Caption = "Injected"
       showMessage("Injected!")
       openProcess("Undertale.exe")
Form.CELabel1.Caption = "Injected!"
end
end

function Form_GodmodeChange(sender)
if openProcess("Undertale.exe") then
    if godmode.Checked == true then
    hp.Active = true
    godmode.Caption = " Disable godmode"
        else
    hp.Active = false
godmode.Caption = " Godmode"
   end
      else
   showMessage("Please Inject!")
 end
end



function Form_killerClick(sender)
if openProcess("Undertale.exe") then
shellExecute("data\\killUndertale.bat")
showMessage("Killed!")
else
showMessage("Please Inject.")
end
end
Form.ShowInTaskBar = "stAlways"
function Form_showemChange(sender)
if checkbox1.Checked == true then
          Otherhack.Show()
    else
  Otherhack.Hide()
end
end

function Otherhack_increaseClick(sender)
if openProcess("Undertale.exe") then
hp.Value = hp.Value + TextyBox.Text
hp.Value = hp.Value + TextyBox3.Text
else
showMessage("Please Inject.")
end
end

function Otherhack_decreaseClick(sender)
if openProcess("Undertale.exe") then
hp.Value = hp.Value - TextyBox.Text
hp.Value = hp.Value - TextyBox3.Text
else
    showMessage("Please Inject.")
end
end
function Form_CECheckbox1Change(sender)
       if openProcess("Undertale.exe") then
    if CheckyBox == true then
            g.Active = true
       else
    g.Active = false

    end
      else
    showMessage("Please Inject.")
   end
end
