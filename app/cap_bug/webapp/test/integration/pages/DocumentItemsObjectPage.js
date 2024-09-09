sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'capbug',
            componentId: 'DocumentItemsObjectPage',
            contextPath: '/Document/_Item'
        },
        CustomPageDefinitions
    );
});