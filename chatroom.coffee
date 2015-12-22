CableMixin = require('action-cable-react').CableMixin
ChannelMixin = require('action-cable-react').ChannelMixin
React = require('react')

module.exports = React.createClass
  mixins: [CableMixin(React), ChannelMixin('ChatChannel')]

  getInitialState: ->
    {
      messages: []
    }

  handleConnected: ->
    console.log('Connected!')

  handleDisconnected: ->
    console.log('Disconnected!')

  handleNewMessage: (data) ->
    console.log "New message: #{data.message}"
    @setState(messages: @state.messages.concat(data))

  handleSend: ->
    @perform('ChatChannel', 'newMessage', timestamp: Date.now(), message: document.getElementById('message').value)
    document.getElementById('message').value = ''

  render: ->
    <div>
      <div>
        {for message in @state.messages
          <div key={message.timestamp}>{message.message}</div>
        }
      </div>
      <input id={'message'} />
      <button onClick={@handleSend}>Send</button>
    </div>
