import { LightningElement, wire } from 'lwc';
import { subscribe, createMessageContext, releaseMessageContext, MessageContext } from 'lightning/messageService';
import SAMPLEMC from '@salesforce/messageChannel/MyMessageChannel__c'

export default class LMCWebComponentSub extends LightningElement {
    receivedMessage;
    myMessage;
    // messageToShow='';
    subscription;
    // context = createMessageContext();

    @wire(MessageContext)
    context;


    connectedCallback(){
        this.subscribeToMessageChannel();
    }

    subscribeToMessageChannel(){
        if(!this.subscription){
            this.subscription = subscribe(
                this.context,
                SAMPLEMC,
                (message) => this.handleMessage(message),
            );
        }
    }

    handleMessage(message){
        // alert('message: ' + JSON.stringify(message));
        // this.receivedMessage = message;
        if(message.messageToSend){
            this.receivedMessage = message.messageToSend;
            console.log('System Source: ', message.sourceSystem);
        }
    }

    disconnectedCallback(){
        if(this.subscription){
            this.subscription.unsubscribe();
            this.subscription = null;
        }
    }
}