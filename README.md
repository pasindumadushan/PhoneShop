# Introduction

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

Simply this system is related to mobile phone web site. Through this system, customer can easily find out the mobile phones as their preferences and they can online order the mobile phone that they like. 

# Purpose
The purpose of the system is to make a easy way to pass information to the customer who are interested about mobile phones and give fully detailed description to the customer about mobile phones that they like.

#Scope
Primarily, the scope pertains to the E-Store product features for making Mobile Phone project live.  It focuses on the company, the stakeholders and applications, which allow for online sales, distribution and marketing of Mobile Phones.

In here we want to show all the details about mobile phones, such as price, battery capacity, camera, screen size like that. They can search with their keywords and can easily access to the finalize searched details. After getting this list they can see the price and the all related details that are useful to selecting phones. And also further looking back they can add their favorite phones to the cart .In here customer have to create a account & customer have to sign in.
After sign in they can easily add their favorite items to the cart. As well as the web site have the facility to online order. If the customer want to ship it, customer can provide his/her address and pay via credit or debit card. The system have feedback facility also. From this customer able to rate the system and products.

# Specific Requirements 
## Functionality
This subsection contains the requirements for the e-store. These requirements are organized by the features discussed in the vision document. Features from vision documents are then refined into use case diagrams and to sequence diagram to best capture the functional requirements of the system. All these functional requirements can be traced using tractability matrix. 

	Sell Configured to Ordered Products
The system shall display all the products that can be configured.
The system shall allow user to select the product to configure
The system shall display all the available components of the product to configure
The system shall enable user to add one or more component to the configuration.
The system shall notify the user about any conflict in the current configuration.
The system shall allow user to update the configuration to resolve conflict in the current configuration.
The system shall allow user to confirm the completion of current configuration

	Provide comprehensive product details

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall display detailed information of the selected mobile phone.
 The system shall provide browsing options to see product details.

	Detailed product sorting
The system shall display detailed product sorting using acending and descending name,price,and rating of mobile phones.

	Provide Search facility.

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall enable user to enter the search text on the screen.
The system shall enable user to select multiple options on the screen to search.
The system shall display all the matching products based on the search
The system shall enable user to navigate between the search results.
The system shall notify the user when no matching product is found on the search.

	Maintain customer profile

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall allow user to create profile and set his credential.
The system shall authenticate user credentials to view the profile.
The system shall allow user to update the profile information.
The system shall have default admin.
The system shall allow default admin to add more admins.
The system shall allow to delete admins, users, phones.

	Provide personalized profile

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall display both the active and completed order history in the customer profile.
The system shall allow user to select the orders, delete  from the order history.
The system shall display the detailed information about the selected order.
The system shall purchase the orders

	Provide Customer Support
The system shall allow user to select the support type he wants.
The system shall display the customer support contact numbers on the screen.
The system shall allow user to enter the contact number for support personnel to call.

	Email confirmation
The system shall maintain customer email information as a required part of customer profile.
The system shall send an order confirmation to the user through email.

	Detailed invoice for customer
The system shall display detailed invoice for current order once it is confirmed.
The system shall optionally allow user to print the invoice.

	Provide shopping cart facility

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall provide shopping cart during online purchase.
The system shall allow user to add/remove products in the shopping cart.

	Provide multiple shipping methods
The system shall display different shipping options provided by shipping department.
The system shall enable user to select the shipping method during payment process.
The system shall display the shipping charges.
The system shall display tentative duration for shipping.

	Online tracking of shipments

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall allow user to enter the order information for tracking.
The system shall display the current tracking information about the order.

	Allow multiple payment methods
The system shall display available payment methods for payment.
The system shall allow user to select the payment method for order.

	Allow online change or cancellation of order.
The system shall display the orders that are eligible to change.
The system shall allow user to select the order to be changed.
The system shall allow user to cancel the order
The system shall allow user to change shipping, payment method.
The system shall notify the user about any changes made to the order.

	Allow Online Mobile phone reviews and ratings

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

The system shall display the reviews and ratings of each product, when it is selected.
The system shall enable the user to enter their reviews and ratings.

	Offer financing options
The system shall display all the available financing options.
The system shall allow user to select the financing option.
The system shall notify the use about the financing request.

	Offer online promotions and rewards
The system shall display all the available promotions to the user.
The system shall allow user to select available promotion.

	Online Purchase of products
The system shall allow user to confirm the purchase.
The system shall enable user to enter the payment information.

# Usability
## Graphical User Interface
The system shall provide a uniform look and feel between all the web pages.
The system shall provide a digital image for each Mobile Phone in the Mobile catalog.
The system shall provide use of icons and toolbars.


# Reliability & Availability 
## Back-end Internal Computers            
The system shall provide storage of all databases on redundant computers with automatic switchover.
The system shall provide for replication of databases to off-site storage locations.
## Performance
The product shall be based on web and has to be run from a web server.
The product shall take initial load time depending on internet connection strength which also depends on the media from which the product is run.
The performance shall depend upon hardware components of the client/customer. 


# Security
## Data Transfer
The system shall use secure sockets in all transactions that include any confidential customer information.
The system shall automatically log out all customers after a period of inactivity.
The system shall confirm all transactions with the customer’s web browser.
The system shall not leave any cookies on the customer’s computer containing the user’s password.
The system shall not leave any cookies on the customer’s computer containing any of the user’s confidential information.

# Data Storage
The customer’s web browser shall never display a customer’s password.  It shall always be echoed with special characters representing typed characters.
The customer’s web browser shall never display a customer’s credit card number after retrieving from the database.  It shall always be shown with just the last 4 digits of the credit card number.
The system’s back-end servers shall never display a customer’s password.  The customer’s password may be reset but never shown.
The system’s back-end servers shall only be accessible to authenticated administrators.
The system’s back-end databases shall be encrypted.

# Design Constraints
## Standard Development Tools
The system shall be built using a standard web page development tool that conforms to either IBM’s CUA standards or Microsoft’s GUI standards.

## Web Based Product
 There are no memory requirements 
The computers must be equipped with web browsers such as Internet explorer. 
The product must be stored in such a way that allows the client easy access to it. 
Response time for loading the product should take no longer than five minutes. 
A general knowledge of basic computer skills is required to use the product 

# Functional Requirements 
•	Search -  User can seeking details about phones.
•	Add Cart – To further looking back customer can add mobile phones to cart that  named by user
•	Rating - From this customer able to rate the system and products.
•	Add user
•	Delete user

# Non Functional Requirements
•	Performance requirements – the system shall process features at a reasonable speed.So that the user can browsing in the fast.
•	Password Encrypted
•	Interface requirements
•	User Friendly

# Enhanced Entity Relationship Diagram 

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)
