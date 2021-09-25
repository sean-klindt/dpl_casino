import React, { Component } from 'react';

class GroceryForm extends Component {
  state = { item: '', price:  '' }

  handleChange = (e) => {
    const { name, value } = e.target
    this.setState({ [name]: value })
    // this.setState({ name: 'bbq' })
    // this.setState({ address: '345 street' })
    // this.setState({ hours: '24/7' })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    // add the object to the array
    this.props.addDGrocery(this.state)
    // clear out the form
    this.setState({ name: '', address: '', hours: '' })
  }

  render() {
    const { item, price, } = this.state
    return(
      <form onSubmit={this.handleSubmit}>
        <input
          name='item'
          value={item}
          onChange={this.handleChange}

          label='item'
          required
        />
                <button type="Submit">Submit</button>

        <input
          name='price'
          value={price}
          onChange={this.handleChange}
          label='price'
          required
        />
        <button type="Edit">Edit</button>
        <button type="delete">Delete</button>
      </form>
    )
  }
}

export default GroceryForm;