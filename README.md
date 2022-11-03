# Data-Analysis-Portofolio by Evangelos Karamanos

# LinkedIn Profile : https://www.linkedin.com/in/vageliskaramanos/

<h1>Tableau Projects</h1>

<h2>Link to Tableau Public profile: https://public.tableau.com/app/profile/.45738430 </h2>

I have Tableau Public, so my dashboard space is limited and the graphs are not that clear.


<h4>Portofolio Project #1 Dashboard</h4>


![tableau #1](https://user-images.githubusercontent.com/39276340/199851044-3ae81af0-d54d-402e-b3ff-04a6c2cfc819.png)


<h4>Portofolio Project #2 Dashboard</h4>


![tableau#2](https://user-images.githubusercontent.com/39276340/199851099-34f48525-683a-43cd-9c84-f4d502d246ac.png)


<h4>Portofolio Project #3 Dashboard</h4>


![tableau3](https://user-images.githubusercontent.com/39276340/199851209-32623c2b-2008-4031-b9df-77e7f97da599.png)


<h4>Portofolio Project #4 Dashboard</h4>


![tableau#4](https://user-images.githubusercontent.com/39276340/199851227-127c9f22-17de-4ee7-b219-cade6d3f87a4.png)


<h4>Portofolio Project #5 Dashboard</h4>


![tableau#5](https://user-images.githubusercontent.com/39276340/199851245-d34d69d5-2563-4283-8c21-82ff10022105.png)


<h4>Portofolio Project #6 Dashboard</h4>


![tableau#6](https://user-images.githubusercontent.com/39276340/199851261-cc9dc660-30d1-4797-860e-87f060717b35.png)



<h1>PowerBI Projects</h1>


<h4>PowerBi Project #1 Report</h4>


Connecting & Shaping Data

•	Κάνουμε import το csv αρχείο MavenMarket_Customers. 

•	Έλεγχω αν η πρώτη σειρά του csv αρχείου είναι header στα δεδομένα και παρατηρώ πως έγινε header αυτόματα. 

•	Μετονομάζω τον πίνακα σε Customers.

 

•	Ελέγχω να δω αν οι στήλες έχουν τα σωστά Data types. Αλλάζω την στήλη “customer_acct_num” και την στήλη “customer_postal_code” σε “text”.

 

•	Προσθέτω νέα στήλη “full_name” κάνοντας merge τις στήλες “first_name” και “last_name”, διαχωρίζοντας τες με ένα κενό “ ”.

 

•	Προσθέτω νέα στήλη “birth_year” κάνοντας extract το έτος από τη στήλη “birth_date” και το μετατρέπω σε “text”.


 



•	Προσθέτω νέα στήλη “has_children”, δημιουργώντας conditional column με βάση το αν η στήλη “total_children” έχει το 0 ή όχι. Το “has_children” έχει “Y”, αν έχει η στήλη “total_children” έχει μεγαλύτερο αριθμό του 0, αλλιώς δείχνει “N”.


 


•	Κάνουμε Close & Apply για τον πίνακα Customers.

•	Κάνουμε import το csv αρχείο MavenMarket_Products. 

•	Έλεγχω αν η πρώτη σειρά του csv αρχείου είναι header στα δεδομένα και παρατηρώ πως έγινε header αυτόματα. 

•	Μετονομάζω τον πίνακα σε Products.

•	Ελέγχω να δω αν οι στήλες έχουν τα σωστά Data types. Αλλάζω την στήλη “product_sku” σε “text” και την στήλη “product_retail_price” και “product_cost” σε “Decimal Number”.

•	Χρησιμοποιώ το εργαλείο “statistics” για να βρω τις ξεχωριστές (distinct) τιμές της στήλης “product_brand” και “product_name”.


product_brand distinct values

 

product_name distinct values

 

•	Προσθέτω τη στήλη “discount_price” πολλαπλασιάζοντας τη στήλη “product_retail_price” * 0,9.



 

•	Υπολογίζω το μέσο retail price ανά brand, χρησιμοποιώντας το εργαλείο Group By και δημιουργώ μια νέα στήλη “AVG Retail Price”.

 


•	Παρατηρώ ότι οι στήλες “recyclable” και “low_fat” έχουν πολλές null τιμές, τις οποίες θα αντικαταστατήσω με 0.

Πριν την αντικατάσταση

 

Μετά την αντικατάσταση

 


•	Κάνουμε Close & Apply για τον πίνακα Products.

•	Κάνουμε import το csv αρχείο MavenMarket_Stores. 

•	Έλεγχω αν η πρώτη σειρά του csv αρχείου είναι header στα δεδομένα και παρατηρώ πως έγινε header αυτόματα. 

•	Μετονομάζω τον πίνακα σε Stores.

•	Ελέγχω να δω αν οι στήλες έχουν τα σωστά Data types και δεν φαίνεται να υπάρχει κάποιο λάθος.

•	Δημιουργώ νέα στήλη “full_address”, κάνοντας merge τις στήλες “store_city”, “store_state”, “store_country”, έχοντας σαν separator το comma και το κενό “, “.

 


•	Δημιουργώ νέα στήλη “area_code”, κάνοντας extract τους αριθμούς πριν την πρώτη παύλα “-“ από τη στήλη “store_phone”.


 


•	Κάνουμε Close & Apply για τον πίνακα Stores.

•	Κάνουμε import το csv αρχείο MavenMarket_Regions. 

•	Έλεγχω αν η πρώτη σειρά του csv αρχείου είναι header στα δεδομένα και παρατηρώ πως έγινε header αυτόματα. 

•	Μετονομάζω τον πίνακα σε Regions.

•	Ελέγχω να δω αν οι στήλες έχουν τα σωστά Data types και δεν φαίνεται να υπάρχει κάποιο λάθος.

•	Κάνουμε Close & Apply για τον πίνακα Regions.

•	Κάνουμε import το csv αρχείο MavenMarket_Calendar. 

•	Έλεγχω αν η πρώτη σειρά του csv αρχείου είναι header στα δεδομένα και παρατηρώ πως έγινε header αυτόματα. 

•	Μετονομάζω τον πίνακα σε Calendar.

•	Ελέγχω να δω αν οι στήλες έχουν τα σωστά Data types και δεν φαίνεται να υπάρχει κάποιο λάθος.

•	Χρησιμοποιώντας το εργαλείο date, δημιουργώ τις στήλες “Start of Week”, “Name of Day”, “Start of Month”, “Name of Month”, “Quarter of Year”, “Year”.

 

•	Κάνουμε Close & Apply για τον πίνακα Calendar.

•	Κάνουμε import το csv αρχείο MavenMarket_Returns_1997-1998. 

•	Έλεγχω αν η πρώτη σειρά του csv αρχείου είναι header στα δεδομένα και παρατηρώ πως έγινε header αυτόματα. 

•	Μετονομάζω τον πίνακα σε Return_Data.

•	Ελέγχω να δω αν οι στήλες έχουν τα σωστά Data types και δεν φαίνεται να υπάρχει κάποιο λάθος.

•	Κάνουμε Close & Apply για τον πίνακα Return_Data.

•	Τοποθετώ σε ένα φάκελο τα αρχεία που αφορούν τα transactions και τα κάνω import μέσω της επιλογής “Get Data by Folder”.

•	Αφαιρώ τη στήλη “Source.Name” και μετονομάζω τον πίνακα σε “Transaction_Data”.

•	Κάνουμε Close & Apply για τον πίνακα Transaction_Data.








Modelling Data

•	Στη συνέχεια, δημιούργησα αυτές τις σχέσεις στο modeling tab και επιλέγω το “Hide from Model” για όλα τα πεδία που λειτουργούν σαν foreign keys.

 











DAX Measures

Calculated Columns

•	Ενώ βρισκόμαστε στο Data View, προσθέτουμε νέα στήλη στον πίνακα calendar που θα δείχνει ποιες μέρες είναι σαββατοκύριακο. 

 

•	Προσθέτουμε νέα στήλη στον πίνακα calendar που θα δείχνει την τελευταία ημέρα του μήνα. 

 

•	Προσθέτουμε νέα στήλη στον πίνακα customers που θα δείχνει την ηλικία των πελατών. 

 

•	Προσθέτουμε νέα στήλη στον πίνακα customers που θα δείχνει αν οι πελάτες είναι σε high priority (αν κατέχουν σπίτι και έχουν χρυσή κάρτα μέλους) . 

 

•	Προσθέτουμε νέα στήλη στον πίνακα customers που θα επιστρέφει τα 3 πρώτα γράμματα της χώρας του πελάτη με κεφαλαία. 

 

•	Προσθέτουμε νέα στήλη στον πίνακα customers που θα δείχνει τον αριθμό σπιτιού του πελάτη (χαρακτήρες πριν το πρώτο κενό στη στήλη “customer_address”). 

 
•	Προσθέτουμε νέα στήλη στον πίνακα products που θα δείχνει το price range των προϊόντων. (High>3, Mid>1, Low)  

 

•	Προσθέτουμε νέα στήλη στον πίνακα stores που θα υπολογίζει πόσα χρόνια πέρασαν από την τελευταία φορά που έγινε remodel. 

 

Measures

•	Measure στον πίνακα Transaction_Data για υπολογισμό της ποσότητας που πουλήθηκε.

 

•	Measure στον πίνακα Return_Data για υπολογισμό της ποσότητας που επιστράφηκε.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό των transactions.

 




•	Measure στον πίνακα Return_Data για υπολογισμό των returns.

 

•	Measure στον πίνακα Return_Data για υπολογισμό του ποσοστού των επιστροφών προς τις πωλήσεις.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό των transaction που έγιναν τα σαββατοκύριακα.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του ποσοστού των transaction που έγιναν τα σαββατοκύριακα προς τα συνολικά transaction.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του συνολικού revenue(quantity * product_retail_price).

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του συνολικού cost(quantity * product_cost).

 


•	Measure στον πίνακα Transaction_Data για υπολογισμό του συνολικού profit.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του profit margin.

 

•	Measure στον πίνακα Products για υπολογισμό των μοναδικών (unique) προϊόντων.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό Year to Date Revenue.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του revenue κάθε 60ήμερου (rolling).

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό Year to Date Revenue.

 

•	Measure στον πίνακα Transaction_Data για τα transaction του προηγούμενου μήνα.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του revenue του προηγούμενου μήνα.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του profit του προηγούμενου μήνα.

 

•	Measure στον πίνακα Return_Data για υπολογισμό των returns του προηγούμενου μήνα.

 

•	Measure στον πίνακα Transaction_Data για υπολογισμό του Target revenue (5% αύξηση επί του προηγούμενο μήνα).

 












Visual Report

Δημιούργησα αυτό το διαδραστικό dashboard.

 

Aν πατήσουμε στο button “CHECK INSIGHTS”, θα δούμε και αυτά τα συμπεράσματα.

 

