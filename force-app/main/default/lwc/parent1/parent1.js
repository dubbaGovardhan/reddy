import { LightningElement , api, wire } from 'lwc';
import { getRecord, getFieldValue } from "lightning/uiRecordApi";

//2. Import reference to the object and the fields
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";

import { CloseActionScreenEvent } from 'lightning/actions';

const fields = [NAME_FIELD];

export default class Parent1 extends LightningElement {
    @api recordId;
  
   
  
    //3. Wire the output of the out of the box method getRecord to the property account
    @wire(getRecord, {
      recordId: "$recordId",
      fields
    })
    account;
    //4. Fetch the field values from the record
    get name() {
      return getFieldValue(this.account.data, NAME_FIELD);
    }
  
    get rating() {
      return getFieldValue(this.account.data, RATING_FIELD);
    }
  
    get industry() {
      return getFieldValue(this.account.data, INDUSTRY_FIELD);
    }
}