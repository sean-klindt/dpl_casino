const Grocery  = ({id, item, complete }) => {

  return(
    <>
      <h1 style={ complete ? {...styles.complete} : {} }>
      {item}
      </h1>
    </>
  )
}
const styles = {
  complete: {
    color: "grey",
    textDecoration: 'line-through',
  }
}
export default Grocery;