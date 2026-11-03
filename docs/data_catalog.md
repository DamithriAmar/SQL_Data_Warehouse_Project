<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Catalog for Gold Layer</title>
    <style>
        :root {
            --bg-main: #f8fafc;
            --bg-card: #ffffff;
            --sidebar-bg: #0f172a;
            --sidebar-text: #94a3b8;
            --sidebar-text-hover: #f8fafc;
            --sidebar-active: #38bdf8;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --th-bg: #f1f5f9;
            --code-color: #d63384;
            --code-bg: #f1f5f9;
            --row-alt: #f8fafc;
            --row-hover: #f0fdf4;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            color: var(--text-main);
            background-color: var(--bg-main);
            display: flex;
            min-hight: 100vh;
        }

        /* Sidebar Navigation */
        .sidebar {
            width: 260px;
            background-color: var(--sidebar-bg);
            color: var(--sidebar-text);
            padding: 24px;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            overflow-y: auto;
        }

        .sidebar h2 {
            color: #ffffff;
            font-size: 14px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 24px;
            padding-bottom: 12px;
            border-bottom: 1px solid #1e293b;
        }

        .sidebar ul {
            list-style: none;
        }

        .sidebar li {
            margin-bottom: 8px;
        }

        .sidebar a {
            color: var(--sidebar-text);
            text-decoration: none;
            font-size: 14px;
            display: block;
            padding: 8px 12px;
            border-radius: 6px;
            transition: all 0.2s ease;
        }

        .sidebar a:hover {
            color: var(--sidebar-text-hover);
            background-color: #1e293b;
        }

        .sidebar a.active {
            color: var(--sidebar-bg);
            background-color: var(--sidebar-active);
            font-weight: 600;
        }

        /* Main Content Container */
        .content {
            margin-left: 260px;
            padding: 40px 48px;
            max-width: 1200px;
            width: calc(100% - 260px);
        }

        h1 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 32px;
            color: #0f172a;
            border-bottom: 2px solid var(--border);
            padding-bottom: 16px;
        }

        /* Table Card Layout */
        .table-section {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: 8px;
            padding: 24px;
            margin-bottom: 40px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
            scroll-margin-top: 24px;
        }

        h3 {
            font-size: 18px;
            font-weight: 600;
            font-family: monospace;
            color: #0f172a;
            margin-bottom: 4px;
        }

        h5 {
            font-size: 14px;
            font-weight: 400;
            color: var(--text-muted);
            margin-bottom: 16px;
        }

        /* Data Dictionary Table Elements */
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
            margin-top: 8px;
        }

        th, td {
            border: 1px solid var(--border);
            text-align: left;
            padding: 12px 16px;
            vertical-align: top;
        }

        th {
            background-color: var(--th-bg);
            color: var(--text-main);
            font-weight: 600;
            text-transform: uppercase;
            font-size: 11px;
            letter-spacing: 0.5px;
        }

        tr:nth-child(even) {
            background-color: var(--row-alt);
        }

        tr:hover {
            background-color: var(--row-hover);
        }

        code {
            font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, Courier, monospace;
            background-color: var(--code-bg);
            padding: 2px 6px;
            border-radius: 4px;
            color: var(--code-color);
            font-size: 13px;
            font-weight: 500;
        }
    </style>
</head>
<body>

    <!-- Sidebar Navigation -->
    <nav class="sidebar">
        <h2>Tables</h2>
        <ul>
            <li><a href="#dim_customers">gold.dim_customers</a></li>
            <li><a href="#dim_products">gold.dim_products</a></li>
            <li><a href="#fact_sales">gold.fact_sales</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <main class="content">
        <h1>Data Catalog for Gold Layer</h1>

        <!-- Customers Section -->
        <section id="dim_customers" class="table-section">
            <h3>gold.dim_customers</h3>
            <h5>Represents customer data.</h5>
            <table>
                <thead>
                    <tr>
                        <th style="width: 25%;">Column Name</th>
                        <th style="width: 15%;">Data Type</th>
                        <th style="width: 60%;">Description</th>
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
        </section>

        <!-- Products Section -->
        <section id="dim_products" class="table-section">
            <h3>gold.dim_products</h3>
            <h5>Represents product data.</h5>
            <table>
                <thead>
                    <tr>
                        <th style="width: 25%;">Column Name</th>
                        <th style="width: 15%;">Data Type</th>
                        <th style="width: 60%;">Description</th>
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
