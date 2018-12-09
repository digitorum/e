storageNode = 'notesList'

class Store
  
  constructor: () -> 
    this.state = this.read()

  write: () ->
    localStorage?.setItem(storageNode, JSON.stringify(this.state));

  read: () ->
    def =
      notesList: []
    this.state = JSON.parse(localStorage?.getItem(storageNode) or 'null') or def

  addNote: (date, text) ->
    note = (
      date: date
      text: text
    )
    this.state.notesList.push note
    this.write()
    

export default new Store