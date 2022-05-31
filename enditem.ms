endItem: function(item) {
            var endId = item.id
            let text = "Confirm To Change Task #" + endId +" to Done?"
            var indexNumber = JSON.parse(localStorage.getItem(storageKey))
                            .findIndex(item => item.id == endId)
            
            var today = new Date().toLocaleString('en-GB', {hour12: false});

            if(confirm(text) == true){
                this.items.push(
                    {
                        id: item.id,
                        message: item.message,
                        status: 3,
                        startTime: item.startTime,
                        endTime: today,
                        PIC: item.PIC,
                    }
                );

                this.items.splice(indexNumber, 1);
                this.localData()   
                text = "End Successfull";  
            }               

        },
