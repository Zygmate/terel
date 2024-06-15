export function toCapitalize(inputString = "") {
    if ((typeof inputString) === "string") return inputString.charAt(0).toUpperCase() + inputString.slice(1)
    if (Array.isArray(inputString)){
        return inputString.map((el) => el.charAt(0).toUpperCase() + el.slice(1)).join(" ")
    } 
}
export class LinkedList{
    constructor(){
        this.length = 0
        this.head = null
        this.tail = null
    }
    isEmpty(){
        if (this.head == null || this.length == 0) return true
        return false
    }
    appendItem(val){
        let temp = new ListNode(val);
        try{
            if(this.isEmpty()){
                this.head = temp
                this.tail = temp
            }
            else{
                this.tail.next = temp
                temp.prev = this.tail;
                this.tail = temp
            }
            this.length ++
        }
        catch(e){
            console.error("Unable to append item to LinkedList", e)
        }

    }
    display(){
        if (!this.isEmpty()){
            let curr = this.head;
            while (curr !== null){
                console.log(curr.data)

                curr = curr.next
            }
        }
    }
    //TODO: define output string
    printString(){
        if (!this.isEmpty()){
            let res = ""
            let curr = this.head;
            while (curr !== null){
                res += "{" + curr.data.id + "," + curr.data.value + "}"

                curr = curr.next
            }
            return res
        }
    }
    prependItem(val){
        let temp = new ListNode(val);
        try{
            if(this.isEmpty()){
                this.head = temp
                this.tail = temp
            }
            else{
                temp.next = this.head
                this.head.prev = temp
                this.head = temp
            }
            this.length ++
        }
        catch(e){
            console.error("Unable to prepend item to LinkedList", e)
        }
    }
    insertAt(val, pos){
        if (pos > this.length -1) return console.error("Incorrect position! Index does not exist!")
        if (pos == 0) return this.prependItem(val)
        let curr = this.head
        while (pos > 1){
            pos -= 1

            curr = curr.next;
        }
        let temp = new ListNode(val)

        temp.next = curr.next
        temp.prev = curr
        curr.next.prev = temp
        curr.next = temp

        this.length ++
    }
    emptyList(){
        this.head = null
        this.tail = null
        this.length = 0
    }

    deleteFirstNode(){
        if (this.isEmpty()){
            return console.log("List is Empty!")
        }
        let curr = this.head
        this.head = this.head.next
        this.head.prev = null
        let delValue = curr.data
        curr = null

        this.length --
        console.log("Removed element: ", delValue)
    }
    deleteLastNode(){
        if (this.isEmpty()){
            return console.log("List is Empty!")
        }

        let curr = this.tail
        this.tail = this.tail.prev
        this.tail.next = null

        let delValue = curr.data
        curr = null

        this.length --
        console.log("Removed element: ", delValue)

    }
    deleteAtPos(pos){
        if (this.isEmpty()){
            return console.log("List is Empty!")
        }
        if (pos > this.length -1) return console.log("Incorrect Position! Index does not exist."); 
        if (pos == 0) return this.deleteFirstNode()
        if (pos == this.length -1) return this.deleteLastNode()
        if(pos == this.length - 1) return this.deleteLastNode()

        let curr = this.head
        while (pos > 0){
            pos -= 1
            curr = curr.next;
        }

        let previous = curr.prev
        let next = curr.next

        previous.next = next
        next.previous = previous

        let delValue = curr.data
        curr = null

        this.length --
        console.log("Removed element: ", delValue)
    }
    deleteById(id, reverse = false){
        if (this.isEmpty()){
            return console.log("List is Empty!")
        }
        try{
            if (!reverse) {
                if (this.head.data.id == id) return this.deleteFirstNode()

                let curr = this.head
                while (curr && curr.data.id !== id){
                    curr = curr.next
                    if (curr == null){
                        throw new ReferenceError("Incorrect Value! Elements does not exist.")
                    }
                }
                if (this.tail.data.id == id) return this.deleteLastNode()

                let previous = curr.prev
                let next = curr.next

                previous.next = next
                next.previous = previous
                let delValue = curr.data
                curr = null

                this.length --
                console.log("Removed element: ", delValue.id)

            }
            else{
                if (this.tail.data.id == id) return this.deleteLastNode()
                let curr = this.tail
                while (curr && curr.data.id !== id){
                    curr = curr.prev
                    if (curr == null){
                        throw new ReferenceError("Incorrect Value! Elements does not exist.")
                    }
                }
                if (this.head.data.id == id) return this.deleteFirstNode()

                let previous = curr.prev
                let next = curr.next

                previous.next = next
                next.previous = previous
                let delValue = curr.data
                curr = null

                this.length --
                console.log("Removed element: ", delValue.id)

            }
        }
        catch(e){
            console.error(e)
        }


    }
}
class ListNode{
    constructor(val){
        this.next = null
        this.prev = null
        this.data = val
    }
}
