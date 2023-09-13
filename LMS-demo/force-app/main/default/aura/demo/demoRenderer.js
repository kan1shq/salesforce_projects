({
	// Your renderer method overrides go here
    render:function(hpr, evt){
        var r = this.superRender();
        alert('From Render Method-->');
        return r;
    },
    afterRender:function(hpr, evt){
        this.superAfterRender();
        alert('From AfterRender Method-->');
    },
    rerender:function(hpr, evt){
        this.superRerender();
        alert('From Rerender Method-->');
    },
    unrender:function(hpr, evt){
        this.superUnrender();
        alert('From Unrender Method-->');
    }
})