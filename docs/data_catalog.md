<h1>Data Catalog for Gold Layer</h1>

<h3>gold.dim_customers</h3>
<h5>Represents customer data.</h5>

customer_key       INT               Surrogate key uniquely identifying each customer record in the dimension table. </br>              
customer_id        INT               Unique numerical identifier assigned to each customer.                                </br>         
customer_number    NVARCHAR(50)      Alphanumeric identifier representing the customer, used for tracking and referencing.       </br>   
first_name         NVARCHAR(50)      The customer's first name, as recorded in the system.                                         </br> 
last_name          NVARCHAR(50)      The customer's last name or family name.                                                     </br> 
country            NVARCHAR(50)      The country of residence for the customer (e.g., 'Australia').                               </br> 
marital_status     NVARCHAR(50)      The marital status of the customer (e.g., 'Married', 'Single').                              </br> 
gender             NVARCHAR(50)      The gender of the customer (e.g., 'Male', 'Female', 'n/a').                                  </br> 
birthdate          DATE              The date of birth of the customer, formatted as YYYY-MM-DD (e.g., 1971-10-06).               </br> 
create_date        DATE              The date and time when the customer record was created in the system</br> 

<h3>gold.dim_products</h3>
<h5>Represents product data.</h5>

product_key        INT               Surrogate key uniquely identifying each product record in the product dimension table.        </br> 
product_id         INT               A unique identifier assigned to the product for internal tracking and referencing.            </br> 
product_number     NVARCHAR(50)      A structured alphanumeric code representing the product, often used for categorization or inventory. </br> 
product_name       NVARCHAR(50)      Descriptive name of the product, including key details such as type, color, and size.         </br> 
category_id        NVARCHAR(50)      A unique identifier for the product's category, linking to its high-level classification.     </br> 
category           NVARCHAR(50)      The broader classification of the product (e.g., Bikes, Components) to group related items.  </br> 
subcategory        NVARCHAR(50)      A more detailed classification of the product within the category, such as product type.      </br> 
maintenance        NVARCHAR(50)      Indicates whether the product requires maintenance (e.g., 'Yes', 'No').                       </br> 
cost               INT               The cost or base price of the product, measured in monetary units.                            </br> 
product_line       NVARCHAR(50)      The specific product line or series to which the product belongs (e.g., Road, Mountain).      </br> 
start_date         DATE              The date when the product became available for sale or use, stored in</br> 

<h3>gold.fact_sales</h3>
<h5>Represents sales data.

order_number      NVARCHAR(50)        A unique alphanumeric identifier for each sales order (e.g., 'SO54496').                      </br> 
product_key       INT                 Surrogate key linking the order to the product dimension table.                               </br> 
customer_key      INT                 Surrogate key linking the order to the customer dimension table.                              </br> 
order_date        DATE                The date when the order was placed.                                                           </br> 
shipping_date     DATE                The date when the order was shipped to the customer.                                          </br> 
due_date          DATE                The date when the order payment was due.                                                      </br> 
sales_amount      INT                 The total monetary value of the sale for the line item, in whole currency units (e.g., 25).   </br> 
quantity          INT                 The number of units of the product ordered for the line item (e.g., 1).                       </br>
price             INT                 The price per unit of the product for the line item, in whole currency units (e.g., 25).      </br> 
