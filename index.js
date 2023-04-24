'use strict';
window.MostrarMensaje = (mensaje) => {
    window.snackbar = new mdc.snackbar.MDCSnackbar.attachTo(document.querySelector('.mdc-snackbar'));
    window.snackbar.labelText = mensaje;
    window.snackbar.open();
};
window.onload = (() => {
    // Instantiate all Textfields
    document.querySelectorAll('.mdc-text-field').forEach(element => {
        mdc.textField.MDCTextField.attachTo(element);
    });
    // MDCButton
    document.querySelectorAll('.mdc-button').forEach(element => {
        mdc.ripple.MDCRipple.attachTo(element);
    });
    window.snackbar = new mdc.snackbar.MDCSnackbar.attachTo(document.querySelector('.mdc-snackbar'));
    let input = document.querySelector('#tbMsj');
    input.addEventListener('change', () => {
        MostrarMensaje(input.value);
    });
    /**/
});