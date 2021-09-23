import Grocery from './Grocery';

const  GroceryList  = ({ groceries }) => {
  return(
  <>
    {
      groceries.map( grocery =>(
       <Grocery
        {...g}
       deletegrocery={deleteGrocery}
       updateGrocery={updateGrocery}
       />
      ))
    } 
  </>
  )
}
S
export default GroceryList;