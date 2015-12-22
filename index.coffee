ActionCable = require('action-cable-react').ActionCable
Cable = require('action-cable-react').Cable
ReactDOM = require('react-dom')
React = require('react')
Chatroom = require('./chatroom')

actionCable = ActionCable.createConsumer('ws://localhost:3000/cable')

cable = new Cable(
  ChatChannel: actionCable.subscriptions.create(channel: 'ChatChannel', room: 'example_room', ['newMessage'])
)

ReactDOM.render(<Chatroom cable={cable} />, document.getElementById('app'))
