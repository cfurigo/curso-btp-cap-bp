const cds = require('@sap/cds');
/**
* Implementacao do servico definido em /service.cds
*/
module.exports = cds.service.impl(async function() {
	
	const bupa = await cds.connect.to('API_BUSINESS_PARTNER');
	
	const {Customer, Supplier} = this.entities;

	this.on('READ', [Customer, Supplier], async req => {
		return bupa.run(req.query);
	});
});