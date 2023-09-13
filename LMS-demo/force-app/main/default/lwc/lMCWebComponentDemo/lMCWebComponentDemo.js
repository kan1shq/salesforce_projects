import { LightningElement, wire, track } from 'lwc';
import { publish, subscribe, unsubscribe, createMessageContext, releaseMessageContext, MessageContext } from 'lightning/messageService';
import SAMPLEMC from "@salesforce/messageChannel/MyMessageChannel__c";

export default class LMCWebComponentDemo extends LightningElement {
    receivedMessage = '';
    myMessage = '';
    subscription = null;
    // context = createMessageContext();

    @wire(MessageContext)
    context;

    constructor(){
        super();
    }

    handleChange(event){
        this.myMessage = event.target.value;
    }

    publishMC(){
        const message = {
            messageToSend: this.myMessage,
            sourceSystem: "From LWC",
        };
        publish(this.context, SAMPLEMC, message);
        console.log('Published message: ', message.messageToSend);
    }

    // subscribeMC(){
    //     if(this.subscription){
    //         return;
    //     }

    //     this.subscription = subscribe(this.context, SAMPLEMC, (message) => {
    //         this.displayMessage(message);
    //     });
    // }

    // unsubscribeMC(){
    //     unsubscribe(this.subscription); 
    //     this.subscription = null;
    // }

    displayMessage(message){
        this.receivedMessage = message ? JSON.stringify(message, null, '\t'): 'no message payload';
    }

    disconnectedCallback(){
        releaseMessageContext(this.context);
    }
}