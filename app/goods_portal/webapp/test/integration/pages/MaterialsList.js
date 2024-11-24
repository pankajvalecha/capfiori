sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'sap.poc.fe.goodsportal',
            componentId: 'MaterialsList',
            contextPath: '/Materials'
        },
        CustomPageDefinitions
    );
});