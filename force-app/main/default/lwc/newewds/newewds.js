import { LightningElement,api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import ACC_PHONE from '@salesforce/schema/Account.Phone';
import ACC_NUMBER from '@salesforce/schema/Account.AccountNumber';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { CloseActionScreenEvent } from 'lightning/actions';
export default class Newewds extends LightningElement {
     //@api recordId='0012w00001GgG12AAF';
    @api objectApiName='Account';
    fields = [NAME_FIELD, ACC_PHONE, ACC_NUMBER];
    handleSuccess(event){
        //console.log('Account detail : ',event.detail.fields);
        //console.log('Account name : ',event.detail.fields.Name);
        this.dispatchEvent(new CloseActionScreenEvent());
        const event1 = new ShowToastEvent({
            title: 'Account Record Inserted From LWC Comp',
            message:'Record Successfully Created'+event.detail.Id,
            variant:'success'
        });
        this.dispatchEvent(event1); 
    }

}