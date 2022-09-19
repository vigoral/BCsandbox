
function OnOpenPage() {
    var snd = new Audio('https://www.freesoundslibrary.com/wp-content/uploads/2022/09/ringing-small-bell-sound-effect.mp3');
    snd.play();
}

function OnAfterModifyName() {
    var snd = new Audio('https://www.freesoundslibrary.com/wp-content/uploads/2022/09/bell-melodic-sound-effect.mp3');
    snd.play();
}

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddInReady');