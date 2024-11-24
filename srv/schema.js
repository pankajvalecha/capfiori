module.exports = (srv) => {
  
    // Reduce stock of ordered books
    srv.on ('addStockQuantity', async (req) => {
      if(req.data.quantity){
        const [record] = await SELECT(req.subject);
        const stock = record.stock + req.data.quantity;
        
        await UPDATE(req.subject)
        .with({stock: stock});
        
      } else {0
        req.reject (400, `Please enter a valid quantity`)
      }
    })
  
    // Add some discount for overstocked books
    srv.on ('removeStockQuantity',  async (req) => {
      const [record] = await SELECT(req.subject);
      if(req.data.quantity < record.stock){
       
        const stock = record.stock - parseFloat(req.data.quantity);
        
        await UPDATE(req.subject)
        .with({stock: stock});
        
      } else {0
        req.reject (400, `Please enter a valid quantity`)
      }
    })
  
  }