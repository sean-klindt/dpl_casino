import { Component } from "react";
import GroceryList from './components/groceries/GroceryList';
import Grocery from './components/groceries/Grocery';
import  GroceryForm from  './components/groceries/GroceryForm'

class App extends Component {
  state = {
  groceries: [ 
    { id: 1, item: "Bananas", price: 2.99, complete: false},
    { id: 2, item: "Bread", price: 2.99, complete: false},
    { id: 3, item: "Salsa", price: 3.99, complete: false},
    { id: 4, item: "Milk", price: 4.99, complete: false},
    { id: 5, item: "Cheese", price: 3.99, complete: false},
    { id: 6, item: "Tomates", price: 2.99, complete: false}, 
  ],
}

setFilter = (filter) => {
  this.setState({ filter })
}
}
const getId = () => {
  return Math.floor((1 + Math.random()) * 0x10000)
    .toString(16)
    .substring(1);
  }


const addGrocery = (incomingGrocery) => {
  const groceries = this.state
  let newGrocery = {id: this.getId(), ...incomingGrocery }
  this.setState({  groceries: [newGrocery, ...groceries]})
}

const deleteGrocery =  (id) => {
setGroceries (Groceries.filter(g =>g.id !== id))
}

 const updateGrocery = (id, incomingGrocery) => {
   const updatedGrocery = groceries.map( g => {
     if (g.id === id) {
       return incomingGrocery 
}
     return groceries
  } )
   setGroceries(updatedGroceries)
  
 

   return(
    <>
      <GroceryForm addGrocery={this.addGrocery} />
      <GroceryList 
      groceries={groceries}
     deleteGrocery={deleteGrocery}
      updateGrocery={updateGrocery}
    />
  </>
  )
}

export default App;
