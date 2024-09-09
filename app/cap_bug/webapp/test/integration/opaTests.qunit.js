sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capbug/test/integration/FirstJourney',
		'capbug/test/integration/pages/DocumentList',
		'capbug/test/integration/pages/DocumentObjectPage',
		'capbug/test/integration/pages/DocumentItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, DocumentList, DocumentObjectPage, DocumentItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capbug') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDocumentList: DocumentList,
					onTheDocumentObjectPage: DocumentObjectPage,
					onTheDocumentItemsObjectPage: DocumentItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);