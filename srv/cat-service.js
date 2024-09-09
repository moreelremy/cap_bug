const cds = require('@sap/cds')

module.exports = cds.service.impl(async function () {

    const billingApi = await cds.connect.to("sap_s4_CE_BILLINGDOCUMENT_0001_v1");

    this.on('READ', 'Document', async req => {
        return await billingApi.run(req.query);
    });

    this.on('READ', 'DocumentItems', async req => {
        return await billingApi.run(req.query);
    });
})