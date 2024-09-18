namespace cap.demo.bp;

//serviço externo S/4 Hana
using { API_BUSINESS_PARTNER as bupa } from '../srv/external/API_BUSINESS_PARTNER';

entity Customer as projection on bupa.A_Customer {
	Key Customer as ID,
	CustomerFullName as fullName,
	CreationDate
}

entity Supplier as projection on bupa.A_Supplier {
	Key Supplier as ID,
	SupplierFullName as fullName,
	CreationDate
}