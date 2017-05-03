# Deprecated

I don't have time to properly maintain [action-cable-react](https://github.com/schneidmaster/action-cable-react) and it may not work with the latest versions of React and/or Rails. The package also still uses mixins which are [considered harmful](https://facebook.github.io/react/blog/2016/07/13/mixins-considered-harmful.html). I recommend replacing with [react-actioncable-provider](https://github.com/cpunion/react-actioncable-provider) which offers similar functionality using a higher-order component and is up to date with the latest versions.

# ActionCable + React example client - with 100% more CoffeeScript

Example CoffeeScript client application for [action-cable-react](https://github.com/schneidmaster/action-cable-react)

## Usage

### Prerequisites

* git
* npm

### Setup

1. Clone the repository (`git clone git@github.com:schneidmaster/action-cable-react-example-coffee.git`)
2. Install dependencies: `npm install`
3. Run development server: `gulp serve` and open [http://localhost:9010](http://localhost:9010)

You will need to simultaneously set up and run the [example server app](https://github.com/schneidmaster/action-cable-react-example-server). Then, open two browser tabs to [http://localhost:9010](http://localhost:9010) and start sending messages -- both screens will be updated in realtime by ActionCable and the React binding.

## Contributing

1. Fork it ( https://schneidmaster/action-cable-react-example-coffee/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

MIT
