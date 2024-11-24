sap.ui.define([
    "sap/m/MessageBox"
], function(MessageBox) {
    'use strict';

    return {
        onPress: function(oEvent) {
            MessageBox.show("This message is show using controller extension API. Where developer can add more custom logic");
        }
    };
});
