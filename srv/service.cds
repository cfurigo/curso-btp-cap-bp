using { cap.demo.bp as bp } from '../db/schemas';

@path: 'service/bp'
service BusinessPartnerService {
	// BusinessPartner 
	@readonly 
	@cds.persistence:{table,skip:false}
	entity Customer as projection on bp.Customer;

	@readonly 
	@cds.persistence:{table,skip:false}
	entity Supplier as projection on bp.Supplier;
}
annotate BusinessPartnerService with @(requires: 'odatauser');