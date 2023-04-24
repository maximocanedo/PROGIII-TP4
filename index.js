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
        let text = element.innerText;
        let ripple = document.createElement("span");
        ripple.classList.add("mdc-button__ripple");
        element.append(ripple);
        mdc.ripple.MDCRipple.attachTo(element);
        
    });
    window.snackbar = new mdc.snackbar.MDCSnackbar.attachTo(document.querySelector('.mdc-snackbar'));
    let input = document.querySelector('#tbMsj');
    input.addEventListener('change', () => {
        MostrarMensaje(input.value);
    });
    const drawer = mdc.drawer.MDCDrawer.attachTo(document.querySelector('.mdc-drawer'));
    const listEl = document.querySelector('.mdc-drawer .mdc-list');
    const mainContentEl = document.querySelector('.main-content');
    drawer.open = true;
    document.querySelector('.show-drawer').addEventListener('click', () => {
        drawer.open = true;
    });
    listEl.addEventListener('click', (event) => {
        drawer.open = false;
    });

    document.body.addEventListener('MDCDrawer:closed', () => {
        mainContentEl.querySelector('input, button').focus();
    });
    /**/
});