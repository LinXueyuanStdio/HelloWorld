import React, { Component } from 'react';

class HelloWorld extends Component {
  constructor(props) {
    super(props);

    this.state = {
      helloworld: 0,
    };

    this.timer = this.timer.bind(this);
  }

  componentDidMount() {
    const helloWorldId = setInterval(this.timer, 10);
    this.setState({ helloWorldInterval: helloWorldId });
  }

  componentWillUnmount() {
    clearInterval(this.state.helloWorldInterval);
  }

  timer() {
    this.setState({ helloworld: this.state.helloworld + 1 });
  }

  render() {
    const helloworld = Array(this.state.helloworld).fill(<p>HelloWorld</p>);
    return helloworld;
  }
}

export default HelloWorld;