
<h1>Data Catalog for Gold Layer</h1>

<h3>gold.dim_customers</h3>
<h5>Represents customer data.</h5>

    <table>
        <thead>
            <tr>
                <th>Column Name</th>
                <th>Data Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>customer_key</code></td>
                <td>INT</td>
                <td>Surrogate key uniquely identifying each customer record in the dimension table.</td>
            </tr>
            <tr>
                <td><code>customer_id</code></td>
                <td>INT</td>
                <td>Unique numerical identifier assigned to each customer.</td>
            </tr>
            <tr>
                <td><code>customer_number</code></td>
                <td>NVARCHAR(50)</td>
                <td>Alphanumeric identifier representing the customer, used for tracking and referencing.</td>
            </tr>
            <tr>
                <td><code>first_name</code></td>
                <td>NVARCHAR(50)</td>
                <td>The customer's first name, as recorded in the system.</td>
            </tr>
            <tr>
                <td><code>last_name</code></td>
                <td>NVARCHAR(50)</td>
                <td>The customer's last name or family name.</td>
            </tr>
            <tr>
                <td><code>country</code></td>
                <td>NVARCHAR(50)</td>
                <td>The country of residence for the customer (e.g., 'Australia').</td>
            </tr>
            <tr>
                <td><code>marital_status</code></td>
                <td>NVARCHAR(50)</td>
                <td>The marital status of the customer (e.g., 'Married', 'Single').</td>
            </tr>
            <tr>
                <td><code>gender</code></td>
                <td>NVARCHAR(50)</td>
                <td>The gender of the customer (e.g., 'Male', 'Female', 'n/a').</td>
            </tr>
            <tr>
                <td><code>birthdate</code></td>
                <td>DATE</td>
                <td>The date of birth of the customer, formatted as YYYY-MM-DD (e.g., 1971-10-06).</td>
            </tr>
            <tr>
                <td><code>create_date</code></td>
                <td>DATE</td>
                <td>The date and time when the customer record was created in the system.</td>
            </tr>
        </tbody>
    </table>

<h3>gold.dim_products</h3>
<h5>Represents product data.</h5>

<table>
        <thead>
            <tr>
                <th>Column Name</th>
                <th>Data Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>product_key</code></td>
                <td>INT</td>
                <td>Surrogate key uniquely identifying each product record in the product dimension table.</td>
            </tr>
            <tr>
                <td><code>product_id</code></td>
                <td>INT</td>
                <td>A unique identifier assigned to the product for internal tracking and referencing.</td>
            </tr>
            <tr>
                <td><code>product_number</code></td>
                <td>NVARCHAR(50)</td>
                <td>A structured alphanumeric code representing the product, often used for categorization or inventory.</td>
            </tr>
            <tr>
                <td><code>product_name</code></td>
                <td>NVARCHAR(50)</td>
                <td>Descriptive name of the product, including key details such as type, color, and size.</td>
            </tr>
            <tr>
                <td><code>category_id</code></td>
                <td>NVARCHAR(50)</td>
                <td>A unique identifier for the product's category, linking to its high-level classification.</td>
            </tr>
            <tr>
                <td><code>category</code></td>
                <td>NVARCHAR(50)</td>
                <td>The broader classification of the product (e.g., Bikes, Components) to group related items.</td>
            </tr>
            <tr>
                <td><code>subcategory</code></td>
                <td>NVARCHAR(50)</td>
                <td>A more detailed classification of the product within the category, such as product type.</td>
            </tr>
            <tr>
                <td><code>maintenance</code></td>
                <td>NVARCHAR(50)</td>
                <td>Indicates whether the product requires maintenance (e.g., 'Yes', 'No').</td>
            </tr>
            <tr>
                <td><code>cost</code></td>
                <td>INT</td>
                <td>The cost or base price of the product, measured in monetary units.</td>
            </tr>
            <tr>
                <td><code>product_line</code></td>
                <td>NVARCHAR(50)</td>
                <td>The specific product line or series to which the product belongs (e.g., Road, Mountain).</td>
            </tr>
            <tr>
                <td><code>start_date</code></td>
                <td>DATE</td>
                <td>The date when the product became available for sale or use, stored in the system.</td>
            </tr>
        </tbody>
    </table>

<h3>gold.fact_sales</h3>
<h5>Represents sales data.

 <table>
        <thead>
            <tr>
                <th>Column Name</th>
                <th>Data Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>order_number</code></td>
                <td>NVARCHAR(50)</td>
                <td>A unique alphanumeric identifier for each sales order (e.g., 'SO54496').</td>
            </tr>
            <tr>
                <td><code>product_key</code></td>
                <td>INT</td>
                <td>Surrogate key linking the order to the product dimension table.</td>
            </tr>
            <tr>
                <td><code>customer_key</code></td>
                <td>INT</td>
                <td>Surrogate key linking the order to the customer dimension table.</td>
            </tr>
            <tr>
                <td><code>order_date</code></td>
                <td>DATE</td>
                <td>The date when the order was placed.</td>
            </tr>
            <tr>
                <td><code>shipping_date</code></td>
                <td>DATE</td>
                <td>The date when the order was shipped to the customer.</td>
            </tr>
            <tr>
                <td><code>due_date</code></td>
                <td>DATE</td>
                <td>The date when the order payment was due.</td>
            </tr>
            <tr>
                <td><code>sales_amount</code></td>
                <td>INT</td>
                <td>The total monetary value of the sale for the line item, in whole currency units (e.g., 25).</td>
            </tr>
            <tr>
                <td><code>quantity</code></td>
                <td>INT</td>
                <td>The number of units of the product ordered for the line item (e.g., 1).</td>
            </tr>
            <tr>
                <td><code>price</code></td>
                <td>INT</td>
                <td>The price per unit of the product for the line item, in whole currency units (e.g., 25).</td>
            </tr>
        </tbody>
    </table>   
