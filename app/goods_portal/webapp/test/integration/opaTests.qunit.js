sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/poc/fe/goodsportal/test/integration/FirstJourney',
		'sap/poc/fe/goodsportal/test/integration/pages/MaterialsList',
		'sap/poc/fe/goodsportal/test/integration/pages/MaterialsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaterialsList, MaterialsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/poc/fe/goodsportal') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaterialsList: MaterialsList,
					onTheMaterialsObjectPage: MaterialsObjectPage
                }
            },
            opaJourney.run
        );
    }
);