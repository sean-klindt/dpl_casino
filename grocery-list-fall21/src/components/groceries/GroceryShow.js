import React from 'react';

const GroceryShow =({  id, item, price, }) => (
  <Grid.column>
  <Card>
  <Card.Content header={item} />
  <Card.Content>
  {price}
  </Card.Content>
   <Card.Content extra>
     {id}
    </Card.Content>
  </Card>
  </Grid.column>
)
export defualt GroceryShow;