-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2020 at 09:56 PM
-- Server version: 10.2.34-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academia_2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `followers` int(10) UNSIGNED DEFAULT NULL,
  `classes` int(10) UNSIGNED DEFAULT NULL,
  `graduates` int(10) UNSIGNED DEFAULT NULL,
  `recommandations` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `followers`, `classes`, `graduates`, `recommandations`) VALUES
(1, 1600, 5, 400, 20);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(6) UNSIGNED NOT NULL,
  `main_class_id` int(6) UNSIGNED DEFAULT 0,
  `title` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `registration_start_date` date DEFAULT NULL,
  `registration_end_date` date DEFAULT NULL,
  `students` int(6) UNSIGNED DEFAULT 0,
  `price` int(6) UNSIGNED DEFAULT 0,
  `discount_price` int(11) DEFAULT 0,
  `for_whom_description` text DEFAULT NULL,
  `about_description` text DEFAULT NULL,
  `cost_description` text DEFAULT NULL,
  `resources_description` mediumtext DEFAULT NULL,
  `structure_description` text DEFAULT NULL,
  `requirements_description` text DEFAULT NULL,
  `early_description` text DEFAULT NULL,
  `loyality_description` text DEFAULT NULL,
  `friends_description` text DEFAULT NULL,
  `discount_description` text DEFAULT NULL,
  `schedule` text DEFAULT NULL,
  `schedule_pdf` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `weekend` int(1) UNSIGNED DEFAULT 0,
  `is_active` int(1) UNSIGNED DEFAULT 0,
  `is_planned` int(1) UNSIGNED DEFAULT 0,
  `is_bucharest_located` int(1) UNSIGNED DEFAULT 0,
  `deployment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `main_class_id`, `title`, `short_description`, `description`, `registration_start_date`, `registration_end_date`, `students`, `price`, `discount_price`, `for_whom_description`, `about_description`, `cost_description`, `resources_description`, `structure_description`, `requirements_description`, `early_description`, `loyality_description`, `friends_description`, `discount_description`, `schedule`, `schedule_pdf`, `image`, `weekend`, `is_active`, `is_planned`, `is_bucharest_located`, `deployment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Iteratia 1/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2020-01-13', '2020-01-29', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(2, 2, 'Iteratia 1/2020', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2020-02-03', '2020-03-18', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(15, 2, 'Iteratia 2/2020', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2020-04-20', '2020-06-03', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_1.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(3, 3, 'Iteratia 2/2020', '… sau cum să treci la nivelul următor în Test Automation.', '<p>Advanced Test Automation se concentrează pe construirea unui sistem de testare automată, folosind WebdriverIO, Mocha sau Cucumber ca framework de testare și Chai ca librarie de assert-uri.</p>\r\n\r\n<p>Toate conceptele teoretice, metodele specifice Webdriver și cele mai bune practici de automatizare sunt combinate cu exerciții practice.</p>\r\n', '2020-03-26', '2020-05-14', 20, 3300, NULL, '<p>Test Automation Engineers care vor să aprofundeze cunoştintele de testare automată şi să se familiarizeze cu Webdriver, WebdriverIO / Mocha-Cucumber | Development Managers, QA Managers care vor să-şi extindă cunoştinele legate de tool-urile Selenium.</p>\r\n', '<p>Să lucrezi cu WebdriverIO | &Icirc;nțelegerea standardului W3C Webdriver | Controlarea suitei de instrumente Selenium | &Icirc;nțelegerea arhitecturii Selenium</p>\r\n', '<p>Taxa de &icirc;nscriere este 3300 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei etape | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', NULL, '<h3>Cursul durează 7 săptăm&acirc;ni şi este compus din 14 sesiuni.</h3>\r\n\r\n<p>&Icirc;nainte de curs, instalează:</p>\r\n\r\n<ul>\r\n	<li>Java (Java Runtime Environment 1.8.0)</li>\r\n	<li>NodeJS (ultima versiune)</li>\r\n	<li>Un emulator de consolă robustă (de exemplu: ConEmu, GitBash, consola Cod VS etc.)</li>\r\n	<li>Un editor de text cu care lucrezi bine (de ex.: Sublime, Atom, VS Code, etc.)</li>\r\n</ul>\r\n\r\n<p>Pentru partea practică e nevoie să &icirc;ţi aduci laptopul. Nu ai cont public pe GitHub? Nu uita să &icirc;ţi faci &icirc;nainte.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testarea Automatizată sau să fi absolvit cursul de Inițiere Test Automation: Rest API &amp; UI</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Part I: An introduction to JavaScript (part I)</li>\r\n	<li>Part II: I&rsquo;ll call you back! Callbacks, Promises &amp; Async/Await</li>\r\n	<li>Part III: Automation: Yay, or Nay? The Why&rsquo;s &amp; When&rsquo;s</li>\r\n	<li>Part IV: Selenium - Not just the 34th element</li>\r\n	<li>Part V: Locators - Inside the DOM</li>\r\n	<li>Part VI: Enter WebdriverIO</li>\r\n	<li>Part VII: Selenium Grid - Scale beyond imagination</li>\r\n	<li>Part VIII: Take IT (WebdriverIO framework) for a spin</li>\r\n	<li>Part IX: BUGs are in the &ldquo;eyes&rdquo; of the beholder (Visual Regression)</li>\r\n	<li>Part X: Final Exam</li>\r\n</ul>\r\n', 'Programa-Advanced-Test-Automation.pdf', 'advanced-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(19, 5, 'Iteratia 1/2020', 'De la execuție la strategie de testare nu e decât un curs. Acesta.', '<p>Cu o abordare practică, bogată &icirc;n exerciții, cursul de <strong>Advanced Software Testing</strong> vă &icirc;nvață cum să definiți și să &icirc;ndepliniți sarcinile necesare pentru a pune &icirc;n aplicare o strategie de testare.</p>\r\n\r\n<p>Vei &icirc;nvăța cum să testezi mai bine și eficient aplicații web și cum să lucrezi cu Linux și SQL pentru a testa complet aplicații complexe. &Icirc;ți vom arăta exemple de bune practici &icirc;n pregătirea testelor și tehnici avansate de Test Design.</p>\r\n', '2020-02-17', '2020-03-27', 14, 2500, NULL, '<p>Materia este scrisă pentru Tester-ul sau Analistul care dorește să aprofundeze metode progresiste de investigare a defectelor software pentru a dezvolta abilități avansate &icirc;n analiza, proiectarea și execuția testelor.</p>\r\n', '<p>Să lucrezi cu JIRA, Postman, N++, Putty, SQL IDE, Intellij, Chrome | Să testezi aplicații web, folosindu-te de: HTML, CSS, XPATH, XML, JSON, Linux și SQL | Concepte avansate de testare - extended boundary analysis, pair-wise și decision table</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Sprint-uri</strong>:</p>\r\n\r\n<ul>\r\n	<li>Sprint 1 -</li>\r\n	<li>Sprint 2 -</li>\r\n	<li>Sprint 3 -</li>\r\n	<li>Sprint 4 -</li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n', '<p>Cursul de Advanced Software testing este gandit pentru a ajuta fiecate QA Engineersa isi creasca competentele avute in testarea manuala. El este adresat persoanelor ce au experienta in acest domeniu dar isi dorescsa progreseze in cariera, prin cresterea competentelor avute, atat tehnice cat si analitice.</p>\r\n\r\n<p>Fie ca abia ai inceput o cariera in testare sau profesezi de ceva timp, cursul Advanced Software testing este gandit sa iti consolideze cunostintele avute in testare software dar si sa cimenteze cunostinte noi, necesare pentru a avansa in senioritate.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele necesare pentru a putea livra o testare eficienta si de calitate, in cadrul proiectelor. Cursul este gandit ca o punte spre Initiere in Testarea Automata, insa permite studentilor si o specializare intensiva in zona testarii manuale.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testare Software sau să fi absolvit cursul de Inițiere &icirc;n Software Testing</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ol>\r\n	<li>Introducere</li>\r\n	<li>Testarea Web și de Rețea</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Testarea Linux și SQL</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Practici Avansate de Testare</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Evaluarea Competențelor</li>\r\n</ol>\r\n', 'Programa_Advanced-Software-Testing.pdf', 'advanmced-software-testing.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(9, 3, 'Iteratia 1/2020', '… sau cum să treci la nivelul următor în Test Automation.', '<p>Advanced Test Automation se concentrează pe construirea unui sistem de testare automată, folosind WebdriverIO, Mocha sau Cucumber ca framework de testare și Chai ca librarie de assert-uri.</p>\r\n\r\n<p>Toate conceptele teoretice, metodele specifice Webdriver și cele mai bune practici de automatizare sunt combinate cu exerciții practice.</p>\r\n', '2020-02-01', '2020-02-29', 20, 3300, NULL, '<p>Test Automation Engineers care vor să aprofundeze cunoştintele de testare automată şi să se familiarizeze cu Webdriver, WebdriverIO / Mocha-Cucumber | Development Managers, QA Managers care vor să-şi extindă cunoştinele legate de tool-urile Selenium.</p>\r\n', '<p>Să lucrezi cu WebdriverIO | &Icirc;nțelegerea standardului W3C Webdriver | Controlarea suitei de instrumente Selenium | &Icirc;nțelegerea arhitecturii Selenium</p>\r\n', '<p>Taxa de &icirc;nscriere este 3300 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei etape | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', NULL, '<h3>Cursul durează 7 săptăm&acirc;ni şi este compus din 14 sesiuni.</h3>\r\n\r\n<p>&Icirc;nainte de curs, instalează:</p>\r\n\r\n<ul>\r\n	<li>Java (Java Runtime Environment 1.8.0)</li>\r\n	<li>NodeJS (ultima versiune)</li>\r\n	<li>Un emulator de consolă robustă (de exemplu: ConEmu, GitBash, consola Cod VS etc.)</li>\r\n	<li>Un editor de text cu care lucrezi bine (de ex.: Sublime, Atom, VS Code, etc.)</li>\r\n</ul>\r\n\r\n<p>Pentru partea practică e nevoie să &icirc;ţi aduci laptopul. Nu ai cont public pe GitHub? Nu uita să &icirc;ţi faci &icirc;nainte.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testarea Automatizată sau să fi absolvit cursul de Inițiere Test Automation: Rest API &amp; UI</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Part I: An introduction to JavaScript (part I)</li>\r\n	<li>Part II: I&rsquo;ll call you back! Callbacks, Promises &amp; Async/Await</li>\r\n	<li>Part III: Automation: Yay, or Nay? The Why&rsquo;s &amp; When&rsquo;s</li>\r\n	<li>Part IV: Selenium - Not just the 34th element</li>\r\n	<li>Part V: Locators - Inside the DOM</li>\r\n	<li>Part VI: Enter WebdriverIO</li>\r\n	<li>Part VII: Selenium Grid - Scale beyond imagination</li>\r\n	<li>Part VIII: Take IT (WebdriverIO framework) for a spin</li>\r\n	<li>Part IX: BUGs are in the &ldquo;eyes&rdquo; of the beholder (Visual Regression)</li>\r\n	<li>Part X: Final Exam</li>\r\n</ul>\r\n', 'Programa-Advanced-Test-Automation.pdf', 'advanced-test-automation_2.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(5, 1, 'Iteratia 3/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2020-03-30', '2020-04-15', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(7, 1, 'Iteratia 2/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2020-02-01', '2020-02-09', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(28, 1, 'Iteratia 1 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-01-13', '2019-01-29', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(22, 1, 'Iteratia 6/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-09-07', '2020-09-23', 15, 1500, 1200, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(27, 6, 'Iteratia 2/2020', 'Sau cum poți determina performanţa unui produs, pe termen lung.', '<p><strong>Testarea de Performanţă</strong> oferă informaţii despre cum se va comporta produsul &icirc;n utilizarea zilnică, lu&acirc;nd &icirc;n calcul susținerea unui anumit număr de utilizatori. Rezultatele obţinute &icirc;n urma testelor vor ajuta companiile să ia o decizie informată cu privire la lansarea unui produs.</p>\r\n\r\n<p><strong>Iniţiere &icirc;n Testarea de Performanta</strong> &icirc;ţi oferă noţiunile introductive teoretice şi practice necesare pentru a &icirc;nțelege, planifica și executa un proiect de testare de performanță. Vei &icirc;nvăța care sunt etapele cheie &icirc;n testarea de performanță și ce implică acestea, dar și cum să implementezi cu Load Runner fazele unui proiect de Testare de Performanta.</p>\r\n', '2020-09-22', '2020-10-29', 15, 3600, 3000, '<p>Celor care ocupă un rol de <strong>QA Engineer</strong> sau <strong>QA Automation Engineer</strong> și &icirc;și doresc să facă tranziția &icirc;n zona testării de performanță, o specializare din ce &icirc;n ce mai căutată.</p>\r\n', '<p>Terminologia Testării de Performanță | Tipuri de Testare de Performanță&nbsp; | Cum să lucrezi cu LoadRunner: LoadRunner Virtual User Generator, LoadRunner Controller, LoadRunner Analysis | Javascript Basics | Confluence și JIRA&nbsp;</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei etape | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '', '', '<p>&Icirc;nțelegerea serverelor | Ce &icirc;nseamnă un HTTP status | Ce &icirc;nseamnă GET, POST, DELETE | Ce este arhitectura sistemelor software | Cunoștințe de bază Rest API, Postman, Soap UI</p>\r\n\r\n<p>Formate de date pentru stocare și transport | (XML, JSON, WebService) | Scripting: funcții, variabile, parsarea elementelor</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ol>\r\n	<li>Introducere &icirc;n Testarea de Performanță</li>\r\n	<li>Planificarea și controlul</li>\r\n	<li>Analiza și design-ul</li>\r\n	<li>Implementarea și execuția</li>\r\n	<li>Criterii de acceptanță</li>\r\n	<li>Raportare</li>\r\n	<li>Lucrul practic cu Load Runner</li>\r\n	<li>Activități retrospective</li>\r\n</ol>\r\n', 'Programa_InitiereInTestareDePerformanta.pdf', 'performance-testing.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(10, 3, 'Iteratia 3/2020', '… sau cum să treci la nivelul următor în Test Automation.', '<p>Advanced Test Automation se concentrează pe construirea unui sistem de testare automată, folosind WebdriverIO, Mocha sau Cucumber ca framework de testare și Chai ca librarie de assert-uri.</p>\r\n\r\n<p>Toate conceptele teoretice, metodele specifice Webdriver și cele mai bune practici de automatizare sunt combinate cu exerciții practice.</p>\r\n', '2020-04-02', '2020-05-14', 20, 3300, NULL, '<p>Test Automation Engineers care vor să aprofundeze cunoştintele de testare automată şi să se familiarizeze cu Webdriver, WebdriverIO / Mocha-Cucumber | Development Managers, QA Managers care vor să-şi extindă cunoştinele legate de tool-urile Selenium.</p>\r\n', '<p>Să lucrezi cu WebdriverIO | &Icirc;nțelegerea standardului W3C Webdriver | Controlarea suitei de instrumente Selenium | &Icirc;nțelegerea arhitecturii Selenium</p>\r\n', '<p>Taxa de &icirc;nscriere este 3300 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei etape | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', NULL, '<h3>Cursul durează 7 săptăm&acirc;ni şi este compus din 14 sesiuni.</h3>\r\n\r\n<p>&Icirc;nainte de curs, instalează:</p>\r\n\r\n<ul>\r\n	<li>Java (Java Runtime Environment 1.8.0)</li>\r\n	<li>NodeJS (ultima versiune)</li>\r\n	<li>Un emulator de consolă robustă (de exemplu: ConEmu, GitBash, consola Cod VS etc.)</li>\r\n	<li>Un editor de text cu care lucrezi bine (de ex.: Sublime, Atom, VS Code, etc.)</li>\r\n</ul>\r\n\r\n<p>Pentru partea practică e nevoie să &icirc;ţi aduci laptopul. Nu ai cont public pe GitHub? Nu uita să &icirc;ţi faci &icirc;nainte.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testarea Automatizată sau să fi absolvit cursul de Inițiere Test Automation: Rest API &amp; UI</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Part I: An introduction to JavaScript (part I)</li>\r\n	<li>Part II: I&rsquo;ll call you back! Callbacks, Promises &amp; Async/Await</li>\r\n	<li>Part III: Automation: Yay, or Nay? The Why&rsquo;s &amp; When&rsquo;s</li>\r\n	<li>Part IV: Selenium - Not just the 34th element</li>\r\n	<li>Part V: Locators - Inside the DOM</li>\r\n	<li>Part VI: Enter WebdriverIO</li>\r\n	<li>Part VII: Selenium Grid - Scale beyond imagination</li>\r\n	<li>Part VIII: Take IT (WebdriverIO framework) for a spin</li>\r\n	<li>Part IX: BUGs are in the &ldquo;eyes&rdquo; of the beholder (Visual Regression)</li>\r\n	<li>Part X: Final Exam</li>\r\n</ul>\r\n', 'Programa-Advanced-Test-Automation.pdf', 'advanced-test-automation_2.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(24, 1, 'Iteratia 6/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2020-11-23', '2020-12-09', 15, 1500, 1200, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL);
INSERT INTO `classes` (`id`, `main_class_id`, `title`, `short_description`, `description`, `registration_start_date`, `registration_end_date`, `students`, `price`, `discount_price`, `for_whom_description`, `about_description`, `cost_description`, `resources_description`, `structure_description`, `requirements_description`, `early_description`, `loyality_description`, `friends_description`, `discount_description`, `schedule`, `schedule_pdf`, `image`, `weekend`, `is_active`, `is_planned`, `is_bucharest_located`, `deployment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 5, 'Iteratia 3/2020', 'De la execuție la strategie de testare nu e decât un curs. Acesta.', '<p>Cu o abordare practică, bogată &icirc;n exerciții, cursul de <strong>Advanced Software Testing</strong> vă &icirc;nvață cum să definiți și să &icirc;ndepliniți sarcinile necesare pentru a pune &icirc;n aplicare o strategie de testare.</p>\r\n\r\n<p>Vei &icirc;nvăța cum să testezi mai bine și eficient aplicații web și cum să lucrezi cu Linux și SQL pentru a testa complet aplicații complexe. &Icirc;ți vom arăta exemple de bune practici &icirc;n pregătirea testelor și tehnici avansate de Test Design.</p>\r\n', '2020-09-28', '2020-11-27', 14, 3000, 2500, '<p>Materia este scrisă pentru Tester-ul sau Analistul care dorește să aprofundeze metode progresiste de investigare a defectelor software pentru a dezvolta abilități avansate &icirc;n analiza, proiectarea și execuția testelor.</p>\r\n', '<p>Să lucrezi cu JIRA, Postman, N++, Putty, SQL IDE, Intellij, Chrome | Să testezi aplicații web, folosindu-te de: HTML, CSS, XPATH, XML, JSON, Linux și SQL | Concepte avansate de testare - extended boundary analysis, pair-wise și decision table</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Sprint-uri</strong>:</p>\r\n\r\n<ul>\r\n	<li>Sprint 1 -</li>\r\n	<li>Sprint 2 -</li>\r\n	<li>Sprint 3 -</li>\r\n	<li>Sprint 4 -</li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n', '<p>Cursul de Advanced Software testing este gandit pentru a ajuta fiecate QA Engineersa isi creasca competentele avute in testarea manuala. El este adresat persoanelor ce au experienta in acest domeniu dar isi dorescsa progreseze in cariera, prin cresterea competentelor avute, atat tehnice cat si analitice.</p>\r\n\r\n<p>Fie ca abia ai inceput o cariera in testare sau profesezi de ceva timp, cursul Advanced Software testing este gandit sa iti consolideze cunostintele avute in testare software dar si sa cimenteze cunostinte noi, necesare pentru a avansa in senioritate.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele necesare pentru a putea livra o testare eficienta si de calitate, in cadrul proiectelor. Cursul este gandit ca o punte spre Initiere in Testarea Automata, insa permite studentilor si o specializare intensiva in zona testarii manuale.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testare Software sau să fi absolvit cursul de Inițiere &icirc;n Software Testing</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ol>\r\n	<li>Introducere</li>\r\n	<li>Testarea Web și de Rețea</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Testarea Linux și SQL</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Practici Avansate de Testare</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Evaluarea Competențelor</li>\r\n</ol>\r\n', 'Programa_Advanced-Software-Testing.pdf', 'advanmced-software-testing.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(26, 2, 'Iteratia 4/2020', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '2020-09-01', '2020-10-15', 15, 3000, 2500, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_1.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(16, 2, 'Iteratia 3/2020', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2020-05-25', '2020-07-08', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(20, 6, 'Iteratia 1/2020', 'Sau cum poți determina performanţa unui produs, pe termen lung.', '<p><strong>Testarea de Performanţă</strong> oferă informaţii despre cum se va comporta produsul &icirc;n utilizarea zilnică, lu&acirc;nd &icirc;n calcul susținerea unui anumit număr de utilizatori. Rezultatele obţinute &icirc;n urma testelor vor ajuta companiile să ia o decizie informată cu privire la lansarea unui produs.</p>\r\n\r\n<p><strong>Iniţiere &icirc;n Testarea de Performanta</strong> &icirc;ţi oferă noţiunile introductive teoretice şi practice necesare pentru a &icirc;nțelege, planifica și executa un proiect de testare de performanță. Vei &icirc;nvăța care sunt etapele cheie &icirc;n testarea de performanță și ce implică acestea, dar și cum să implementezi cu Load Runner fazele unui proiect de Testare de Performanta.</p>\r\n', '2020-06-23', '2020-07-30', 15, 3600, 3000, '<p>Celor care ocupă un rol de <strong>QA Engineer</strong> sau <strong>QA Automation Engineer</strong> și &icirc;și doresc să facă tranziția &icirc;n zona testării de performanță, o specializare din ce &icirc;n ce mai căutată.</p>\r\n', '<p>Terminologia Testării de Performanță | Tipuri de Testare de Performanță&nbsp; | Cum să lucrezi cu LoadRunner: LoadRunner Virtual User Generator, LoadRunner Controller, LoadRunner Analysis | Javascript Basics | Confluence și JIRA&nbsp;</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei etape | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '', '', '<p>&Icirc;nțelegerea serverelor | Ce &icirc;nseamnă un HTTP status | Ce &icirc;nseamnă GET, POST, DELETE | Ce este arhitectura sistemelor software | Cunoștințe de bază Rest API, Postman, Soap UI</p>\r\n\r\n<p>Formate de date pentru stocare și transport | (XML, JSON, WebService) | Scripting: funcții, variabile, parsarea elementelor</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ol>\r\n	<li>Introducere &icirc;n Testarea de Performanță</li>\r\n	<li>Planificarea și controlul</li>\r\n	<li>Analiza și design-ul</li>\r\n	<li>Implementarea și execuția</li>\r\n	<li>Criterii de acceptanță</li>\r\n	<li>Raportare</li>\r\n	<li>Lucrul practic cu Load Runner</li>\r\n	<li>Activități retrospective</li>\r\n</ol>\r\n', 'Programa_InitiereInTestareDePerformanta.pdf', 'performance-testing.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(23, 1, 'Iteratia 7/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2020-11-07', '2020-11-15', 15, 1500, 1200, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(21, 1, 'Iteratia 5/2020', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2020-06-15', '2020-07-01', 15, 1500, 1200, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(29, 2, 'Iteratia 1 / 2018', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2018-06-11', '2018-07-25', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(30, 1, 'Weekend 1 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-09-22', '2018-09-30', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(31, 2, 'Weekend 1 / 2018', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2018-11-09', '2018-11-18', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(32, 1, 'Iteratia 1 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-03-05', '2018-04-11', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(33, 1, 'Iteratia 2 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-05-07', '2018-06-13', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(34, 1, 'Iteratia 3 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-06-25', '2018-08-01', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(35, 1, 'Iteratia 4 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-08-20', '2018-09-05', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL);
INSERT INTO `classes` (`id`, `main_class_id`, `title`, `short_description`, `description`, `registration_start_date`, `registration_end_date`, `students`, `price`, `discount_price`, `for_whom_description`, `about_description`, `cost_description`, `resources_description`, `structure_description`, `requirements_description`, `early_description`, `loyality_description`, `friends_description`, `discount_description`, `schedule`, `schedule_pdf`, `image`, `weekend`, `is_active`, `is_planned`, `is_bucharest_located`, `deployment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(36, 1, 'Iteratia 5 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-09-03', '2018-09-19', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(37, 1, 'Iteratia 2 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-03-04', '2019-03-20', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(38, 1, 'Iteratia 3 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-09-02', '2019-09-18', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(39, 1, 'Iteratia 4 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-11-11', '2019-11-27', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(40, 2, 'Iteratia 2 / 2018', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2018-09-03', '2018-10-17', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(41, 2, 'Iteratia 3 / 2018', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2018-10-29', '2018-12-12', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(42, 2, 'Iteratia 1 / 2019', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2019-02-26', '2019-04-10', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(43, 2, 'Iteratia 2 / 2019', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2019-03-25', '2019-05-16', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(44, 1, 'Weekend 2 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-11-10', '2018-11-18', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(45, 1, 'Weekend 1 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-01-26', '2019-02-03', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(46, 1, 'Weekend 2 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-05-11', '2019-05-19', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(47, 1, 'Weekend 3 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-07-06', '2019-07-14', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(48, 1, 'Weekend 4 / 2019', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2019-12-07', '2019-12-15', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'ist-weekend.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL);
INSERT INTO `classes` (`id`, `main_class_id`, `title`, `short_description`, `description`, `registration_start_date`, `registration_end_date`, `students`, `price`, `discount_price`, `for_whom_description`, `about_description`, `cost_description`, `resources_description`, `structure_description`, `requirements_description`, `early_description`, `loyality_description`, `friends_description`, `discount_description`, `schedule`, `schedule_pdf`, `image`, `weekend`, `is_active`, `is_planned`, `is_bucharest_located`, `deployment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(49, 2, 'Weekend 1 / 2019', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2019-02-03', '2019-03-18', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(50, 2, 'Weekend 2 / 2019', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2019-02-18', '2019-04-03', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(51, 2, 'Weekend 3 / 2019', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2019-09-23', '2019-11-06', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(52, 1, 'Iteratia 0 / 2018', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n', '2018-01-15', '2018-02-21', 15, 1200, NULL, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n', '<p>Taxa de &icirc;nscriere este 1200 de Lei &bull; Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(53, 2, 'Iteratia 0 / 2018', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2018-03-05', '2018-04-18', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(54, 2, 'Weekend 0 / 2019', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2019-06-03', '2019-07-17', 15, 2500, NULL, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 1, 1, 0, 1, 'Online', NULL, NULL, NULL),
(55, 7, 'Iteratia 1/2020', 'Învață să dezvolți Website-uri profesionale cu ajutorul Framework-ului Wordpress', '<p>Cursul de&nbsp;<strong>Wordpress web development</strong>&nbsp;ofera participantilor o vedere de ansamblu asupra a ce inseamna dezvoltarea web, plecand de la elementele cele mai de baza. Cursantii vor invata de la cum funcționează internetul, la crearea de newsletters și bloguri personale pană la dezvoltarea de website- uri complexe de prezentare Cursul este adresat persoanelor ce nu au experienta in acest domeniu dar isi doresc sa inceapa o cariera in aceasta profesie.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele introductive din zona dezvoltarii web. Cunostintele dobandite pot ajuta absolventii in a indeplinini cu brio rolul de Junior Web developer sau vei putea chiar lucra ca freelancer.</p>\r\n', '2020-06-15', '2020-07-16', 15, 3600, 3000, '<ul>\r\n	<li>Antreprenorilor care vor să &icirc;și dezvolte un website propriu pentru afacerea lor</li>\r\n	<li>Oamenilor care vor să facă web development profesionist (Studenți sau oameni care vor să iși schimbe cariera)</li>\r\n	<li>Oamenilor care vor să &icirc;nceapă un blog</li>\r\n	<li>Junior Programmers&nbsp; care vor să &icirc;și extindă cunoștințele pentru freelance work</li>\r\n</ul>\r\n', '<p>La sfarsitului cursului vei putea să transformi un fișier primit de la un designer,&nbsp;&icirc;ntr-un website dinamic făcut &icirc;n Wordpress.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>HTML, CSS si XD</li>\r\n	<li>Sa creezi Newslettere de la zero și să trimiți &icirc;n masă la o lista de email-uri&nbsp;</li>\r\n	<li>Sa programezi folosind&nbsp;PHP / MySQL</li>\r\n	<li>Să instalezi și să personalizezi un website Wordpress</li>\r\n	<li>Sa cunosti si sa folosesti plugin-uri esențiale in Wordpress (SEO, Google Analytics, Facebook pixel)</li>\r\n	<li>Functionalitati avansate de Wordpress (Custom Post Type, Multi Language, Migrating WP)</li>\r\n</ul>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '', '<ul>\r\n	<li>Intro to the WEB -&gt; CSS + HTML + Code Versioning</li>\r\n	<li>Intro to the Newsletter World</li>\r\n	<li>Intro to a dynamic Website</li>\r\n	<li>End to end project&nbsp;&nbsp;</li>\r\n</ul>\r\n', '<p>Ce aduce nou acest curs? APLICABILITATEA</p>\r\n\r\n<p>Te-ai gandit cum e să ai libertatea de a lucra de oriunde? Să fii web developer iți oferă o oarecare autonomie și mai ales posibilitatea de a lucra remote. Pentru asta e nevoie de multă muncă, dorință și&nbsp; disciplină. Acest curs, prin structura sa (teorie, practica si teme)&nbsp;te formează să lucrezi singur, să fii disciplinat, să accesezi resurse iar pentru asta te motivează cu recompense, la finalul fiecarei lectii dar si la examenul final</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<p><strong>Intro to the WEB -&gt; CSS + HTML + Code Versioning:</strong></p>\r\n\r\n<ul>\r\n	<li>Prezentare Curs</li>\r\n	<li>Web development Intro</li>\r\n	<li>Html intro (Basics and most used blocks)</li>\r\n	<li>CSS intro (Basics and most important properties)</li>\r\n	<li>Tooling (Local Dev, Github, IDE, Chrome Dev Tools, Photoshop/ XD)</li>\r\n</ul>\r\n\r\n<p><strong>Intro to the Newsletter World:</strong></p>\r\n\r\n<ul>\r\n	<li>Newsletters history and problems&nbsp;</li>\r\n	<li>Toolss</li>\r\n	<li>Guerilla marketing&nbsp;</li>\r\n	<li>PRACTICE -&gt; make a mail signature</li>\r\n</ul>\r\n\r\n<p><strong>Intro to a dynamic Website</strong></p>\r\n\r\n<ul>\r\n	<li>Php + MYSQL + html intro&nbsp;</li>\r\n	<li>Types of Backend (REST, SERVER SIDE RENDERING)</li>\r\n	<li>Intro to Wordpress&nbsp;</li>\r\n	<li>Wordpress Themes&nbsp;</li>\r\n	<li>Installing Themes and Plugins&nbsp;</li>\r\n	<li>LIST OF IMPORTANT PLUGINS</li>\r\n	<li>Wordpress Important Theme files</li>\r\n	<li>INTRO to WPLM&nbsp;</li>\r\n	<li>Custom Post Types</li>\r\n	<li>Hooks and Filters</li>\r\n	<li>MOVING A WP Website</li>\r\n</ul>\r\n', 'Wordpress-Web-Development.pdf', 'wordpress.jpg', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(56, 7, 'Iteratia 2/2020', 'Învață să dezvolți Website-uri profesionale cu ajutorul Framework-ului Wordpress', '<p>Cursul de&nbsp;<strong>Wordpress web development</strong>&nbsp;ofera participantilor o vedere de ansamblu asupra a ce inseamna dezvoltarea web, plecand de la elementele cele mai de baza. Cursantii vor invata de la cum funcționează internetul, la crearea de newsletters și bloguri personale pană la dezvoltarea de website- uri complexe de prezentare Cursul este adresat persoanelor ce nu au experienta in acest domeniu dar isi doresc sa inceapa o cariera in aceasta profesie.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele introductive din zona dezvoltarii web. Cunostintele dobandite pot ajuta absolventii in a indeplinini cu brio rolul de Junior Web developer sau vei putea chiar lucra ca freelancer.</p>\r\n', '2020-08-31', '2020-10-01', 15, 3600, 3000, '<ul>\r\n	<li>Antreprenorilor care vor să &icirc;și dezvolte un website propriu pentru afacerea lor</li>\r\n	<li>Oamenilor care vor să facă web development profesionist (Studenți sau oameni care vor să iși schimbe cariera)</li>\r\n	<li>Oamenilor care vor să &icirc;nceapă un blog</li>\r\n	<li>Junior Programmers&nbsp; care vor să &icirc;și extindă cunoștințele pentru freelance work</li>\r\n</ul>\r\n', '<p>La sfarsitului cursului vei putea să transformi un fișier primit de la un designer,&nbsp;&icirc;ntr-un website dinamic făcut &icirc;n Wordpress.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>HTML, CSS si XD</li>\r\n	<li>Sa creezi Newslettere de la zero și să trimiți &icirc;n masă la o lista de email-uri&nbsp;</li>\r\n	<li>Sa programezi folosind&nbsp;PHP / MySQL</li>\r\n	<li>Să instalezi și să personalizezi un website Wordpress</li>\r\n	<li>Sa cunosti si sa folosesti plugin-uri esențiale in Wordpress (SEO, Google Analytics, Facebook pixel)</li>\r\n	<li>Functionalitati avansate de Wordpress (Custom Post Type, Multi Language, Migrating WP)</li>\r\n</ul>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '', '<ul>\r\n	<li>Intro to the WEB -&gt; CSS + HTML + Code Versioning</li>\r\n	<li>Intro to the Newsletter World</li>\r\n	<li>Intro to a dynamic Website</li>\r\n	<li>End to end project&nbsp;&nbsp;</li>\r\n</ul>\r\n', '<p>Ce aduce nou acest curs? APLICABILITATEA</p>\r\n\r\n<p>Te-ai gandit cum e să ai libertatea de a lucra de oriunde? Să fii web developer iți oferă o oarecare autonomie și mai ales posibilitatea de a lucra remote. Pentru asta e nevoie de multă muncă, dorință și&nbsp; disciplină. Acest curs, prin structura sa (teorie, practica si teme)&nbsp;te formează să lucrezi singur, să fii disciplinat, să accesezi resurse iar pentru asta te motivează cu recompense, la finalul fiecarei lectii dar si la examenul final</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<p><strong>Intro to the WEB -&gt; CSS + HTML + Code Versioning:</strong></p>\r\n\r\n<ul>\r\n	<li>Prezentare Curs</li>\r\n	<li>Web development Intro</li>\r\n	<li>Html intro (Basics and most used blocks)</li>\r\n	<li>CSS intro (Basics and most important properties)</li>\r\n	<li>Tooling (Local Dev, Github, IDE, Chrome Dev Tools, Photoshop/ XD)</li>\r\n</ul>\r\n\r\n<p><strong>Intro to the Newsletter World:</strong></p>\r\n\r\n<ul>\r\n	<li>Newsletters history and problems&nbsp;</li>\r\n	<li>Toolss</li>\r\n	<li>Guerilla marketing&nbsp;</li>\r\n	<li>PRACTICE -&gt; make a mail signature</li>\r\n</ul>\r\n\r\n<p><strong>Intro to a dynamic Website</strong></p>\r\n\r\n<ul>\r\n	<li>Php + MYSQL + html intro&nbsp;</li>\r\n	<li>Types of Backend (REST, SERVER SIDE RENDERING)</li>\r\n	<li>Intro to Wordpress&nbsp;</li>\r\n	<li>Wordpress Themes&nbsp;</li>\r\n	<li>Installing Themes and Plugins&nbsp;</li>\r\n	<li>LIST OF IMPORTANT PLUGINS</li>\r\n	<li>Wordpress Important Theme files</li>\r\n	<li>INTRO to WPLM&nbsp;</li>\r\n	<li>Custom Post Types</li>\r\n	<li>Hooks and Filters</li>\r\n	<li>MOVING A WP Website</li>\r\n</ul>\r\n', 'Wordpress-Web-Development.pdf', 'wordpress.jpg', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(57, 5, 'Iteratia 2/2020', 'De la execuție la strategie de testare nu e decât un curs. Acesta.', '<p>Cu o abordare practică, bogată &icirc;n exerciții, cursul de <strong>Advanced Software Testing</strong> vă &icirc;nvață cum să definiți și să &icirc;ndepliniți sarcinile necesare pentru a pune &icirc;n aplicare o strategie de testare.</p>\r\n\r\n<p>Vei &icirc;nvăța cum să testezi mai bine și eficient aplicații web și cum să lucrezi cu Linux și SQL pentru a testa complet aplicații complexe. &Icirc;ți vom arăta exemple de bune practici &icirc;n pregătirea testelor și tehnici avansate de Test Design.</p>\r\n', '2020-06-08', '2020-08-07', 14, 2500, 3000, '<p>Materia este scrisă pentru Tester-ul sau Analistul care dorește să aprofundeze metode progresiste de investigare a defectelor software pentru a dezvolta abilități avansate &icirc;n analiza, proiectarea și execuția testelor.</p>\r\n', '<p>Să lucrezi cu JIRA, Postman, N++, Putty, SQL IDE, Intellij, Chrome | Să testezi aplicații web, folosindu-te de: HTML, CSS, XPATH, XML, JSON, Linux și SQL | Concepte avansate de testare - extended boundary analysis, pair-wise și decision table</p>\r\n', '<p>Taxa de &icirc;nscriere este 2500 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Sprint-uri</strong>:</p>\r\n\r\n<ul>\r\n	<li>Sprint 1 -</li>\r\n	<li>Sprint 2 -</li>\r\n	<li>Sprint 3 -</li>\r\n	<li>Sprint 4 -</li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n', '<p>Cursul de Advanced Software testing este gandit pentru a ajuta fiecate QA Engineersa isi creasca competentele avute in testarea manuala. El este adresat persoanelor ce au experienta in acest domeniu dar isi dorescsa progreseze in cariera, prin cresterea competentelor avute, atat tehnice cat si analitice.</p>\r\n\r\n<p>Fie ca abia ai inceput o cariera in testare sau profesezi de ceva timp, cursul Advanced Software testing este gandit sa iti consolideze cunostintele avute in testare software dar si sa cimenteze cunostinte noi, necesare pentru a avansa in senioritate.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele necesare pentru a putea livra o testare eficienta si de calitate, in cadrul proiectelor. Cursul este gandit ca o punte spre Initiere in Testarea Automata, insa permite studentilor si o specializare intensiva in zona testarii manuale.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testare Software sau să fi absolvit cursul de Inițiere &icirc;n Software Testing</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ol>\r\n	<li>Introducere</li>\r\n	<li>Testarea Web și de Rețea</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Testarea Linux și SQL</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Practici Avansate de Testare</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Evaluarea Competențelor</li>\r\n</ol>\r\n', 'Programa_Advanced-Software-Testing.pdf', 'advanmced-software-testing.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(58, 2, 'Iteratia 5/2020', 'Pachetul complet pentru un viitor Automation Engineer.', '<p>Iniţiere &icirc;n Test Automation: REST API &amp; UI abordează noţiuni practice necesare pentru a susţine și a supraviețui unei sarcini de testare automată.</p>\r\n\r\n<p>Cursul este alcătuit din trei părţi:</p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Java: dob&acirc;ndirea cunoştintelor de programare &icirc;n limbajul Java</li>\r\n	<li>Automation Website Testing with Selenium WebDriver: automatizarea actiunilor manuale ale unui end-user</li>\r\n	<li>REST API Testing with Rest-Assured: &icirc;nţelegerea serviciilor REST şi automatizarea testelor de API</li>\r\n</ul>\r\n', '2020-10-26', '2020-12-09', 15, 3000, 2500, '<p>Persoanelor care activează &icirc;n domeniul testării software şi doresc să facă saltul către testărea automatizată.</p>\r\n', '<p>Noţiunile de bază ale limbajului de programare Java | Automatizarea testelor de UI cu Selenium WebDriver | Configurarea proiectelor de tip Maven cu TestNG | Automatizarea testelor de API cu Rest-Assured | Lucrul cu mediul de dezvoltare Intellij | Testarea serviciilor REST cu Postman | Troubleshooting şi debugging | Tipuri de validări</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p><strong>Link front-end: </strong></p>\r\n\r\n<p><strong>Link API: </strong></p>\r\n', '<h3>Iniţiere &icirc;n Test Automation: Rest API &amp; UI durează 42 ore, a şi presupune parcurgerea etapelor de mai jos.</h3>\r\n\r\n<p><strong>Familiarizare:</strong> Ne concentrăm pe &icirc;nvăţarea limbajului de programare Java, configurarea proiectelor de tip Maven şi utilizarea framework-ului de testare TestNG</p>\r\n\r\n<p><strong>Aprofundare Automation Website Testing with Selenium WebDriver:</strong> Abordăm modalităţi de testare specifice UI Test Automation, folosind Selenium WebDriver şi Java</p>\r\n\r\n<p><strong>Aprofundare REST API Testing with Rest-Assured:</strong> Prezentăm informaţiile fundamentale ale serviciilor REST şi testării de API cu RestAssured şi Java</p>\r\n\r\n<p><strong>Simulare:</strong> Vei lucra cu o aplicaţie software dedicată acestui curs. Este up and running &icirc;n AWS Cloud şi te va ajuta să identifici defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n', '<p>Este un curs de specializare, pentru care ai nevoie să stăp&acirc;neşti limba engleză și să ai cunoştinţe de testare manuală sau game testing.</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Curs 1 - Java Fundamentals</li>\r\n	<li>Curs 2 - Java Control Flow Statements and Arrays</li>\r\n	<li>Curs 3 - Java OOP Concepts</li>\r\n	<li>Curs 4 - Java Collections and Exceptions</li>\r\n	<li>Curs 5 - Getting Started with Selenium for Automated Website testing</li>\r\n	<li>Curs 6 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 7 - Getting Started with Selenium for Automated Website testing (continue)</li>\r\n	<li>Curs 8 - Selenium Practice Session</li>\r\n	<li>Curs 9 - Selenium Exam</li>\r\n	<li>Curs 10 - Fundamentals of REST Services and REST API Testing</li>\r\n	<li>Curs 11 - REST API Testing with Rest-Assured</li>\r\n	<li>Curs 12 - REST API Testing with Rest-Assured (continue)</li>\r\n	<li>Curs 13 - Rest API Testing with Rest-Assured Practice Session</li>\r\n	<li>Curs 14 - Rest API Testing with Rest-Assured Exam</li>\r\n</ul>\r\n', 'Programa-Initiere-in-Test-Automation-Rest-API-UI_2.pdf', 'initiere-in-test-automation.png', 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(59, 5, 'Iteratia 3/2020', 'De la execuție la strategie de testare nu e decât un curs. Acesta.', '<p>Cu o abordare practică, bogată &icirc;n exerciții, cursul de <strong>Advanced Software Testing</strong> vă &icirc;nvață cum să definiți și să &icirc;ndepliniți sarcinile necesare pentru a pune &icirc;n aplicare o strategie de testare.</p>\r\n\r\n<p>Vei &icirc;nvăța cum să testezi mai bine și eficient aplicații web și cum să lucrezi cu Linux și SQL pentru a testa complet aplicații complexe. &Icirc;ți vom arăta exemple de bune practici &icirc;n pregătirea testelor și tehnici avansate de Test Design.</p>\r\n', '2020-01-20', '2021-11-26', 14, 3000, 2500, '<p>Materia este scrisă pentru Tester-ul sau Analistul care dorește să aprofundeze metode progresiste de investigare a defectelor software pentru a dezvolta abilități avansate &icirc;n analiza, proiectarea și execuția testelor.</p>\r\n', '<p>Să lucrezi cu JIRA, Postman, N++, Putty, SQL IDE, Intellij, Chrome | Să testezi aplicații web, folosindu-te de: HTML, CSS, XPATH, XML, JSON, Linux și SQL | Concepte avansate de testare - extended boundary analysis, pair-wise și decision table</p>\r\n', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n', '<p><strong>Sprint-uri</strong>:</p>\r\n\r\n<ul>\r\n	<li>Sprint 1 -</li>\r\n	<li>Sprint 2 -</li>\r\n	<li>Sprint 3 -</li>\r\n	<li>Sprint 4 -</li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n', '<p>Cursul de Advanced Software testing este gandit pentru a ajuta fiecate QA Engineersa isi creasca competentele avute in testarea manuala. El este adresat persoanelor ce au experienta in acest domeniu dar isi dorescsa progreseze in cariera, prin cresterea competentelor avute, atat tehnice cat si analitice.</p>\r\n\r\n<p>Fie ca abia ai inceput o cariera in testare sau profesezi de ceva timp, cursul Advanced Software testing este gandit sa iti consolideze cunostintele avute in testare software dar si sa cimenteze cunostinte noi, necesare pentru a avansa in senioritate.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele necesare pentru a putea livra o testare eficienta si de calitate, in cadrul proiectelor. Cursul este gandit ca o punte spre Initiere in Testarea Automata, insa permite studentilor si o specializare intensiva in zona testarii manuale.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testare Software sau să fi absolvit cursul de Inițiere &icirc;n Software Testing</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ol>\r\n	<li>Introducere</li>\r\n	<li>Testarea Web și de Rețea</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Testarea Linux și SQL</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Practici Avansate de Testare</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Evaluarea Competențelor</li>\r\n</ol>\r\n', NULL, NULL, 0, 1, 0, 1, 'Online', NULL, NULL, NULL),
(66, 3, 'Iteratia 23/2020', '… sau cum să treci la nivelul următor în Test Automation.', '<p>Advanced Test Automation se concentrează pe construirea unui sistem de testare automată, folosind WebdriverIO, Mocha sau Cucumber ca framework de testare și Chai ca librarie de assert-uri.</p>\r\n\r\n<p>Toate conceptele teoretice, metodele specifice Webdriver și cele mai bune practici de automatizare sunt combinate cu exerciții practice.</p>\r\n', '2020-04-02', '2020-05-14', 20, 3300, 123, '<p>Test Automation Engineers care vor să aprofundeze cunoştintele de testare automată şi să se familiarizeze cu Webdriver, WebdriverIO / Mocha-Cucumber | Development Managers, QA Managers care vor să-şi extindă cunoştinele legate de tool-urile Selenium.</p>\r\n', '<p>Să lucrezi cu WebdriverIO | &Icirc;nțelegerea standardului W3C Webdriver | Controlarea suitei de instrumente Selenium | &Icirc;nțelegerea arhitecturii Selenium</p>\r\n', '<p>Taxa de &icirc;nscriere este 3300 de Lei | Poţi plăti eşalonat, &icirc;n două sau trei etape | Beneficiază de politica noastră de reduceri | Vezi ofertele mai jos.</p>\r\n', '<p>123</p>\r\n', '<h3>Cursul durează 7 săptăm&acirc;ni şi este compus din 14 sesiuni.</h3>\r\n\r\n<p>&Icirc;nainte de curs, instalează:</p>\r\n\r\n<ul>\r\n	<li>Java (Java Runtime Environment 1.8.0)</li>\r\n	<li>NodeJS (ultima versiune)</li>\r\n	<li>Un emulator de consolă robustă (de exemplu: ConEmu, GitBash, consola Cod VS etc.)</li>\r\n	<li>Un editor de text cu care lucrezi bine (de ex.: Sublime, Atom, VS Code, etc.)</li>\r\n</ul>\r\n\r\n<p>Pentru partea practică e nevoie să &icirc;ţi aduci laptopul. Nu ai cont public pe GitHub? Nu uita să &icirc;ţi faci &icirc;nainte.</p>\r\n', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testarea Automatizată sau să fi absolvit cursul de Inițiere Test Automation: Rest API &amp; UI</p>\r\n', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n', '<ul>\r\n	<li>Part I: An introduction to JavaScript (part I)</li>\r\n	<li>Part II: I&rsquo;ll call you back! Callbacks, Promises &amp; Async/Await</li>\r\n	<li>Part III: Automation: Yay, or Nay? The Why&rsquo;s &amp; When&rsquo;s</li>\r\n	<li>Part IV: Selenium - Not just the 34th element</li>\r\n	<li>Part V: Locators - Inside the DOM</li>\r\n	<li>Part VI: Enter WebdriverIO</li>\r\n	<li>Part VII: Selenium Grid - Scale beyond imagination</li>\r\n	<li>Part VIII: Take IT (WebdriverIO framework) for a spin</li>\r\n	<li>Part IX: BUGs are in the &ldquo;eyes&rdquo; of the beholder (Visual Regression)</li>\r\n	<li>Part X: Final Exam</li>\r\n</ul>\r\n', NULL, NULL, 0, 1, 0, 1, 'Online', NULL, NULL, NULL);
INSERT INTO `classes` (`id`, `main_class_id`, `title`, `short_description`, `description`, `registration_start_date`, `registration_end_date`, `students`, `price`, `discount_price`, `for_whom_description`, `about_description`, `cost_description`, `resources_description`, `structure_description`, `requirements_description`, `early_description`, `loyality_description`, `friends_description`, `discount_description`, `schedule`, `schedule_pdf`, `image`, `weekend`, `is_active`, `is_planned`, `is_bucharest_located`, `deployment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(67, 5, 'Iteratia 1/2021', 'De la execuție la strategie de testare nu e decât un curs. Acesta.', '<p>Cu o abordare practică, bogată &icirc;n exerciții, cursul de <strong>Advanced Software Testing</strong> vă &icirc;nvață cum să definiți și să &icirc;ndepliniți sarcinile necesare pentru a pune &icirc;n aplicare o strategie de testare.</p>\r\n\r\n<p>Vei &icirc;nvăța cum să testezi mai bine și eficient aplicații web și cum să lucrezi cu Linux și SQL pentru a testa complet aplicații complexe. &Icirc;ți vom arăta exemple de bune practici &icirc;n pregătirea testelor și tehnici avansate de Test Design.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2021-02-08', '2021-03-26', 14, 3000, 2500, '<p>Materia este scrisă pentru Tester-ul sau Analistul care dorește să aprofundeze metode progresiste de investigare a defectelor software pentru a dezvolta abilități avansate &icirc;n analiza, proiectarea și execuția testelor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>Să lucrezi cu JIRA, Postman, N++, Putty, SQL IDE, Intellij, Chrome | Să testezi aplicații web, folosindu-te de: HTML, CSS, XPATH, XML, JSON, Linux și SQL | Concepte avansate de testare - extended boundary analysis, pair-wise și decision table</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p><strong>Sprint-uri</strong>:</p>\r\n\r\n<ul>\r\n	<li>Sprint 1 -</li>\r\n	<li>Sprint 2 -</li>\r\n	<li>Sprint 3 -</li>\r\n	<li>Sprint 4 -</li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>Cursul de Advanced Software testing este gandit pentru a ajuta fiecate QA Engineersa isi creasca competentele avute in testarea manuala. El este adresat persoanelor ce au experienta in acest domeniu dar isi dorescsa progreseze in cariera, prin cresterea competentelor avute, atat tehnice cat si analitice.</p>\r\n\r\n<p>Fie ca abia ai inceput o cariera in testare sau profesezi de ceva timp, cursul Advanced Software testing este gandit sa iti consolideze cunostintele avute in testare software dar si sa cimenteze cunostinte noi, necesare pentru a avansa in senioritate.</p>\r\n\r\n<p>Obiectivul cursului este să ofere participantilor cunostintele necesare pentru a putea livra o testare eficienta si de calitate, in cadrul proiectelor. Cursul este gandit ca o punte spre Initiere in Testarea Automata, insa permite studentilor si o specializare intensiva in zona testarii manuale.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>Este recomandat să ai minim un an de experiență &icirc;n Testare Software sau să fi absolvit cursul de Inițiere &icirc;n Software Testing</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<ol>\r\n	<li>Introducere</li>\r\n	<li>Testarea Web și de Rețea</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Testarea Linux și SQL</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Practici Avansate de Testare</li>\r\n	<li>Practică și Aprofundare</li>\r\n	<li>Evaluarea Competențelor</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'advanced-test-automation.png', 0, 1, 0, 1, 'Online', NULL, '2020-11-24 09:34:38', NULL),
(68, 1, 'Iteratia 1/2021', 'Învaţă tot ce trebuie să ştie un Junior Software Tester.', '<p>Iniţiere &icirc;n Software Testing &icirc;ţi prezintă profesia de testare software, noţiunile introductive teoretice şi practice din zona testării manuale funcţionale.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '2021-02-01', '2021-02-19', 15, 1500, 1200, '<p>Persoanelor fără experienţă &icirc;n domeniu, dar care &icirc;şi doresc să &icirc;nceapă o carieră &icirc;n această profesie.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>Nevoia de testare software | Cele mai răsp&acirc;ndite modele de dezvoltare software | Livrabilele şi cele mai utilizate clasificări ale testării | Tehnici de design ale test case-urilor | Să lucrezi cu tool-urile JIRA și Zephyr</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>Poţi plăti eşalonat, &icirc;n două sau trei rate &bull; Beneficiază de politica noastră de reduceri &bull; Vezi ofertele mai jos.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p><strong>Site-uri test</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ver1.academiatestarii.ro\" target=\"_blank\">ver1.academiatestarii.ro</a></li>\r\n	<li><a href=\"https://ver2.academiatestarii.ro\" target=\"_blank\">ver2.academiatestarii.ro </a></li>\r\n	<li><a href=\"https://ver3.academiatestarii.ro\" target=\"_blank\">ver3.academiatestarii.ro </a></li>\r\n</ul>\r\n\r\n<p><strong>Aditional</strong>:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://academiatestarii.atlassian.net\" target=\"_blank\">academiatestarii.atlassian.net </a></li>\r\n	<li><a href=\"https://acadtest.atlassian.net\" target=\"_blank\">acadtest.atlassian.net</a></li>\r\n</ul>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<h3>Ne adaptăm programul de cursuri la disponibilitatea de timp, a cursanţilor noştri.</h3>\r\n\r\n<p><strong>Iniţiere &icirc;n Software Testing</strong> este livrat &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend. Indiferent de varianta pe care o alegi, cursul durează 24 ore, iar trecerea de la teorie la aplicabilitate se face treptat;</p>\r\n\r\n<p><strong>Familiarizare:</strong> prezentăm conceptele fundamentale şi ne concentrăm pe &icirc;nvăţarea şi aplicarea tehnicilor de testare;</p>\r\n\r\n<p><strong>Simulare:</strong> punem accent &icirc;n totalitate pe partea practică, individual şi &icirc;n echipă. Pe parcursul orelor de curs vei putea identifica şi rezolva defecte software &icirc;n timp real, cu ajutorul şi sub supravegherea noastră.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>Este un curs de iniţiere, pentru care trebuie să ai cunoştinte medii de limba engleză şi operare PC.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>10% discount dacă te &icirc;nscrii cu cel mult o lună &icirc;nainte de &icirc;nceperea cursului. | Reducerea se aplică la achitarea integrală a taxei de &icirc;nscriere.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>10% discount pentru foşti absolvenţi Academia Testării. | Reducerile Loyalty &amp; Early Bird se pot cumula.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>10% discount daca &icirc;nscrii un grup de 3 sau mai multe persoane. | Reducerile Early Bird şi Loyalty nu se cumulează cu aceasta.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<p>10% discount pentru companiile care &icirc;nscriu un grup de 3 sau 4 persoane. | Pentru grupuri mai mari de 5, scrie-ne la contact@academiatestarii.ro.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', '<ul>\r\n	<li>I. Introduction to software testing</li>\r\n	<li>II. Agile &amp; SCRUM</li>\r\n	<li>III. Functional &amp; Non-functional testing</li>\r\n	<li>IV. Test cases &amp; Zephyr</li>\r\n	<li>V. Test case design techniques</li>\r\n	<li>VI. Defects &amp; JIRA</li>\r\n	<li>VII &ndash; X. Hands-on practice</li>\r\n	<li>XI-XII. Final exam</li>\r\n</ul>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>', 'Prezentare-Initiere-in-Software-Testing_1.pdf', 'initiere-software-testing-week.png', 0, 1, 0, 1, 'Online', '2020-11-25 12:37:29', '2020-11-25 12:37:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_dates`
--

CREATE TABLE `class_dates` (
  `id` int(6) NOT NULL,
  `class_id` int(6) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_dates`
--

INSERT INTO `class_dates` (`id`, `class_id`, `date`) VALUES
(1241, 11, '2020-09-23'),
(1360, 1, '2020-01-29'),
(1359, 1, '2020-01-26'),
(1358, 1, '2020-01-23'),
(1357, 1, '2020-01-22'),
(1356, 1, '2020-01-20'),
(1355, 1, '2020-01-16'),
(1354, 1, '2020-01-15'),
(1353, 1, '2020-01-13'),
(1512, 2, '2020-03-04'),
(1511, 2, '2020-03-02'),
(1510, 2, '2020-02-27'),
(1509, 2, '2020-02-26'),
(1508, 2, '2020-02-24'),
(1507, 2, '2020-02-20'),
(1506, 2, '2020-02-19'),
(1505, 2, '2020-02-17'),
(1504, 2, '2020-02-13'),
(1503, 2, '2020-02-12'),
(1502, 2, '2020-02-10'),
(1501, 2, '2020-02-06'),
(1500, 2, '2020-02-05'),
(1499, 2, '2020-02-03'),
(1605, 3, '2020-05-14'),
(1604, 3, '2020-05-11'),
(1603, 3, '2020-05-07'),
(1602, 3, '2020-05-04'),
(1601, 3, '2020-04-27'),
(1600, 3, '2020-04-23'),
(1599, 3, '2020-04-20'),
(1598, 3, '2020-04-16'),
(1597, 3, '2020-04-13'),
(1596, 3, '2020-04-09'),
(1595, 3, '2020-04-06'),
(1594, 3, '2020-04-02'),
(1593, 3, '2020-03-30'),
(1592, 3, '2020-03-26'),
(481, 4, '0000-00-00'),
(1240, 11, '2020-09-21'),
(1239, 11, '2020-09-17'),
(1238, 11, '2020-09-16'),
(1237, 11, '2020-09-14'),
(1236, 11, '2020-09-10'),
(2696, 21, '2020-07-01'),
(2695, 21, '2020-06-29'),
(1621, 7, '2020-02-09'),
(1351, 5, '2020-04-13'),
(2694, 21, '2020-06-25'),
(2693, 21, '2020-06-24'),
(2692, 21, '2020-06-22'),
(2691, 21, '2020-06-18'),
(1918, 6, '2020-05-31'),
(1917, 6, '2020-05-30'),
(1916, 6, '2020-05-24'),
(1915, 6, '2020-05-23'),
(934, 8, '2020-07-01'),
(933, 8, '2020-06-29'),
(1620, 7, '2020-02-08'),
(1619, 7, '2020-02-02'),
(1352, 5, '2020-04-15'),
(1618, 7, '2020-02-01'),
(932, 8, '2020-06-25'),
(931, 8, '2020-06-24'),
(930, 8, '2020-06-22'),
(929, 8, '2020-06-18'),
(928, 8, '2020-06-17'),
(927, 8, '2020-06-15'),
(1591, 9, '2020-02-29'),
(1590, 9, '2020-02-28'),
(1589, 9, '2020-02-22'),
(1588, 9, '2020-02-21'),
(1587, 9, '2020-02-15'),
(1586, 9, '2020-02-14'),
(1585, 9, '2020-02-08'),
(1584, 9, '2020-02-07'),
(1583, 9, '2020-02-01'),
(1617, 10, '2020-05-14'),
(1616, 10, '2020-05-11'),
(1615, 10, '2020-05-07'),
(1614, 10, '2020-05-04'),
(1613, 10, '2020-04-27'),
(1612, 10, '2020-04-23'),
(1611, 10, '2020-04-20'),
(1610, 10, '2020-04-16'),
(1609, 10, '2020-04-13'),
(1608, 10, '2020-04-09'),
(1607, 10, '2020-04-06'),
(1606, 10, '2020-04-02'),
(1235, 11, '2020-09-09'),
(1234, 11, '2020-09-07'),
(942, 12, '2020-10-28'),
(941, 12, '2020-10-26'),
(940, 12, '2020-10-22'),
(939, 12, '2020-10-21'),
(938, 12, '2020-10-19'),
(937, 12, '2020-10-15'),
(936, 12, '2020-10-14'),
(935, 12, '2020-10-12'),
(946, 13, '2020-11-15'),
(945, 13, '2020-11-14'),
(944, 13, '2020-11-08'),
(943, 13, '2020-11-07'),
(954, 14, '2020-12-03'),
(953, 14, '2020-11-30'),
(952, 14, '2020-11-26'),
(951, 14, '2020-11-25'),
(950, 14, '2020-11-23'),
(949, 14, '2020-11-19'),
(948, 14, '2020-11-18'),
(947, 14, '2020-11-16'),
(1437, 19, '2020-03-27'),
(1350, 5, '2020-04-09'),
(1858, 15, '2020-06-03'),
(1857, 15, '2020-06-01'),
(1856, 15, '2020-05-28'),
(1855, 15, '2020-05-27'),
(1854, 15, '2020-05-25'),
(1853, 15, '2020-05-21'),
(1852, 15, '2020-05-20'),
(1851, 15, '2020-05-18'),
(1850, 15, '2020-05-14'),
(1849, 15, '2020-05-13'),
(1848, 15, '2020-05-11'),
(1847, 15, '2020-05-07'),
(1846, 15, '2020-05-06'),
(1845, 15, '2020-05-04'),
(2706, 56, '2020-10-01'),
(2705, 56, '2020-09-28'),
(2704, 56, '2020-09-24'),
(2703, 56, '2020-09-21'),
(2702, 56, '2020-09-17'),
(1904, 16, '2020-07-08'),
(1903, 16, '2020-07-06'),
(1902, 16, '2020-07-01'),
(1901, 16, '2020-06-29'),
(1900, 16, '2020-06-24'),
(1899, 16, '2020-06-22'),
(1898, 16, '2020-06-17'),
(1897, 16, '2020-06-15'),
(1896, 16, '2020-06-10'),
(1010, 17, '2020-12-09'),
(1009, 17, '2020-12-07'),
(1008, 17, '2020-12-02'),
(1007, 17, '2020-11-30'),
(1006, 17, '2020-11-25'),
(1005, 17, '2020-11-23'),
(1004, 17, '2020-11-18'),
(1003, 17, '2020-11-16'),
(1002, 17, '2020-11-11'),
(1001, 17, '2020-11-09'),
(1000, 17, '2020-11-04'),
(999, 17, '2020-11-02'),
(998, 17, '2020-10-28'),
(997, 17, '2020-10-26'),
(821, 18, '2021-01-27'),
(820, 18, '2021-01-25'),
(819, 18, '2021-01-21'),
(818, 18, '2021-01-20'),
(817, 18, '2021-01-18'),
(816, 18, '2021-01-14'),
(815, 18, '2021-01-13'),
(814, 18, '2021-01-11'),
(1349, 5, '2020-04-08'),
(2690, 21, '2020-06-17'),
(1436, 19, '2020-03-23'),
(2668, 20, '2020-07-30'),
(2667, 20, '2020-07-28'),
(1348, 5, '2020-04-06'),
(1347, 5, '2020-04-02'),
(1346, 5, '2020-04-01'),
(1345, 5, '2020-03-30'),
(2689, 21, '2020-06-15'),
(2598, 22, '2020-09-23'),
(2597, 22, '2020-09-21'),
(2596, 22, '2020-09-17'),
(2595, 22, '2020-09-16'),
(2594, 22, '2020-09-14'),
(2593, 22, '2020-09-10'),
(2592, 22, '2020-09-09'),
(2591, 22, '2020-09-07'),
(2602, 23, '2020-11-15'),
(2601, 23, '2020-11-14'),
(2600, 23, '2020-11-08'),
(2599, 23, '2020-11-07'),
(2610, 24, '2020-12-09'),
(2609, 24, '2020-12-07'),
(2608, 24, '2020-12-03'),
(2607, 24, '2020-12-02'),
(2606, 24, '2020-11-30'),
(2605, 24, '2020-11-26'),
(2604, 24, '2020-11-25'),
(2603, 24, '2020-11-23'),
(1435, 19, '2020-03-20'),
(1434, 19, '2020-03-16'),
(1433, 19, '2020-03-13'),
(1432, 19, '2020-03-09'),
(1431, 19, '2020-03-06'),
(1430, 19, '2020-03-02'),
(1429, 19, '2020-02-28'),
(1428, 19, '2020-02-24'),
(1427, 19, '2020-02-21'),
(1426, 19, '2020-02-17'),
(2752, 25, '2020-11-27'),
(2751, 25, '2020-11-23'),
(2750, 25, '2020-11-20'),
(2749, 25, '2020-11-16'),
(2748, 25, '2020-11-13'),
(2747, 25, '2020-11-09'),
(2746, 25, '2020-11-06'),
(2745, 25, '2020-11-02'),
(2744, 25, '2020-10-30'),
(2743, 25, '2020-10-26'),
(2742, 25, '2020-10-23'),
(2741, 25, '2020-10-19'),
(1895, 16, '2020-06-08'),
(1894, 16, '2020-06-03'),
(1893, 16, '2020-06-01'),
(1892, 16, '2020-05-27'),
(1891, 16, '2020-05-25'),
(1513, 2, '2020-03-05'),
(1514, 2, '2020-03-09'),
(1515, 2, '2020-03-11'),
(1516, 2, '2020-03-12'),
(1517, 2, '2020-03-16'),
(1518, 2, '2020-03-18'),
(1844, 15, '2020-04-30'),
(1843, 15, '2020-04-29'),
(1842, 15, '2020-04-27'),
(1841, 15, '2020-04-23'),
(1840, 15, '2020-04-22'),
(1839, 15, '2020-04-20'),
(2656, 58, '2020-12-09'),
(2655, 58, '2020-12-07'),
(2654, 58, '2020-12-02'),
(2653, 58, '2020-11-30'),
(2652, 58, '2020-11-25'),
(2651, 58, '2020-11-23'),
(2720, 26, '2020-10-15'),
(2719, 26, '2020-10-13'),
(2718, 26, '2020-10-08'),
(2717, 26, '2020-10-06'),
(2716, 26, '2020-10-01'),
(2715, 26, '2020-09-29'),
(2714, 26, '2020-09-24'),
(2713, 26, '2020-09-22'),
(2712, 26, '2020-09-17'),
(2711, 26, '2020-09-15'),
(2710, 26, '2020-09-10'),
(2709, 26, '2020-09-08'),
(2708, 26, '2020-09-03'),
(2707, 26, '2020-09-01'),
(2666, 20, '2020-07-23'),
(2665, 20, '2020-07-21'),
(2664, 20, '2020-07-16'),
(2663, 20, '2020-07-14'),
(2662, 20, '2020-07-09'),
(2661, 20, '2020-07-07'),
(2660, 20, '2020-07-02'),
(2659, 20, '2020-06-30'),
(2658, 20, '2020-06-25'),
(2657, 20, '2020-06-23'),
(2680, 27, '2020-10-29'),
(2679, 27, '2020-10-27'),
(2678, 27, '2020-10-22'),
(2677, 27, '2020-10-20'),
(2676, 27, '2020-10-15'),
(2675, 27, '2020-10-13'),
(2674, 27, '2020-10-08'),
(2673, 27, '2020-10-06'),
(2672, 27, '2020-10-01'),
(2671, 27, '2020-09-29'),
(2670, 27, '2020-09-24'),
(2669, 27, '2020-09-22'),
(1672, 28, '2019-01-29'),
(1671, 28, '2019-01-13'),
(1680, 29, '2018-07-25'),
(1679, 29, '2018-06-11'),
(1698, 44, '2018-11-18'),
(1697, 44, '2018-11-10'),
(1696, 30, '2018-09-30'),
(1695, 30, '2018-09-22'),
(1709, 50, '2019-02-18'),
(1708, 49, '2019-03-18'),
(1707, 49, '2019-02-03'),
(1706, 31, '2018-11-18'),
(1705, 31, '2018-11-09'),
(1662, 32, '2018-04-11'),
(1661, 32, '2018-03-05'),
(1663, 33, '2018-05-07'),
(1664, 33, '2018-06-13'),
(1665, 34, '2018-06-25'),
(1666, 34, '2018-08-01'),
(1667, 35, '2018-08-20'),
(1668, 35, '2018-09-05'),
(1669, 36, '2018-09-03'),
(1670, 36, '2018-09-19'),
(1673, 37, '2019-03-04'),
(1674, 37, '2019-03-20'),
(1675, 38, '2019-09-02'),
(1676, 38, '2019-09-18'),
(1677, 39, '2019-11-11'),
(1678, 39, '2019-11-27'),
(1681, 40, '2018-09-03'),
(1682, 40, '2018-10-17'),
(1683, 41, '2018-10-29'),
(1684, 41, '2018-12-12'),
(1685, 42, '2019-02-26'),
(1686, 42, '2019-04-10'),
(1687, 43, '2019-03-25'),
(1688, 43, '2019-05-16'),
(1693, 45, '2019-01-26'),
(1694, 45, '2019-02-03'),
(1699, 46, '2019-05-11'),
(1700, 46, '2019-05-19'),
(1701, 47, '2019-07-06'),
(1702, 47, '2019-07-14'),
(1703, 48, '2019-12-07'),
(1704, 48, '2019-12-15'),
(1710, 50, '2019-04-03'),
(1711, 51, '2019-09-23'),
(1712, 51, '2019-11-06'),
(1713, 52, '2018-01-15'),
(1714, 52, '2018-02-21'),
(1715, 53, '2018-03-05'),
(1716, 53, '2018-04-18'),
(1717, 54, '2019-06-03'),
(1718, 54, '2019-07-17'),
(2572, 55, '2020-07-16'),
(2571, 55, '2020-07-13'),
(2570, 55, '2020-07-09'),
(2569, 55, '2020-07-06'),
(2568, 55, '2020-07-02'),
(2567, 55, '2020-06-29'),
(2566, 55, '2020-06-25'),
(2565, 55, '2020-06-22'),
(2564, 55, '2020-06-18'),
(2563, 55, '2020-06-15'),
(2701, 56, '2020-09-14'),
(2700, 56, '2020-09-10'),
(2699, 56, '2020-09-07'),
(2698, 56, '2020-09-03'),
(2697, 56, '2020-08-31'),
(2388, 57, '2020-08-07'),
(2387, 57, '2020-08-03'),
(2386, 57, '2020-07-31'),
(2385, 57, '2020-07-27'),
(2384, 57, '2020-07-24'),
(2383, 57, '2020-07-20'),
(2382, 57, '2020-07-17'),
(2381, 57, '2020-07-13'),
(2380, 57, '2020-07-10'),
(2379, 57, '2020-07-06'),
(2378, 57, '2020-07-03'),
(2377, 57, '2020-06-29'),
(2376, 57, '2020-06-26'),
(2375, 57, '2020-06-22'),
(2374, 57, '2020-06-19'),
(2373, 57, '2020-06-15'),
(2372, 57, '2020-06-12'),
(2371, 57, '2020-06-08'),
(2740, 25, '2020-10-16'),
(2739, 25, '2020-10-12'),
(2738, 25, '2020-10-09'),
(2737, 25, '2020-10-05'),
(2736, 25, '2020-10-02'),
(2735, 25, '2020-09-28'),
(2650, 58, '2020-11-18'),
(2649, 58, '2020-11-16'),
(2648, 58, '2020-11-11'),
(2647, 58, '2020-11-09'),
(2646, 58, '2020-11-04'),
(2645, 58, '2020-11-02'),
(2644, 58, '2020-10-28'),
(2643, 58, '2020-10-26'),
(2721, 59, '2020-01-20'),
(2722, 59, '2020-01-22'),
(2723, 59, '2020-01-27'),
(2724, 59, '2020-01-29'),
(2725, 59, '2020-02-03'),
(2726, 59, '2020-02-05'),
(2727, 59, '2021-11-23'),
(2728, 59, '2021-11-26'),
(2729, 60, '2020-12-01'),
(2730, 60, '2020-12-03'),
(2731, 60, '2020-12-15'),
(2732, 60, '2020-12-17'),
(2733, 60, '2020-12-29'),
(2734, 60, '2020-12-31'),
(2833, 61, '2021-09-10'),
(2832, 61, '2020-11-13'),
(2831, 61, '2020-11-06'),
(2756, 62, '2020-09-22'),
(2757, 62, '2020-09-24'),
(2758, 62, '2020-09-29'),
(2759, 62, '2020-10-01'),
(2760, 62, '2020-10-06'),
(2761, 62, '2020-10-08'),
(2762, 62, '2020-10-13'),
(2763, 62, '2020-10-15'),
(2764, 62, '2020-10-20'),
(2765, 62, '2020-10-22'),
(2766, 62, '2020-10-27'),
(2767, 62, '2020-10-29'),
(2768, 63, '2020-08-31'),
(2769, 63, '2020-09-03'),
(2770, 63, '2020-09-07'),
(2771, 63, '2020-09-10'),
(2772, 63, '2020-09-14'),
(2773, 63, '2020-09-17'),
(2774, 63, '2020-09-21'),
(2775, 63, '2020-09-24'),
(2776, 63, '2020-09-28'),
(2777, 63, '2020-10-01'),
(2778, 64, '2020-08-31'),
(2779, 64, '2020-09-03'),
(2780, 64, '2020-09-07'),
(2781, 64, '2020-09-10'),
(2782, 64, '2020-09-14'),
(2783, 64, '2020-09-17'),
(2784, 64, '2020-09-21'),
(2785, 64, '2020-09-24'),
(2786, 64, '2020-09-28'),
(2787, 64, '2020-10-01'),
(2788, 65, '2020-08-31'),
(2789, 65, '2020-09-03'),
(2790, 65, '2020-09-07'),
(2791, 65, '2020-09-10'),
(2792, 65, '2020-09-14'),
(2793, 65, '2020-09-17'),
(2794, 65, '2020-09-21'),
(2795, 65, '2020-09-24'),
(2796, 65, '2020-09-28'),
(2797, 65, '2020-10-01'),
(2798, 66, '2020-04-02'),
(2799, 66, '2020-04-06'),
(2800, 66, '2020-04-09'),
(2801, 66, '2020-04-13'),
(2802, 66, '2020-04-16'),
(2803, 66, '2020-04-20'),
(2804, 66, '2020-04-23'),
(2805, 66, '2020-04-27'),
(2806, 66, '2020-05-04'),
(2807, 66, '2020-05-07'),
(2808, 66, '2020-05-11'),
(2809, 66, '2020-05-14'),
(2917, 67, '2021-03-26'),
(2916, 67, '2021-03-24'),
(2915, 67, '2021-03-22'),
(2914, 67, '2021-03-19'),
(2913, 67, '2021-03-17'),
(2912, 67, '2021-03-15'),
(2911, 67, '2021-03-12'),
(2910, 67, '2021-03-10'),
(2909, 67, '2021-03-08'),
(2908, 67, '2021-03-05'),
(2907, 67, '2021-03-03'),
(2906, 67, '2021-03-01'),
(2905, 67, '2021-02-26'),
(2904, 67, '2021-02-24'),
(2903, 67, '2021-02-22'),
(2902, 67, '2021-02-19'),
(2901, 67, '2021-02-17'),
(2900, 67, '2021-02-15'),
(2899, 67, '2021-02-12'),
(2898, 67, '2021-02-10'),
(2897, 67, '2021-02-08'),
(2918, 68, '2021-02-01'),
(2919, 68, '2021-02-03'),
(2920, 68, '2021-02-05'),
(2921, 68, '2021-02-08'),
(2922, 68, '2021-02-10'),
(2923, 68, '2021-02-12'),
(2924, 68, '2021-02-15'),
(2925, 68, '2021-02-17'),
(2926, 68, '2021-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(6) UNSIGNED NOT NULL,
  `student_id` int(6) UNSIGNED DEFAULT NULL,
  `class_id` int(6) UNSIGNED DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `payment_type` text DEFAULT NULL,
  `sign_up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `invoice` text DEFAULT NULL,
  `payment1` int(11) UNSIGNED DEFAULT 0,
  `payment2` int(11) UNSIGNED DEFAULT 0,
  `payment3` int(11) UNSIGNED DEFAULT 0,
  `payment_full` int(11) UNSIGNED DEFAULT 0,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_students`
--

INSERT INTO `class_students` (`id`, `student_id`, `class_id`, `payment_method`, `payment_type`, `sign_up_date`, `invoice`, `payment1`, `payment2`, `payment3`, `payment_full`, `note`) VALUES
(1, 53, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(2, 138, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(3, 140, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(4, 34, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(5, 76, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(6, 141, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(7, 158, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(8, 133, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(9, 121, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(10, 44, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(11, 19, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(12, 208, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(13, 64, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(14, 181, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(15, 100, 39, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(16, 226, 28, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(17, 95, 28, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(18, 225, 28, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(19, 16, 28, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(20, 97, 28, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(21, 114, 28, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(22, 129, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(23, 146, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(24, 199, 52, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(25, 155, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(26, 46, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(27, 144, 52, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(28, 128, 52, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(29, 152, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(30, 213, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(31, 202, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(32, 12, 52, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(33, 72, 52, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(34, 42, 52, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(35, 170, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(36, 96, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(37, 189, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(38, 107, 52, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(39, 85, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(40, 135, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(41, 101, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(42, 195, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(43, 21, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(44, 70, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(45, 212, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(46, 180, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(47, 20, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(48, 173, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(49, 132, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(50, 119, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(51, 193, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(52, 234, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(53, 136, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(54, 209, 38, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(55, 122, 34, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(56, 153, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(57, 77, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(58, 183, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(59, 13, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(60, 211, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(61, 174, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(62, 184, 34, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(63, 166, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(64, 162, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(65, 45, 34, 'cash', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(66, 23, 36, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(67, 222, 36, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(68, 79, 36, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(69, 60, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(70, 49, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(71, 81, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(72, 124, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(73, 41, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(74, 150, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(75, 165, 5, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(76, 51, 37, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(77, 125, 37, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(78, 112, 37, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(79, 175, 37, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(80, 185, 37, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(81, 48, 37, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(82, 65, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(83, 28, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(84, 98, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(85, 62, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(86, 33, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(87, 221, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(88, 161, 32, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(89, 35, 32, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(90, 59, 32, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(91, 57, 32, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(92, 73, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(93, 24, 32, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(94, 110, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(95, 18, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(96, 126, 32, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(97, 80, 33, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(98, 179, 33, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(99, 87, 33, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(100, 239, 33, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(101, 11, 33, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(102, 167, 33, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(103, 197, 33, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(104, 187, 33, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(105, 154, 33, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(106, 160, 33, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(107, 30, 29, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(108, 111, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(109, 172, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(110, 131, 29, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(111, 17, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(112, 130, 29, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(113, 113, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(114, 142, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(115, 207, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(116, 127, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(117, 89, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(118, 149, 29, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(119, 231, 29, 'cash', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(120, 88, 29, 'cash', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(121, 130, 43, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(122, 68, 42, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(123, 22, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(124, 50, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(125, 105, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(126, 147, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(127, 71, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(128, 118, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(129, 236, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(130, 82, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(131, 178, 41, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(132, 153, 40, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(133, 14, 40, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(134, 167, 40, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(135, 8, 40, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(136, 190, 40, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(137, 169, 53, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(138, 163, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(139, 86, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(140, 137, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(141, 204, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(142, 84, 53, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(143, 52, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(144, 177, 53, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(145, 58, 53, 'cash', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(146, 78, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(147, 109, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(148, 202, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(149, 171, 53, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(150, 27, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(151, 156, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(152, 31, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(153, 159, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(154, 220, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(155, 218, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(156, 75, 46, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(157, 108, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, ''),
(158, 116, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(159, 139, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(160, 39, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(161, 235, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(162, 223, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(163, 104, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(164, 188, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(165, 26, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(166, 238, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(167, 123, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(168, 61, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(169, 99, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(170, 200, 7, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(171, 25, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(172, 228, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(173, 145, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(174, 164, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(175, 47, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(176, 74, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(177, 115, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(178, 83, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(179, 151, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(180, 40, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(181, 36, 44, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(182, 182, 30, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(183, 237, 30, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(184, 206, 30, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(185, 25, 30, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(186, 91, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(187, 29, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(188, 66, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(189, 227, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(190, 148, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(191, 230, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(192, 232, 45, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(193, 32, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(194, 216, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(195, 143, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(196, 67, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(197, 168, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(198, 134, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(199, 85, 47, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(200, 102, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(201, 100, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(202, 43, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(203, 157, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(204, 189, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(205, 92, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(206, 196, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(207, 198, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(208, 194, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(209, 205, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(210, 54, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(211, 120, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(212, 38, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(213, 106, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(214, 55, 48, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(216, 37, 50, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(217, 233, 50, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(218, 191, 50, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(219, 224, 50, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(220, 203, 51, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(221, 186, 51, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(222, 21, 51, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(223, 20, 25, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, 'Achita pe 30 prima rata'),
(224, 69, 51, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(225, 101, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(226, 90, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(227, 240, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(228, 56, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(229, 103, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(230, 15, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(231, 21, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(232, 44, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(233, 217, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(234, 10, 49, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(235, 197, 54, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(236, 9, 54, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 1, 0, 1, NULL),
(237, 192, 54, 'banca', NULL, '2020-02-20 12:07:59', NULL, 1, 0, 0, 0, NULL),
(238, 201, 54, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(239, 210, 54, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(240, 215, 54, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(241, 227, 19, 'banca', NULL, '2020-02-20 12:07:59', NULL, 0, 0, 0, 0, NULL),
(250, 229, 16, NULL, NULL, '2020-04-27 06:24:19', NULL, 0, 0, 0, 0, 'achitat integral'),
(278, 364, 16, NULL, NULL, '2020-05-09 10:45:07', NULL, 0, 0, 0, 0, NULL),
(256, 344, 55, 'banca', 'integral', '2020-04-29 12:56:01', NULL, 0, 0, 0, 0, NULL),
(279, 365, 16, NULL, NULL, '2020-05-09 10:45:07', NULL, 0, 0, 0, 0, 'achitat integral'),
(277, 214, 21, NULL, NULL, '2020-05-09 10:45:07', NULL, 0, 0, 0, 0, 'achitat 2/2 rate / 50-50 Joi cu Vineri'),
(292, 379, 21, 'banca', 'trei_rate', '2020-05-26 01:47:02', NULL, 0, 0, 0, 0, 'n-a raspuns x2'),
(304, 267, 21, NULL, NULL, '2020-06-11 08:51:07', NULL, 0, 0, 0, 0, 'E ok cu Vineri.'),
(303, 390, 21, 'banca', 'doua_rate', '2020-06-09 14:23:13', NULL, 0, 0, 0, 0, 'E ok si Vineri (prefera Joi)'),
(280, 366, 27, NULL, NULL, '2020-05-09 10:45:43', NULL, 0, 0, 0, 0, 'A dorit sa fie mutat in per din Sept\r\n'),
(281, 367, 20, NULL, NULL, '2020-05-09 10:45:43', NULL, 0, 0, 0, 0, 'Urmeaza sa achite prima rata'),
(287, 374, 21, 'banca', 'integral', '2020-05-18 13:45:44', NULL, 0, 0, 0, 0, 'Achitat Integral /  Nu avantajeaza Vineri (dar e ok cu acordul grupului)\r\n'),
(291, 378, 26, 'banca', 'integral', '2020-05-25 07:35:58', NULL, 0, 0, 0, 0, 'achitat integral'),
(284, 371, 21, 'banca', 'integral', '2020-05-15 10:16:32', NULL, 0, 0, 0, 0, 'Integral achitat / e ok sa facem si pe 15 Iunie'),
(286, 373, 21, 'banca', 'integral', '2020-05-18 12:48:07', NULL, 0, 0, 0, 0, 'E din Londra / E ok si cu 15 Iunie / achitat integral / e ok si Vineri'),
(300, 387, 21, 'banca', 'doua_rate', '2020-06-04 04:14:23', NULL, 0, 0, 0, 0, 'achitat prima rata / ok vineri\r\n'),
(299, 386, 21, 'banca', 'integral', '2020-06-03 15:53:12', NULL, 0, 0, 0, 0, 'achitat prima rata / ok Vineri'),
(296, 383, 21, 'banca', 'trei_rate', '2020-05-28 14:49:47', NULL, 0, 0, 0, 0, 'achitat 1/3 rata / ok Vineri'),
(301, 388, 55, 'banca', 'trei_rate', '2020-06-04 21:47:51', NULL, 0, 0, 0, 0, 'Achitat prima rata'),
(302, 389, 26, 'banca', 'trei_rate', '2020-06-05 10:15:48', NULL, 0, 0, 0, 0, 'A achitat integral prin firma unui prieten'),
(305, 391, 20, 'banca', 'integral', '2020-06-11 10:00:12', NULL, 0, 0, 0, 0, 'A achitat integral'),
(306, 1, 55, 'banca', 'doua_rate', '2020-06-11 13:25:43', NULL, 0, 0, 0, 0, NULL),
(310, 396, 22, 'banca', 'doua_rate', '2020-06-28 07:52:04', NULL, 0, 0, 0, 0, 'achitat integral'),
(308, 394, 22, 'banca', 'trei_rate', '2020-06-21 13:38:27', NULL, 0, 0, 0, 0, 'achitat 400'),
(309, 395, 26, 'banca', 'integral', '2020-06-22 09:04:54', NULL, 0, 0, 0, 0, 'Castigatoare DevTalks'),
(311, 397, 22, 'banca', 'integral', '2020-07-08 11:19:56', NULL, 0, 0, 0, 0, 'achitat 1080'),
(312, 398, 22, 'banca', 'integral', '2020-07-15 13:13:28', NULL, 0, 0, 0, 0, 'Achitat 1080'),
(313, 400, 26, 'banca', 'integral', '2020-07-27 10:47:37', NULL, 0, 0, 0, 0, NULL),
(314, 401, 26, 'banca', 'integral', '2020-07-28 09:59:00', NULL, 0, 0, 0, 0, 'Roxana Olaru, Cosmin Trandafir si Valentin Ionescu.'),
(315, 402, 22, 'banca', 'integral', '2020-07-28 10:00:41', NULL, 0, 0, 0, 0, 'Curs gratis DevTalks'),
(318, 405, 22, 'banca', 'integral', '2020-08-04 19:14:25', NULL, 0, 0, 0, 0, 'Achitat 1080'),
(319, 406, 22, 'banca', 'trei_rate', '2020-08-11 17:11:29', NULL, 0, 0, 0, 0, 'Vorbit 31.08 urmeaza sa achite integral'),
(320, 407, 22, 'banca', 'integral', '2020-08-12 10:53:55', NULL, 0, 0, 0, 0, 'Achitat 1200'),
(322, 3, 56, 'banca', 'integral', '2020-08-18 08:24:24', NULL, 0, 0, 0, 0, NULL),
(323, 408, 22, 'banca', 'trei_rate', '2020-08-19 11:44:22', NULL, 0, 0, 0, 0, 'Achitat 400'),
(324, 409, 58, 'banca', 'integral', '2020-08-19 11:53:23', NULL, 0, 0, 0, 0, 'Achitat Integral din August'),
(325, 410, 22, 'banca', 'trei_rate', '2020-08-24 20:10:53', NULL, 0, 0, 0, 0, 'Achitat 400'),
(326, 411, 25, 'banca', 'integral', '2020-08-25 09:05:58', NULL, 0, 0, 0, 0, NULL),
(327, 412, 22, 'banca', 'integral', '2020-08-25 09:06:38', NULL, 0, 0, 0, 0, 'Platit de CBN'),
(328, 413, 26, 'banca', 'integral', '2020-08-25 09:07:17', NULL, 0, 0, 0, 0, NULL),
(329, 414, 26, 'banca', 'trei_rate', '2020-08-26 12:18:08', NULL, 0, 0, 0, 0, NULL),
(330, 415, 23, 'banca', 'trei_rate', '2020-08-27 12:52:06', NULL, 0, 0, 0, 0, 'Achitat Integral'),
(331, 102, 25, 'banca', 'integral', '2020-09-02 08:00:12', NULL, 0, 0, 0, 0, NULL),
(373, 459, 68, 'banca', 'integral', '2020-11-25 14:39:36', NULL, 0, 0, 0, 0, NULL),
(334, 418, 23, 'banca', 'trei_rate', '2020-09-16 07:57:31', NULL, 0, 0, 0, 0, 'achitat prima rata'),
(335, 419, 25, 'banca', 'trei_rate', '2020-09-22 09:15:19', NULL, 0, 0, 0, 0, NULL),
(336, 420, 23, 'banca', 'integral', '2020-09-23 06:58:30', NULL, 0, 0, 0, 0, 'achitat integral'),
(337, 421, 25, 'banca', 'integral', '2020-09-23 09:20:19', NULL, 0, 0, 0, 0, NULL),
(338, 422, 23, 'banca', 'integral', '2020-09-23 19:48:32', NULL, 0, 0, 0, 0, 'Prin Dl Stoica'),
(339, 423, 24, 'banca', 'integral', '2020-09-28 14:44:11', NULL, 0, 0, 0, 0, '975'),
(340, 424, 58, 'banca', 'integral', '2020-10-02 08:01:49', NULL, 0, 0, 0, 0, 'achitat Integral'),
(341, 425, 23, 'banca', 'integral', '2020-10-06 08:25:09', NULL, 0, 0, 0, 0, 'achitat integral'),
(342, 426, 23, 'banca', 'integral', '2020-10-06 11:02:06', NULL, 0, 0, 0, 0, 'achitat integral'),
(343, 427, 23, 'banca', 'integral', '2020-10-06 13:58:30', NULL, 0, 0, 0, 0, 'achitat integral'),
(344, 428, 23, 'banca', 'integral', '2020-10-07 06:54:15', NULL, 0, 0, 0, 0, 'achitat integral'),
(345, 429, 23, 'banca', 'integral', '2020-10-07 07:01:32', NULL, 0, 0, 0, 0, 'achitat integral'),
(346, 430, 23, 'banca', 'doua_rate', '2020-10-10 10:32:50', NULL, 0, 0, 0, 0, 'achitat prima rata'),
(347, 431, 23, 'banca', 'integral', '2020-10-13 09:53:30', NULL, 0, 0, 0, 0, 'Achitat integral'),
(349, 433, 58, 'banca', 'integral', '2020-10-13 19:36:16', NULL, 0, 0, 0, 0, 'DMT'),
(350, 434, 23, 'banca', 'integral', '2020-10-14 08:54:51', NULL, 0, 0, 0, 0, 'O sa plateasca'),
(352, 436, 23, 'banca', 'integral', '2020-10-14 12:53:38', NULL, 0, 0, 0, 0, 'achitat integral'),
(353, 225, 58, 'banca', 'integral', '2020-10-15 06:56:44', NULL, 0, 0, 0, 0, 'Achitat'),
(370, 456, 24, 'banca', 'doua_rate', '2020-11-20 13:54:00', NULL, 0, 0, 0, 0, NULL),
(355, 439, 58, 'banca', 'doua_rate', '2020-10-21 08:36:40', NULL, 0, 0, 0, 0, NULL),
(356, 440, 24, 'banca', 'integral', '2020-10-22 16:31:49', NULL, 0, 0, 0, 0, 'achitat integral'),
(359, 445, 24, 'banca', 'integral', '2020-11-08 19:31:21', NULL, 0, 0, 0, 0, '1200'),
(358, 443, 24, 'banca', 'doua_rate', '2020-11-03 09:19:02', NULL, 0, 0, 0, 0, NULL),
(360, 446, 24, 'banca', 'trei_rate', '2020-11-11 10:47:34', NULL, 0, 0, 0, 0, '400'),
(365, 450, 24, 'banca', 'integral', '2020-11-16 07:51:39', NULL, 0, 0, 0, 0, '1200'),
(364, 449, 24, 'banca', 'integral', '2020-11-14 14:23:35', NULL, 0, 0, 0, 0, '975 - BNI'),
(366, 451, 24, 'banca', 'trei_rate', '2020-11-16 08:06:37', NULL, 0, 0, 0, 0, '400'),
(367, 452, 24, 'banca', 'integral', '2020-11-16 17:41:01', NULL, 0, 0, 0, 0, 'Achitat Integral\r\n'),
(369, 455, 24, 'banca', 'trei_rate', '2020-11-20 09:05:20', NULL, 0, 0, 0, 0, NULL),
(371, 457, 24, 'banca', 'integral', '2020-11-20 16:30:44', NULL, 0, 0, 0, 0, NULL),
(372, 458, 67, 'banca', 'integral', '2020-11-24 19:26:18', NULL, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_trainers`
--

CREATE TABLE `class_trainers` (
  `id` int(6) NOT NULL,
  `trainer_id` int(6) DEFAULT NULL,
  `class_id` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_trainers`
--

INSERT INTO `class_trainers` (`id`, `trainer_id`, `class_id`) VALUES
(146, 3, 1),
(161, 3, 2),
(167, 1, 3),
(44, 3, 4),
(145, 3, 5),
(224, 3, 6),
(169, 3, 7),
(97, 3, 8),
(166, 1, 9),
(168, 1, 10),
(127, 3, 11),
(98, 3, 12),
(99, 3, 13),
(100, 3, 14),
(218, 3, 15),
(222, 3, 16),
(104, 3, 17),
(84, 3, 18),
(156, 6, 19),
(293, 5, 20),
(296, 3, 21),
(287, 3, 22),
(288, 3, 23),
(289, 3, 24),
(301, 6, 25),
(298, 3, 26),
(294, 5, 27),
(182, 3, 28),
(186, 3, 29),
(194, 3, 30),
(199, 3, 31),
(177, 3, 32),
(178, 3, 33),
(179, 3, 34),
(180, 3, 35),
(181, 3, 36),
(183, 3, 37),
(184, 3, 38),
(185, 3, 39),
(187, 3, 40),
(188, 3, 41),
(189, 3, 42),
(190, 3, 43),
(195, 3, 44),
(193, 3, 45),
(196, 3, 46),
(197, 3, 47),
(198, 3, 48),
(200, 3, 49),
(201, 3, 50),
(202, 3, 51),
(203, 3, 52),
(204, 3, 53),
(205, 3, 54),
(284, 7, 55),
(297, 7, 56),
(266, 6, 57),
(292, 3, 58),
(299, 6, 59),
(300, 6, 60),
(309, 6, 61),
(303, 5, 62),
(304, 7, 63),
(305, 7, 64),
(306, 7, 65),
(307, 1, 66),
(313, 6, 67),
(314, 3, 68);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `reply_id` int(10) UNSIGNED DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `email` mediumtext DEFAULT NULL,
  `webpage` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_active` int(10) UNSIGNED DEFAULT 1,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `reply_id`, `name`, `email`, `webpage`, `comment`, `is_active`, `added_on`) VALUES
(1, 1, NULL, 'Dan', 'dan@email.com', NULL, 'test comentariu', 1, '2020-01-28 13:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `name`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'prima pagina', 'Testarea e despre atenţia la detalii. <br />E pentru curioşi.', '<p>Un produs netestat poate &icirc;nsemna pagube financiare şi impact reputaţional negativ asupra companiilor sau, &icirc;n cel mai rau caz, asupra vieţii persoanelor care &icirc;l folosesc.</p>\r\n\r\n<p>Profesioniştii din domeniu verifică &ndash; fie manual, fie folosind instrumente automate &ndash;dacă produsele software aflate &icirc;n faza de dezvoltare respectă cerinţele si standardele de calitate.</p>\r\n\r\n<p>Astfel, testarea software identifica si raporteaza defectele din aplicatia software, inainte ca produsul sa fie disponibil pe piata.</p>', NULL, NULL),
(2, 'despre noi', 'Cine suntem si ce putem face pentru tine sau compania ta.', '<p>Oferim cursuri de pregătire specializată &icirc;n testare software, consultanță și servicii de resurse.</p>\r\n\r\n<p>Conectați la cele mai recente tendințe, practici, tehnologii și instrumente din industrie, avem o vastă experiență &icirc;n zonă, adunată prin aplicare practică &icirc;n procesul de dezvoltare timp de aproape 20 de ani.</p>\r\n', NULL, NULL),
(3, 'pentru testeri', 'Ce facem pentru tine', '<p>Oferim knowledge transfer &icirc;n Software Testing. Te &icirc;nvăţăm teoria, practica şi cum se lucrează &icirc;n echipă.<br />\r\nScopul? Să &icirc;ţi dezvolți abilităţile necesare pentru a contribui la livrarea unui produs software de primă clasă.</p>\r\n\r\n<p>Cursurile noastre sunt livrate &icirc;n două variante: &icirc;n timpul săptăm&acirc;nii şi &icirc;n weekend.</p>', NULL, NULL),
(4, 'pentru firme', 'Ce facem pentru companii', '<h3>Creşte-ţi echipa,&nbsp;motivează, evoluează.</h3>\r\n\r\n<p>Ce au &icirc;n comun companiile de software development multinaţionale, naţionale sau afacerile mici de tip start-up? Succesul afacerii lor e direct proporţional cu calitatea procesului de testare a produselor software pe care le dezvolta.</p>\r\n\r\n<p><strong>DACĂ VĂ DOARE CEVA, DAR NU ŞTIŢI EXACT CE&hellip;</strong> &nbsp; &hellip;vă propunem soluții complete și integrate de testare software care să maximizeze investiția şi să reducă riscurile tehnice.</p>', NULL, NULL),
(5, 'contact', 'Scrie-ne direct pe email:', '<p>Business Development&nbsp;&nbsp;</p>\r\n\r\n<p>florin@academiatestarii.ro</p>\r\n\r\n<p>george@academiatestarii.ro</p>\r\n\r\n<p>Marketing și Comunicare</p>\r\n\r\n<p>andrada@academiatestarii.ro</p>\r\n\r\n<p>Informații cursuri</p>\r\n\r\n<p>contact@academiatestarii.ro</p>\r\n\r\n<p>office@academiatestarii.ro</p>\r\n', NULL, NULL),
(6, 'termeni_si_conditii', 'Termeni şi condiţii', '<h4><b>TAXA DE ÎNSCRIERE</b></h4>\r\n<p>Taxa de înscriere este datorată de catre client si trebuie plătită cu, cel târziu, șapte (7) zile înainte de data începerii cursului.</p>\r\n<p>Taxa de înscriere include instruirea, materialele de curs, utilizarea software-ului, calculatoarelor și a altor materiale tehnice necesare desfăşurării cursului.</p>\r\n<p>Taxa de înscriere nu include cazare, mese, călătorii sau orice alte cheltuieli care ar putea fi suportate de clienții noștri.</p>\r\n<h4><b>PLATA</b></h4>\r\n<p>Plata taxei de inscriere de poate face integral sau in doua transe. Plata se realizeaza prin transfer bancar, in decurs de doua zile lucratoare de la efectuarea inscrierii pe site. In cazul in care termenul nu este respectat, Academia Testarii isi rezerva dreptul de a anula inscrierea.</p>\r\n<h4><b>SUBSTITUŢIILE PERMISE</b></h4>\r\n<p>Salutăm înscrierea unui înlocuitor la cursurile Academia Testării, cu condiția ca titularul să ne notifice în scris înainte de prima zi a cursului. Cu toate acestea, înlocuitorul trebuie să respecte profilul şi deţină cunoştintele obligatorii pentru a urma cursurile Academia Testării.</p>\r\n<h4><b>ANULARE / TRANSFER</b></h4>\r\n<p>Anulările sau transferurile se pot face pentru o rambursare integrală și fără nici o penalizare, cu cel puțin 14 zile înainte de prima zi a cursului. În caz contrar, întreaga taxă de înscriere va fi datorată și plătibilă.</p>\r\n<h4><b>PARTICIPANȚII CU DISABILITĂȚI</b></h4>\r\n<p>Ne angajăm să ajutăm participanții cu dizabilități la curs. La cerere scrisă, cu cel puțin două săptămâni înainte de începerea cursului, vom rezerva un spațiu sau un loc special în sală și / sau vom facilita acţiunile necesare pentru a ajuta orice participant cu dizabilități sau alte nevoi speciale.</p>\r\n<h4><b>SECURITATE</b></h4>\r\n<p>Toți participanții la curs se vor conforma măsurilor de securitate în vigoare la locul cursului, în privinţa cărora vor fi instruiţi în cadrul cursului introductiv.</p>\r\n<h4><b>CUNOȘTINȚELE CURSULUI</b></h4>\r\n<p>Ne rezervăm dreptul de a modifica programul cursurilor, în baza numărului de înscrieri. Vom încerca să oferim clienţilor cât mai multe notificări prealabile cu privire la orice schimbare de acest fel, cu cel putin 14 zile înainte de începerea cursului. În cazul în care clientul nu poate participa la data revizută, vom credita 100% din taxa de înscriere plătită anticipat sau, dacă ni se solicită, vom restitui aceste taxe. Cu toate acestea, nu vom fi răspunzatori pentru niciun fel de alte costuri, incluzând (de exemplu) taxele de călătorie sau orice alte daune.</p>\r\n<h4><b>COPYRIGHT / PROPRIETATE INTELECTUALĂ</b></h4>\r\n<p>Toate drepturile de autor, brevetele, desenele și alte drepturi de proprietate intelectuală din / legate de materialele de curs furnizate sau puse la dispoziție rămân proprietăți ale Academia Testării. Nicio parte a materialelor de curs nu poate fi reprodusă, stocată sau transmisă sub nicio formă, incluzând fotocopiere sau înregistrare. Este de asemenea interzisă traducerea materialelor în orice limbă, fără permisiunea scrisă şi prealabilă a Academia Testării.</p>\r\n<h4><b>GENERAL</b></h4>\r\n<p>Acești termeni și condiții reprezintă o declarație completă a acordului dintre părți și înlocuiesc toate discuțiile, corespondența și reprezentările anterioare.</p>\r\n<p>Broșurile, reclamele, postările Social Media ale Academia Testării sunt doar cu scop informativ și nu au ca scop încheierea unui acord între Academia Testării și destinatarul.</p>\r\n<p>Acești termeni și condiții pot fi modificați fără notificare prealabilă, iar schimbările se vor aplica oricăror înscrieri primite după data schimbării.</p>\r\n<p>Acești termeni și condiții nu pot fi modificați de către o terţă parte, cu excepția unui acord scris semnat de un reprezentant legal al Academia Testării.</p>\r\n<p>Acest acord va fi guvernat de, și interpretat în conformitate cu legislaţia in vigoare.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_module`
--

CREATE TABLE `db_module` (
  `id` int(11) NOT NULL,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `email` text NOT NULL,
  `occupation` text NOT NULL,
  `phone` text NOT NULL,
  `date_of_birth` text NOT NULL,
  `education` text NOT NULL,
  `foreign_languages` text NOT NULL,
  `period` text NOT NULL,
  `module` int(11) NOT NULL,
  `english` int(11) NOT NULL,
  `office` int(11) NOT NULL,
  `web` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `gdpr` int(11) DEFAULT NULL,
  `newsletter` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_module`
--

INSERT INTO `db_module` (`id`, `last_name`, `first_name`, `email`, `occupation`, `phone`, `date_of_birth`, `education`, `foreign_languages`, `period`, `module`, `english`, `office`, `web`, `user`, `status`, `payment_type`, `payment_method`, `gdpr`, `newsletter`) VALUES
(7, 'Popescu', 'Adriana', 'adrianaapopescuu@gmail.com', 'IT Recruitment Sourcer', '0728425121', '1994-01-12', 'Facultatea de Psihologie, Universitatea Titu Maiorescu', '', '1', 254, 3, 3, 3, 0, 1, 0, 2, 1, 1),
(13, 'Manolescu ', 'Florin', 'manolescuflorinandrei@gmail.com', 'QA Manager', '0726215388', '1983-08-25', 'BaC', '', '1', 254, 2, 1, 1, 0, 1, 0, 2, NULL, NULL),
(14, 'adam', 'flavius', 'flavius_adam@yahoo.com', 'helpdesk', '0757118892', '18121984', 'S.superioare', '', '1', 254, 3, 3, 3, 0, 1, 0, 2, NULL, NULL),
(4, 'Marin', 'Radu', 'radu.marin85@gmail.com', 'Ofiter bancar', '0763809645', '04/12/1985', 'Universitate absolvita - Relatii Internationale si Studii Europene', '', '1', 254, 3, 2, 1, 0, 1, 0, 2, NULL, NULL),
(3, 'Vlad ', 'Diana Alexandra', 'dianaalexandravlad@gmail.com', 'Student', '0724919847', '1994-04-05', 'SNSPA - FACULTATEA DE STIINTE POLITICE 2013-2016\r\nSNSPA- FACULTATEA DE COMUNICARE - MASTER RESURSE UMANE 2016-2018', '', '1', 254, 3, 2, 3, 0, 0, 0, 2, NULL, NULL),
(35, 'STANCU', 'NICOLAE', 'nicolae.stancu@db.com', 'Handyman la DB', '0763665236', '30.08.1968', 'Liceul cu bacalaureat.\r\nCursuri Office acreditate de Ministerul Educatiei, Cercetarii si Tineretului.\r\nAlte calificarii pentru diverse profesii acreditate de Minister Invatamant siI Muncii.', '', '1', 254, 2, 3, 3, 0, 1, 0, 2, NULL, NULL),
(120, 'Chetrone', 'Mirela', 'chiritoiumirela@gmail.com', 'Contabill', '0768258334', '07/27/1991', 'Studii superioare', '', '15 Ian – 21 Feb 2018', 254, 2, 2, 1, 933, 0, 1, 1, NULL, NULL),
(36, 'Stroe', 'Mirela', 'mirela-florentina.stroe@db.com', 'Frontdesk Officer', '0761863804', '04.04.1994', 'Colegiul National Anastasescu\r\nUniversitatea Nicolae Titulescu, Facultatea de Drept', '', '1', 254, 2, 1, 2, 0, 1, 0, 2, 1, 1),
(9, 'Manciu', 'Claudia Mihaela', 'manciuclaudia@yahoo.com', 'UAT Coordinator', '0762639020', '1986-03-12', 'Diploma licenta-Scoala Nationala de Studii Politice si Administrative-Administratie publica\r\nDiploma bacalaureat-Colegiul National Matei Basarab-Matematica-informatica', '', '1', 254, 3, 2, 1, 0, 0, 0, 2, NULL, NULL),
(10, 'Constantin', 'Mihai Alin', 'constantin.mihai.alin@gmail.com', 'Freelance', '0720516910', '1989-12-03', 'Facultatea de Cibernetica, Statistica si Informatica Economica', '', '1', 254, 3, 2, 3, 0, 1, 0, 2, NULL, NULL),
(11, 'Selaru', 'Simona Valentina', 'simona.selaru@yahoo.com', 'Senior Customer Service', '0729435472', '1981-02-24', 'Facultate', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(12, 'Dumitrescu', 'Laura', 'dumitrescu.lauramaria@yahoo.com', 'Analist servicii client', '0734697797', '1989-08-10', 'Universitatea Bucuresti, Facultatea de limbi straine - Master Studii Est Asiatice', '', '1', 254, 3, 2, 2, 0, 1, 0, 2, 1, 1),
(15, 'Pastia', 'Ruxandra', 'ruxandra.baran@outlook.com', 'Operations Manager', '0722566918', '1987-05-10', 'ASE - Master Geopolitica si Relatii Economice Internationale', '', '1', 254, 3, 3, 1, 0, 1, 0, 2, NULL, NULL),
(16, 'Radu ', 'Alexandra', 'alexandra.radu4595@gmail.com', 'Student', '0735447949', '1995-04-05', '-Liceul \"Gheorghe Lazar\", Plopeni, Specializarea Mate-Info\r\n-Universitatea \"Petrol-Gaze\",Ploiesti, Specializarea Informatica (Ultimul an, finalizare 10 iulie)', '', '1', 254, 2, 2, 1, 0, 1, 0, 2, 1, 1),
(31, 'Davidoglu', 'Andrei', 'diandrei@gmail.com', 'Asset and Configuration Manager', '0722506787', '1984-03-25', 'Universitatea Romano-Americana, Facultatea de Informatica Manageriala', '', '1', 254, 2, 3, 3, 0, 1, 0, 2, NULL, NULL),
(32, 'Petrea', 'Daniela', 'danielapetreav@gmail.com', 'inginer chimist', '0729902966', '1987-12-08', 'studii superioare', '', '1', 254, 3, 3, 2, 0, 1, 0, 2, NULL, NULL),
(33, 'Chiriac', 'Roxana', 'Roxanachiriac05@gmail.com', 'Analist servicii clienti', '0726315073', '1993-07-27', '', '', '1', 254, 2, 1, 1, 0, 1, 0, 2, NULL, NULL),
(37, 'Stanciu', 'Alis Alexandra', 'alis.stanciu@gmail.com', 'Administrare credite retail', '0726138031', '12.05.1988', 'Master in Managementul Afacerilor', '', '1', 254, 2, 2, 1, 0, 1, 0, 2, NULL, NULL),
(65, 'IOFCIU', 'MIRABELA', 'mirabela.iofciu@gmail.com', 'ECONOMIST', '0785379330', '1983-07-27', 'Facultate absolvita ASE-REI', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(66, 'Caciulan', 'Dana Sorina', 'danasorina2001@gmail.com', 'NOC Tehnician', '0761739790', '1992-01-11', 'Masterat: Finante - Banci', '', '1', 254, 3, 2, 1, 0, 1, 0, 2, 1, 1),
(39, 'Raveanu', 'Ioana Alexandra', 'ioana.raveanu@outlook.com', 'Functional Consultant', '0725527738', '1989-11-08', 'Licenta: Finante-Banci, ASE, Bucuresti', '', '1', 254, 3, 2, 1, 0, 1, 0, 2, NULL, NULL),
(40, 'Alexandra', 'Aldea', 'alexxandra.aldea@gmail.com', 'Inginer', '0767343851', '11-OCT-1991', 'Facultatea de Medicina Veterinara, specializarea \"Controlul si Expertiza produselor alimentare\".', '', '1', 254, 2, 1, 1, 0, 1, 0, 2, NULL, NULL),
(47, 'Munteanu', 'Petre', 'munteanupetre19@gmail.com', 'Analist', '0733938894', '1986-11-19', 'Economist', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(46, 'Fratila', 'Romeo', 'romeofratila74@yahoo.fr', 'Logistician', '0771535610', '1974-08-30', 'FACULTATEA DE LITERE SI STIINTE UPG PLOIESTI:\r\nCONTABILITATE SI INFORMATICA DE GESTIUNE;\r\n\r\nACADEMIA FORTELOR AERIENE HENRI COANDA BRASOV: \r\nELECTROMECANICA.\r\n', '', '1', 254, 2, 3, 1, 0, 1, 0, 2, NULL, NULL),
(45, 'Bucur', 'Marian', 'marianbucur88@gmail.com', 'Individuals Lending officer', '0745368591', '1988-07-15', 'Telecomunicatii- facultatea Transilvania Brasov', '', '1', 254, 2, 1, 1, 0, 1, 0, 2, NULL, NULL),
(48, 'IOFCIU', 'MIRABELA', 'mirabela.iofciu@gmail.com', 'ECONOMIST', '0785379330', '1983-07-27', 'Facultate absolvita ASE-REI', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(49, 'Petre', 'Ana Maria', 'ane_mari96@yahoo.com', 'Dealer Black Jack', '0746830020', '06.12.1992', 'Facultate in curs', '', '1', 254, 2, 1, 1, 0, 1, 0, 2, NULL, NULL),
(50, 'Caciulan', 'Dana Sorina', 'danasorina2001@gmail.com', 'NOC Tehnician', '0761739790', '1992-01-11', 'Masterat: Finante - Banci', '', '1', 254, 3, 2, 1, 0, 1, 0, 2, NULL, NULL),
(51, 'Pirvu', 'Adriana', 'adriana.ledezeu@yahoo.com', 'Freelancer', '0765634244', '1988-11-03', 'Universitatea Romano- Americana specializare Finante Banci', '', '1', 254, 2, 1, 1, 0, 1, 0, 2, NULL, NULL),
(52, 'Naita', 'Andrei', 'andrei.naita@yahoo.com', 'inginer topograf', '0723549251', '07.02.1984', 'Facultatea de Imbunatiri Funciare si Ingineria Mediului,specializarea Cadastru', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, 1, 1),
(53, ' BIRHALA', 'DORU', 'doru.birhala@gmail.com', 'economist', '0730044226', '1975-03-07', 'Studii postuniversitare', '', '1', 254, 3, 3, 2, 0, 1, 0, 2, NULL, NULL),
(54, 'NECULA', 'ALEXANDRA', 'alexaman20@yahoo.com', 'ofiter bancar', '0761149548', '20.02.1985', 'studii superioare: studii Post Universitare', '', '1', 254, 2, 2, 1, 0, 1, 0, 2, NULL, NULL),
(55, 'Cazan', 'Alexandra', 'alexutza.1993@yahoo.com', 'Operator Call Center', '0773372175', '1993-04-28', 'Studii superioare nefinalizate.', '', '15 Ian – 21 Feb 2018', 254, 2, 1, 1, 55, 0, 0, 2, NULL, NULL),
(56, 'Preda', 'Anna Maria', 'preda.anna.m@gmail.com', 'Consilier Juridic', '0722396485', '21.11.1992', 'Facultatea de Drept, Universitatea \"Valahia\" Targoviste', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(57, 'Nicula', 'Florentina', 'niculaflorentina@ymail.com', 'Order Manager', '0724094170', '1988-11-27', 'Master - Managementul Resurselor si Activitatilor Turistice - Universitatea din Bucuresti', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(58, 'ROSU', 'ADELUTA', 'adelina.rosu@ymail.com', 'COST ANALYST', '0768427803', '01-03-1988', 'Oct 2011 â€“ Jun 2013: Academy of Economic Studiesâ€, Bucharest, Faculty of Management - Master of Business Management\r\nOct 2008 â€“ Jun 2011: Academy of Economic Studiesâ€, Bucharest, Faculty of Finance, Insurance, Banking and Stock Exchange\r\n         ', '', '1', 254, 3, 3, 1, 0, 1, 0, 2, NULL, NULL),
(59, 'Tica', 'Eugen Gabriel', 'ticaeugengabriel@gmail.com', 'administrator', '0773722590', '08.11.1980', 'facultate finante banci contabilitate', '', '15 Ian – 21 Feb 2018', 254, 2, 2, 2, 59, 0, 0, 2, NULL, NULL),
(60, 'Mogosiu', 'Mircea', 'mircea.mogosiu@gmail.com', 'Inginer', '0740695259', '1984-11-15', 'Univ. Tehnica de constructii Bucuresti - Facultatea de Constructii Civile Industriale si Agricole', '', '1', 254, 3, 3, 1, 0, 1, 0, 2, NULL, NULL),
(61, 'Secheli', 'Alexandru', 'alexandru.secheli@gmail.com', 'Inginer Emisie', '0721388790', '30-10-1984', 'UPB - Inginerie Electrica\r\nUPB - ETTI - Master', '', '1', 254, 2, 2, 2, 0, 1, 0, 2, NULL, NULL),
(62, 'Dimian', 'Dan Cristian', 'cristi.dimian@gmail.com', 'Data Entry Operator', '0724058806', '30/03/1986', 'Master Marketing si Negociere in Afaceri', '', '1', 254, 3, 2, 2, 0, 1, 0, 2, NULL, NULL),
(63, 'Baltoi', 'Marius Nicolae', 'mariusbaltoi@gmail.com', 'Data Entry Operator', '0727282185', '22/09/1987', 'Iginerie Mecanica si Mecatronica - Politehnica Bucuresti', '', '1', 254, 3, 2, 1, 0, 1, 0, 2, NULL, NULL),
(64, 'Ghera', 'George', 'ghera.george@gmail.com', 'Specialist IT', '0766399499', '1972-10-25', 'Analist programator (FoxPro si Visual Basic)\r\nComunicare si relatii publice', '', '1', 254, 2, 3, 2, 64, 1, 0, 2, 1, 2),
(112, 'Simion', 'Ruxandra', 'ruxandra.simion87@gmail.com', 'Manager de Proiect', '0728071018', '03/30/1987', 'Studii Post Universitare', '', '15 Ian – 21 Feb 2018', 254, 3, 3, 2, 924, 0, 1, 2, NULL, NULL),
(102, 'Raluca', 'Lungu', 'raluk.lungu@gmail.com', 'Analist credite', '0741143860', '1984-05-20', 'Studii superioare', '', '15 Ian – 21 Feb 2018', 254, 1, 2, 1, 922, 0, 1, 1, NULL, NULL),
(69, ' BIRHALA', 'DORU', 'doru.birhala@gmail.com', 'economist', '0730044226', '1975-03-07', 'Studii postuniversitare', '', '1', 254, 3, 3, 2, 0, 1, 0, 2, NULL, NULL),
(71, 'Lungu', 'Cristian', 'lungucris@gmail.com', 'Senior Sales Dealer', '0722630996', '1982-11-09', 'Universitatea \"Alexandru Ioan Cuza\", Facultatea de Economie si Administrarea Afacerilor, Iasi', '', '15 Ian – 21 Feb 2018', 254, 3, 3, 2, 71, 0, 0, 2, 1, 1),
(72, 'stanciu', 'mihai adrian', 'mihai_adrian_stanciu@yahoo.com', 'consilier juridic', '0724820266', '1987-11-26', 'facultatea de drept spiru haret', '', '1', 254, 3, 2, 2, 0, 0, 0, 2, NULL, NULL),
(73, 'Nicolae', 'Elena Cristina', 'crissa822003@yahoo.com', 'Enablement Specialist - Clinical Operations', '0745123410', '1982-03-19', 'Facultate Limbi Straine, Engleza-Franceza\r\nMaster: Business English\r\nTraininguri si cursuri in cadrul jobului', '', '15 Ian – 21 Feb 2018', 254, 3, 2, 1, 73, 0, 0, 2, NULL, NULL),
(74, 'Badita', 'Stefan', 'stefbadita@gmail.com', 'Contabil', '0722505589', '1955-06-27', 'Cunostinte Programare VFP', '', '15 Ian – 21 Feb 2018', 254, 2, 1, 1, 74, 0, 0, 2, NULL, NULL),
(75, 'Senseutchi', 'Andrei', 'andrei.senseutchi@gmail.com', 'manager achizitii', '0734398629', '1987-12-30', 'Masterand; Specialitate Drept', '', '15 Ian – 21 Feb 2018', 254, 3, 2, 1, 75, 2, 0, 2, NULL, NULL),
(95, 'Anghel', 'Roxana', 'roxxana.anghel@gmail.com', 'Analist raportare', '0725635159', '1992-09-26', 'Contabilitate si informatica de gestiune', '', '15 Ian – 21 Feb 2018', 254, 3, 3, 2, 917, 0, 1, 1, NULL, NULL),
(96, 'Marinescu', 'Andreea', 'Amarinescu109@gmail.com', 'Manager', '0759083666', '1985-09-10', 'Studii superioare', '', '15 Ian – 21 Feb 2018', 254, 3, 3, 2, 918, 0, 1, 2, NULL, NULL),
(97, 'Moldovan', 'Marius Ioan', 'marius_mako@yahoo.com', 'Student ', '0759115763', '1985-11-06', 'In curs - studii superioare', '', '15 Ian – 21 Feb 2018', 254, 2, 2, 2, 918, 0, 1, 1, NULL, NULL),
(111, 'Tanase', 'Lavinia', 'lavinia_trandafir@yahoo.com', 'Analist servicii clienti', '0766938630', '02/02/1980', 'Universitatea Bucure?ti Filologie', '', '15 Ian – 21 Feb 2018', 254, 3, 2, 1, 923, 0, 1, 2, NULL, NULL),
(110, 'Maxinese ', 'Ramona', 'ramona.maxinese@yahoo.com', 'Analist bancar', '0766524945', '1987-04-09', 'Universitatea Bucure?ti - Facultatea de Psihologie ?i ?tiin?ele Educatiei', '', '15 Ian – 21 Feb 2018', 254, 2, 1, 1, 921, 0, 1, 2, 1, 1),
(113, 'Tocica', 'Cristian', 'katana_wrath@yahoo.com', 'Medic', '0751076169', '03/26/1987', 'Facultate', '', '15 Ian – 21 Feb 2018', 254, 3, 2, 1, 926, 0, 1, 2, NULL, NULL),
(114, 'Elena-Iulia', 'Ciufu', 'iuliaelena.cozma@gmail.com', 'Analist servicii clienti', '0766338480', '10/06/2017', 'ASE', '', '15 Ian – 21 Feb 2018', 254, 3, 3, 3, 927, 0, 2, 1, NULL, NULL),
(115, 'Diaconescu', 'Alina Maria', 'alinadiaconescu_18@yahoo.com', 'Traducator', '0763674968', '12/14/1990', 'Master', '', '5 Mar – 11 Apr 2018', 254, 3, 1, 1, 925, 0, 1, 1, NULL, NULL),
(116, 'Ecard', 'Alecsandra', 'alecsandra.ecard@gmail.com', 'Comunicare ', '0724935536', '09/14/1980', 'Facultate', '', '15 Ian – 21 Feb 2018', 254, 3, 2, 1, 928, 0, 2, 1, NULL, NULL),
(117, 'Diaconescu', 'Alina', 'alinadiaconescu_18@yahoo.com', 'Traducator', '0763674968', '12/14/1990', 'Master', '', '5 Mar – 11 Apr 2018', 254, 3, 2, 1, 925, 0, 1, 1, NULL, NULL),
(118, 'kuku', 'rtr', 'andrada.tuca@yahoo.com', 'efe', '0799006007', '12/04/2017', 'bgbgb', '', '5 Mar – 18 Apr 2018', 261, 3, 3, 3, 5, 0, 1, 1, NULL, NULL),
(119, 'Gheorghe', 'Ioana', 'gheorgheioanam@gmail.com', 'Qa automation tester', '0757800723', '11/17/1988', 'Master ', '', '5 Mar – 18 Apr 2018', 649, 3, 3, 3, 929, 0, 2, 1, NULL, NULL),
(121, 'CHETRONE', 'MIRELA', 'chiritoiumirela@gmail.com', 'CONTABIL', '0768258334', '07/27/1991', 'STUDII SUPERIOARE', '', '15 Ian – 21 Feb 2018', 254, 2, 2, 1, 933, 0, 1, 1, NULL, NULL),
(122, 'Hacman', 'Stefan', 'stefan.hacman@gmail.com', 'QA Engineer', '0755115869', '03/24/1989', 'Diploma de lincenta in IT', '', '15 Ian  – 28 Feb 2018', 649, 3, 3, 2, 930, 0, 1, 1, NULL, NULL),
(123, 'BALTOI', 'Marius Nicolae', 'mariusbaltoi@gmail.com', 'Data Input Specialist', '0727282185', '09/22/1987', 'Facultate', '', '5 Mar – 18 Apr 2018', 261, 3, 2, 1, 63, 0, 1, 2, NULL, NULL),
(124, 'Dimian', 'Dan-Cristian', 'cristi.dimian@gmail.com', 'Software Tester', '0724058806', '03/30/1986', 'Master', '', '5 Mar – 18 Apr 2018', 261, 3, 3, 3, 62, 0, 1, 2, NULL, NULL),
(125, 'Avasiloaie', 'Andreea', 'andreeaavasiloaie15@gmail.com', '-', '0755947432', '11/05/1993', 'Master', '', '15 Ian – 21 Feb 2018', 254, 1, 2, 1, 938, 0, 2, 1, NULL, NULL),
(126, 'Lazar', 'Mihai', 'mihai1lazar@yahoo.com', 'QA Tester @ King Studio Bucuresti', '0745065106', '01/16/1990', 'Diploma Bac', '', '15 Ian – 21 Feb 2018', 254, 3, 1, 2, 939, 0, 1, 2, NULL, NULL),
(127, 'Balaban', 'Alina', 'alina_irina_b@yahoo.com', 'QA', '0740303193', '28/10/1987', 'CIG ASE', '', '15 Ian  – 28 Feb 2018', 649, 2, 3, 2, 941, 0, 1, 1, 1, 1),
(128, 'david', 'tudor', 'tudor.david@ing.ro', 'economist', '0747060669', '10/25/1986', 'masterat', '', '5 Mar – 11 Apr 2018', 254, 2, 1, 1, 943, 0, 1, 2, NULL, NULL),
(139, 'Pascu', 'George', 'george.pascu89@yahoo.com', 'Junior Card System Administrator', '0737152877', '08/19/1989', 'Studii superioare', '', '15 Ian – 21 Feb 2018', 254, 2, 2, 2, 946, 0, 1, 1, NULL, NULL),
(140, 'Butiseaca', 'Giorgiana', 'butiseaca.giorgiana@yahoo.com', 'Studenta', '0744336367', '12/12/1992', 'Master MCEPC, Ase', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 2, 950, 0, 2, 1, NULL, NULL),
(141, 'Gindea', 'Aura', 'aura.gindea@gmail.com', 'Test Engineer', '0725439410', '05/26/1991', 'Facultatea de Automatica si Calculatoare Bucuresti', '', '5 Mar – 18 Apr 2018', 261, 3, 1, 1, 952, 0, 2, 1, NULL, NULL),
(142, 'Dumitru', 'Stefan Catalin', 'cata10101991@yahoo.com', 'Inginer auto', '0728259886', '10.10.1991', 'Studii superioare', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 2, 961, 0, 1, 1, NULL, NULL),
(143, 'Ristea', 'Daniel', 'daniel.ristea84@yahoo.com', 'Area sales manager', '0727528528', '12/06/1984', 'Universitatea Crestina Dimitrie Cantemir', '', '5 Mar – 11 Apr 2018', 254, 2, 1, 1, 962, 0, 1, 1, NULL, NULL),
(144, 'Andrei', 'Sorin Adrian', 'sorinadrian.andrei@yahoo.com', 'Coordonator merchandiser', '0726059792', '12/29/1987', 'Facultatea Drept si Administratie Publica', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 1, 963, 0, 1, 1, NULL, NULL),
(145, 'Matei', 'Adina', 'matei.adina.iuliana@gmail.com', 'Customer Support & Community Manager', '0762675877', '12/01/1991', 'FLLS + Master Litere', '', '5 Mar – 11 Apr 2018', 254, 3, 2, 1, 964, 0, 2, 1, NULL, NULL),
(146, 'Dimian', 'Carmen Mihaela', 'carmen.mihaela.lis@gmail.com', 'economist', '0765434698', '21/05/1985', 'postuniversitar', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 1, 965, 0, 1, 1, NULL, NULL),
(147, 'Muraru', 'Suzana', 'ana.meciu@gmail.com', 'Operator suport tehnic', '0769654511', '07/20/1987', 'Facultatea de Limbi Straine, Masterat', '', '5 Mar – 11 Apr 2018', 254, 3, 2, 1, 954, 0, 1, 1, NULL, NULL),
(148, 'meciu ', 'ana', 'suzanapeichea@yahoo.fr', 'operator suport tehnic', '0784801335', '06/11/1990', 'SNSPA', '', '5 Mar – 11 Apr 2018', 254, 3, 2, 1, 966, 0, 2, 1, NULL, NULL),
(149, 'Galchin', 'Raluca', 'ralucagalchin@gmail.com', 'QC Agent', '0743522535', '08/10/1990', 'Facultate', '', '5 Mar – 11 Apr 2018', 254, 3, 2, 2, 967, 0, 1, 2, NULL, NULL),
(150, 'Maria', 'Jora', 'mariana_jora@yahoo.com', 'Manager Restaurant', '0731293329', '10/20/1990', 'Studii Universitare', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 2, 968, 0, 1, 2, NULL, NULL),
(151, 'Apostol', 'Alexandra', 'andraa2301@gmail.com', 'student', '0735319342', '01/13/1997', 'Facultatea de Siinte Juridice', '', '5 Mar – 11 Apr 2018', 254, 2, 3, 2, 951, 0, 1, 2, 1, 1),
(152, 'Elena', 'Elena', 'branzan.elena@gmail.com', 'Economist', '0766224989', '10/19/1988', 'Facultate', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 2, 969, 0, 1, 2, 1, 1),
(153, 'Gindea', 'Aura', 'aura.gandea@gmail.com', 'Inginer Testare', '0725439410', '05/26/1991', 'Facultatea de Automatica si Calculatoare, Politehnica Bucuresti', '', '5 Mar – 18 Apr 2018', 261, 3, 1, 1, 971, 0, 2, 2, NULL, NULL),
(154, 'Vatamanu', 'Raisa Miruna', 'Raisavm@yahoo.com', 'Analist coordonator domeniu IT', '0767896373', '02/12/1989', 'Masterat', '', '5 Mar – 11 Apr 2018', 254, 3, 3, 2, 972, 0, 2, 2, NULL, NULL),
(155, 'Patrascu ', 'Raluca Elena ', 'e_raluca_p@yahoo.com', 'Economist', '0727736468', '22 05 1982', 'Facultate', '', '5 Mar – 11 Apr 2018', 254, 2, 1, 2, 973, 0, 2, 1, NULL, NULL),
(156, 'Florea', 'Mihaela', 'mihaela_florea91@yahoo.ro', 'QA Engineer', '0755868295', '04/02/1991', 'Master - (Inginer- ETTI)', '', '5 Mar – 18 Apr 2018', 261, 3, 3, 1, 975, 0, 1, 1, NULL, NULL),
(157, 'Lajea', 'Ionela', 'ionelalajea@gmail.com', 'QA Engineer', '0768892663', '02/02/1993', 'Facultatea de Automatica Calculatoare si Electronica Craiova, Licenta in Computer Science', '', '5 Mar – 18 Apr 2018', 261, 3, 3, 3, 958, 0, 1, 2, NULL, NULL),
(158, 'Olteanu', 'Costin', 'costinolteanu@yahoo.com', 'Lead Software Tester', '0753878697', '05/21/1982', 'Facultate', '', '5 Mar – 18 Apr 2018', 261, 3, 3, 3, 977, 0, 1, 1, NULL, NULL),
(159, 'Carpovici', 'Victor', 'corina.carpovici@db.com', 'Claims assessor', '0726970831', '03/19/1985', 'Superioara', '', '7 Mai – 13 Iun 2018', 254, 2, 1, 1, 978, 0, 1, 1, 1, 1),
(160, 'Anghel', 'Catalin Nicolae', 'catalin.anghel85@yahoo.com', 'Manager proiect', '0726684384', '02/18/1985', 'Masterand', '', '5 Mar – 11 Apr 2018', 254, 3, 3, 3, 979, 0, 1, 1, NULL, NULL),
(161, 'Avram', 'Bogdan', 'bog.avram@yahoo.com', 'Student', '0721949606', '06/27/1994', 'Universitatea Politehnica Bucuresti, Facultatea de Transporturi specializarea Telecomenzi si Inginerie Electronica in Transporturi', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 1, 980, 0, 1, 2, NULL, NULL),
(162, 'Schiopu', 'Ciprian-Mihai', 'ciprian.schiopu@gmail.com', 'Analist', '0742933981', '10/29/1983', 'Liceu', '', '5 Mar – 11 Apr 2018', 254, 3, 2, 2, 981, 0, 1, 1, NULL, NULL),
(163, 'Corjos', 'Razvan Daniel', 'razvan852@gmail.com', 'QA Automation Tester', '0752291024', '05/15/1993', 'Facultatea de Electronica, Telecomunicatii si Tehnologia Informatiei - Politehnica Bucuresti', '', '5 Mar – 18 Apr 2018', 261, 2, 3, 3, 959, 0, 1, 2, NULL, NULL),
(164, 'Minza', 'Alexandru', 'alexandru_mn@yahoo.com', 'Liber profesionist', '0722307448', '10/03/1971', 'Universitara', '', '5 Mar – 11 Apr 2018', 254, 2, 3, 3, 982, 0, 1, 2, NULL, NULL),
(165, 'Munteanu', 'Petre', 'munteanupetre19@gmail.com', 'Testar', '0733938894', '19/11/2017', 'Universitatea Romano America', '', '5 Mar – 18 Apr 2018', 261, 2, 2, 2, 47, 0, 1, 1, NULL, NULL),
(166, 'Iordache', 'Bogdan', 'bogdan388@gmail.com', 'QA Specialist ', '0720271812', '07/17/1991', 'Facultatea de Psihologiesi Stiintele Educatiei Spiru Hare Bucuresti', '', '5 Mar – 18 Apr 2018', 261, 3, 2, 2, 984, 0, 2, 1, NULL, NULL),
(167, 'Tamas', 'Claudiu', 'claudiu.tamas@punct.ro', 'QA Engineer', '0732779578', '01/28/1993', 'Facultate', '', '5 Mar – 18 Apr 2018', 261, 3, 2, 3, 985, 0, 1, 2, NULL, NULL),
(168, 'Di Conza', 'Domenico', 'domenicodiconza@punct.ro', 'QA Engineer', '0721719122', '05/06/1990', 'Facultate', '', '5 Mar – 18 Apr 2018', 261, 3, 2, 2, 986, 0, 1, 2, NULL, NULL),
(169, 'Domnisan', 'Andrei Alexandru Silvestru', 'domnisanandrei@gmail.com', 'QA Senior Tester', '0741273989', '06/24/1990', 'Academia de Studii Economice din Bucuresti', '', '5 Mar – 11 Apr 2018', 254, 2, 1, 1, 983, 0, 1, 1, NULL, NULL),
(170, 'Avram', 'Alexandra', 'alexandraavram87@yahoo.ro', 'Doctorand', '0748822304', '03/19/1987', 'Master', '', '5 Mar – 11 Apr 2018', 254, 2, 2, 1, 988, 0, 2, 1, NULL, NULL),
(171, 'Maxinese', 'Ramona Giorgiana', 'ramona.maxinese@yahoo.com', 'Analist bancar', '0766524945', '04/09/1987', 'Universitatea Bucuresti', '', '5 Mar – 18 Apr 2018', 261, 2, 2, 1, 921, 0, 1, 2, NULL, NULL),
(172, 'Gaita', 'Octavian', 'gaita_octavian@yahoo.com', 'Senior Accountant', '0768841805', '09/26/1990', 'Studii Superioare', '', '5 Mar – 11 Apr 2018', 254, 2, 3, 1, 989, 0, 1, 1, NULL, NULL),
(173, 'Balaban', 'Alina', 'alina_irina_b@yahoo.com', 'QA lead', '0740303193', '28/10/1987', 'ASE- Contabilitate si informatica de gestiune', '', '11 Iun – 25 Iul 2018', 261, 2, 3, 2, 941, 0, 1, 1, NULL, NULL),
(174, 'Dragomir', 'Eugen', 'dragomir.eugen@yahoo.com', 'QA', '0732487591', '10/08/1993', 'Facultate', '', '11 Iun – 25 Iul 2018', 261, 2, 2, 3, 993, 0, 2, 2, NULL, NULL),
(176, 'Zlotea', 'Adrian Petrisor', 'zlotea.adriann@gmail.com', 'inginer', '0766246782', '06/19/1992', 'Master', '', '7 Mai – 13 Iun 2018', 254, 2, 2, 1, 992, 0, 1, 1, NULL, NULL),
(177, 'Iliescu', 'Albertina', 'albertina.iliescu@gmail.com', 'IT Recruiter', '0767354479', '10/02/1987', 'Master UB Consiliere Scolara si Dezvoltarea Carierei', '', '7 Mai – 13 Iun 2018', 254, 3, 2, 2, 995, 0, 1, 2, NULL, NULL),
(178, 'Neacsa', 'George', 'neacsa.george@yahoo.com', 'Inginer Energetician', '0748147265', '06/24/1988', 'Studii superioare', '', '7 Mai – 13 Iun 2018', 254, 2, 1, 1, 997, 0, 1, 1, 1, 1),
(179, 'Mestes', 'Mihaela', 'miha_baci@yahoo.com', 'QA Engineer', '0766237694', '11/04/1987', 'Master Engineer la Facultatea de Electronica, Telecomunicatii si Tehnologia Informatiei', '', '11 Iun – 25 Iul 2018', 261, 3, 3, 2, 991, 0, 1, 2, 1, 1),
(180, 'GG', 'Stanica', 'george@academiatestarii.ro', 'Antreprenor', '0734540913', '06/12/1986', 'POlitehnica', '', '7 Mai – 13 Iun 2018', 254, 3, 3, 3, 913, 0, 1, 2, NULL, NULL),
(181, 'topala', 'mihaela', 'mihaelatopala1@gmail.com', 'analist', '0765516850', '01/06/1984', 'master', '', '7 Mai – 13 Iun 2018', 254, 2, 2, 2, 998, 0, 2, 2, NULL, NULL),
(182, 'Patrascu ', 'Raluca Elena', 'e_raluca_p@yahoo.com', '-', '0727736468', '05/22/1982', 'Master', '', '25 Iun – 1 Aug 2018', 254, 2, 2, 2, 973, 0, 2, 2, NULL, NULL),
(183, 'Carpovici', 'Victor', 'karino_week@yahoo.com', 'Assessor', '0726970831', '03/19/1985', 'Studii superioare', '', '11 Iun – 18 Iul 2018', 254, 2, 2, 1, 1000, 0, 1, 1, NULL, NULL),
(184, 'Mestes', 'Mihaela', 'miha_baci@yahoo.com', 'QA Engineer', '0766237694', '11/04/1987', 'Master Engineer @ Facultatea de Electronica, Telecomunicatii si Tehnologia Informatiei, UPB', '', '6 Iun - 24 Iun', 700, 3, 3, 2, 991, 0, 1, 2, 1, 1),
(187, 'Vatamanu', 'Raisa', 'Raisavm@yahoo.com', 'analist', '0767896373', '12/04/1989', 'masterat', '', '7 Mai – 13 Iun 2018', 254, 3, 2, 2, 972, 0, 2, 2, NULL, NULL),
(188, 'Chitaru', 'Loredana', 'loredana.chitaru@gmail.com', 'Software Tester', '0722400147', '10/12/1984', 'Facultate', '', '25 Iun – 1 Aug 2018', 254, 3, 3, 2, 1003, 0, 1, 1, 1, 1),
(189, 'Mocanu', 'Octavian Aurelian', 'octavian2092@gmail.com', 'Tehnician Fulfilare', '0765766919', '04/20/1992', 'Liceul Carol', '', '7 Mai – 13 Iun 2018', 254, 3, 1, 2, 1004, 0, 1, 1, 1, 2),
(190, 'Stoica', 'Cristian', 'Cristian.eugen.stoica@gmail.com', 'X', '0727053153', '10/30/1984', 'UPB', '', '7 Mai – 13 Iun 2018', 254, 2, 1, 1, 1006, 0, 1, 1, 1, 1),
(191, 'anabananaskjhldhlahjhldahfihhhh', 'ana', 'cristina.m.birzan@gmail.com', 'profesor', '0799777854', '05/22/1970', 'liceu', '', '5 Mar – 18 Apr 2018', 261, 2, 1, 1, 1010, 0, 1, 1, NULL, NULL),
(192, 'Dinu', 'Lucian', 'lucian.dinu93@yahoo.com', 'Inginer mecanic', '0720588615', '02/07/1993', 'Ingineria autovehiculelor', '', '7 Mai – 13 Iun 2018', 254, 3, 3, 2, 1012, 0, 1, 1, NULL, NULL),
(193, 'Dinicica', 'Claudia', 'claudiadinicica@gmail.com', 'Ofiter Logistica', '0767832074', '11/24/1990', 'Universitatea Crestina Dimitrie Cantemir , specializare - Comunicare si Relatii Publice', '', '25 Iun – 1 Aug 2018', 254, 2, 2, 2, 1013, 0, 1, 1, NULL, NULL),
(194, 'Gogescu', 'Adrian Marius', 'gogescuadrian@gmail.com', 'Tester', '0724844935', '05/14/1982', 'Universitate', '', '11 Iun – 25 Iul 2018', 261, 3, 3, 3, 1014, 0, 2, 1, NULL, NULL),
(195, 'Cismaseanu', 'Oana', 'oana.cismaseanu@mail.com', 'economist', '0722593977', '02/01/1984', 'Universitatea Romano-Americana', '', '25 Iun – 1 Aug 2018', 254, 2, 2, 2, 1015, 0, 1, 1, 1, 1),
(196, 'Radu', 'Alexandra', 'alexandra.radu@rbc.com.ro', 'Software tester', '0735447949', '05/04/2995', 'Universitatea \\\"Petrol-Gaze\\\", Ploiesti', '', '11 Iun – 25 Iul 2018', 261, 2, 3, 2, 1016, 0, 2, 2, NULL, NULL),
(197, 'Carjan', 'Roxana', 'roxanaliliana.c@gmail.com', 'economist', '0766687722', '06/24/1983', 'ASE - REI diplom? de licen??', '', '7 Mai – 13 Iun 2018', 254, 3, 2, 2, 1017, 0, 1, 1, NULL, NULL),
(198, 'Cârjan', 'Roxana ', 'roxanaliliana.c@gmail.com', 'economist', '0766687722', '06/24/1983', 'ASE - REI diplom? de licen??', '', '25 Iun – 1 Aug 2018', 254, 3, 2, 2, 1017, 0, 1, 1, NULL, NULL),
(199, 'Munteanu', 'Maria', 'maria22011957@gmail.com', 'Jurist', '0764727578', '22/01/1957', 'Facultatea de Drept', '', '7 Mai – 13 Iun 2018', 254, 2, 1, 1, 1018, 0, 1, 2, NULL, NULL),
(200, 'Verban', 'Alexandra', 'alekverban@gmail.com', 'Expeditor International', '0770549231', '01/03/1983', 'Studii superioare ', '', '25 Iun – 1 Aug 2018', 254, 2, 2, 1, 1019, 0, 2, 1, 1, 1),
(201, 'Cocanu', 'Mirela', 'mirela_cocanu@yahoo.com', 'student', '0722638498', '04/10/1980', 'studii universitare', '', '25 Iun – 1 Aug 2018', 254, 2, 2, 1, 1022, 0, 1, 1, 1, 1),
(202, 'Ghilenschi ', 'Mihai Alexandru', 'ghila777@yahoo.com', 'Software QA', '0722313789', '10/06/1982', 'Facultatea de Electronica, Telecomunicatii si Tehnologia Informatiei - Universitatea Politehnica Bucuresti', '', '11 Iun – 25 Iul 2018', 261, 3, 3, 3, 1008, 0, 1, 1, 1, 1),
(203, 'Avadanei', 'Dragos', 'dragosstudio@gmail.com', 'Qa', '0722609283', '01/25/1983', 'Studii superioare', '', '11 Iun – 25 Iul 2018', 261, 3, 3, 2, 1024, 0, 2, 2, NULL, NULL),
(204, 'IULIAN', 'SIRBU', 'isirbu@cbn.ro', 'Tester', '0768236768', '09/19/1991', 'Diploma de licenta ', '', '11 Iun – 25 Iul 2018', 261, 2, 2, 2, 1025, 0, 1, 2, NULL, NULL),
(205, 'Enache', 'Oana Alexandra', 'oana.enache13@gmail.com', 'Credit Administration', '0724355723', '10/23/1986', 'Ase', '', '25 Iun – 1 Aug 2018', 254, 2, 2, 1, 976, 0, 2, 2, NULL, NULL),
(206, 'Butnariu', 'Codrut-Razvan', 'rebirth90@gmail.com', 'Software Tester', '0737052587', '10/28/1990', 'Absolvent Universitatea Politehnica - Facultatea de Inginerie Aerospatiala', '', '11 Iun – 25 Iul 2018', 261, 3, 3, 2, 1026, 0, 1, 2, NULL, NULL),
(207, 'Calin', 'Georgian Ionut', 'gcalin@cbn.ro', 'Software Tester', '0745016835', '04/24/1983', 'Facultate', '', '11 Iun – 25 Iul 2018', 261, 2, 3, 3, 1028, 0, 1, 2, NULL, NULL),
(208, 'Cristian', 'Gonciulea', 'cristian.gonciulea@yahoo.com', 'aa', '0772095203', '12/09/1982', 'aa', '', '11 Iun – 25 Iul 2018', 261, 2, 1, 1, 1029, 0, 2, 2, NULL, NULL),
(209, 'Laura', 'Recea', 'laurarecea@gmail.com', 'De inlocuit', '0784150882', '06/14/2018', 'De inlocuit', '', '11 Iun – 25 Iul 2018', 261, 2, 1, 1, 1009, 0, 1, 2, NULL, NULL),
(210, 'Stefancu', 'Mihaela', 'mihaelaste88@gmail.com', 'operator introducere date', '0729322200', '09/13/1988', 'Facultate', '', '25 Iun – 1 Aug 2018', 254, 3, 2, 2, 1031, 0, 1, 1, NULL, NULL),
(211, 'Agheorghicesei', 'Madalina', 'vieriu.madalina@gmail.com', 'QA manual', '0742099795', '06/19/1988', 'Facultatea ETTI', '', '11 Iun – 25 Iul 2018', 261, 3, 2, 2, 1032, 0, 2, 1, NULL, NULL),
(212, 'Marinescu', 'Tatiana Malina', 'marinescutatianamalina@yahoo.com', 'Medic veterinar', '0723755009', '13/02/1985', 'Facultatea de medicina veterinara Bucuresti', '', '25 Iun – 1 Aug 2018', 254, 3, 2, 2, 1034, 0, 1, 1, NULL, NULL),
(213, 'Cristian', 'Gonciulea', 'cristian.gonciulea@gmail.com', 'aa', '0772095203', '06/08/2018', 'aaa', '', '11 Iun – 25 Iul 2018', 261, 2, 1, 1, 1035, 0, 2, 1, NULL, NULL),
(214, 'Raicu', 'Andrei', 'andrei.raicu111@gmail.com', 'Reprezentant de vanzari in industria Pharma', '0758795668', '11/02/1992', 'Universitatea “Alexandru Ioan Cuza” din Iasi, Facultatea de Litere, sectia Traducere si Interpretare Engleza-Franceza; ISTQB Foundation Level Certified Tester', '', '25 Iun – 1 Aug 2018', 254, 3, 3, 3, 1036, 0, 1, 1, NULL, NULL),
(215, 'Matache', 'Mihaela', 'mihatesting@gmail.com', 'QA Engineer', '0722452795', '12/10/1986', 'Facultate/Licenta ', '', '5 Mar – 18 Apr 2018', 261, 3, 3, 2, 1037, 0, 2, 2, NULL, NULL),
(216, 'Chitaru', 'Loredana', 'loredana.chitaru@gmail.com', 'Software Tester', '0722400147', '10/12/1984', 'Facultate', '', '3 Sep - 17 Oct', 261, 3, 3, 2, 1003, 0, 1, 2, NULL, NULL),
(217, 'Necula', 'Alexandra', 'alexaman20@yahoo.com', 'QA Engineer', '0761149548', '02/20/1985', 'Studii superioare', '', '3 Sep - 17 Oct', 261, 3, 3, 2, 54, 0, 1, 2, NULL, NULL),
(218, 'topala', 'mihaela', 'mihaelatopala1@gmail.com', 'analist', '0765516850', '01/06/1984', 'master', '', '3 Sep - 17 Oct', 261, 2, 3, 2, 998, 0, 2, 2, NULL, NULL),
(219, 'Florea', 'Maria Adelina', 'adelina.florea7@gmail.com', 'analyst software', '0721297845', '09/07/1987', 'master degree', '', '3 Sep - 17 Oct', 261, 2, 1, 1, 1046, 0, 1, 2, NULL, NULL),
(222, 'Ivascu', 'Elena', 'edda.ivascu@yahoo.com', 'Studenta', '0735673435', '07/16/1992', 'In prezent - sociologie, an 2', '', '5 Noi – 21 Noi', 254, 3, 3, 1, 1048, 0, 1, 2, NULL, NULL),
(223, 'P?trascu ', 'Raluca Elena', 'e_raluca_p@yahoo.com', 'F?r? ', '0727736468', '05/22/1982', 'Studii superioare', '', '5 Noi – 21 Noi', 254, 2, 2, 2, 973, 0, 3, 2, NULL, NULL),
(224, 'Fundaneanu', 'Alexandru', 'alexandru_fundaneanu@yahoo.com', 'economist', '0765455342', '03/30/1987', 'Master ASE Managementul calitatii', '', '3 Sep - 19 Sep', 254, 2, 1, 1, 1050, 0, 1, 2, NULL, NULL),
(225, 'Bivol', 'Raluca', 'lrb_80@yahoo.com', 'Restaurator', '0742534400', '24/12/1980', 'Studii superioare', '', '3 Sep - 19 Sep', 254, 2, 3, 3, 1051, 0, 2, 2, NULL, NULL),
(226, 'Andries', 'Danuta Elen', 'anghel.danuta@yahoo.com', 'Credit analyst', '0741626808', '10/05/1990', 'Master-ASE Bucuresti', '', '22 Sep - 30 Sep 2018', 700, 3, 2, 1, 1052, 0, 1, 2, NULL, NULL),
(227, 'TEODORA', 'OLTEAN', 'teodoraoltean92@yahoo.com', 'Specialist imbunatatire procese', '0745333082', '04/01/1992', 'Licenta', '', '22 Sep - 30 Sep 2018', 700, 3, 2, 1, 1054, 0, 1, 2, NULL, NULL),
(228, 'Bica', 'Andrei Florin', 'andrei.bica.florin@gmail.com', 'Mecanic', '0787892522', '07/30/1988', 'Facultate', '', '22 Sep - 30 Sep 2018', 700, 2, 2, 2, 1055, 0, 3, 2, NULL, NULL),
(229, 'Bratu', 'Alexandru', 'bratu_alex_cosmin@yahoo.com', 'Strateg Planner', '0746090723', '10/06/1985', 'ASE - Marketing', '', '3 Sep - 19 Sep', 254, 2, 2, 2, 1059, 0, 3, 2, NULL, NULL),
(230, 'Parsolea', 'Alexandru', 'parsolea_alex@yahoo.com', 'QA Tester ', '0731179982', '09/16/1984', 'Superioara', '', '9 Nov - 18 Nov 2018', 1061, 3, 1, 2, 1060, 0, 1, 2, NULL, NULL),
(231, 'Tifigiu', 'Horatiu Paul', 'tifigiu_hp@yahoo.com', 'inginer', '0728040094', '06/09/1992', 'studii superioare', '', '3 Sep - 19 Sep', 254, 3, 2, 2, 1058, 0, 1, 2, NULL, NULL),
(232, 'Rogozea', 'Silviu Catalin', 'catalin.rogozea@gmail.com', 'Inginer Mecanic', '0720448327', '07/19/1993', 'Licenta in Ingineria Autovehiculelor', '', '5 Noi – 21 Noi', 254, 2, 2, 1, 1064, 0, 3, 2, NULL, NULL),
(233, 'DUMITRU', 'Florinel Leonard', 'leonard.dumitru@yahoo.com', '-', '0752991133', '04.08.1988', '-', '', '3 Sep - 19 Sep', 254, 3, 1, 3, 1065, 0, 1, 2, NULL, NULL),
(234, 'Parsolea', 'Alexandru', 'parsolea_alex@yahoo.com', 'QA Tester ', '0731179982', '09/16/1984', 'Superioara', '', '3 Sep - 17 Oct', 261, 3, 1, 1, 1060, 0, 1, 2, NULL, NULL),
(235, 'Coman', 'Alexandru', 'comanalexandru07@gmail.com', 'Team leader ', '0753481914', '07.08.1981', 'Universitatea din Bucuresti-Asistenta sociala', '', '3 Sep - 19 Sep', 254, 2, 1, 1, 1068, 0, 1, 2, NULL, NULL),
(236, 'Muntean', 'Ionela', 'yonela_tennis@yahoo.com', 'Antrenor tenis de camp', '0743211155', '05/10/1984', 'Facultatea de educa?ie fizica ?i sport', '', '22 Sep - 30 Sep 2018', 700, 2, 1, 1, 1069, 0, 3, 2, 1, 1),
(237, 'Danaila', 'Razvan-Florin', 'razvanxd66@yahoo.com', 'Absolvent de liceu', '0724128500', '04/12/1998', 'Absolvent de liceu', '', '22 Sep - 30 Sep 2018', 700, 2, 1, 1, 1066, 0, 2, 2, NULL, NULL),
(238, 'Nicolescu', 'Irina', 'irina.nicolescu17@yahoo.com', 'Student', '0736421594', '07/17/1996', 'Academia navala Mircea cel B?trân ', '', '22 Sep - 30 Sep 2018', 700, 2, 3, 1, 1073, 0, 3, 2, NULL, NULL),
(239, 'Adamescu', 'Octav George', 'o.g.adamescu@gmail.com', '-', '0749114957', '30', 'Facultatea de electronica', '', '22 Sep - 30 Sep 2018', 700, 3, 1, 1, 1077, 0, 2, 2, NULL, NULL),
(242, 'Antohi', 'Veronica', 'antohi.veraarev@gmail.com', 'QA Software Tester', '0724148786', '11/08/1994', 'Master - ASE -Fabiz', '', '29 Oct - 12 Dec 2018', 261, 2, 3, 3, 1076, 0, 1, 2, NULL, NULL),
(243, 'Diaconu', 'Florin', 'diaconu7@gmail.com', 'Software Support', '0727946834', '08/25/1982', 'Informatica Spiru Haret', '', '29 Oct - 12 Dec 2018', 261, 3, 2, 3, 1083, 0, 3, 2, NULL, NULL),
(244, 'Cozma-Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', 'IT Specialist', '0721602051', '20/04/1987', 'Master', '', '3 Sep - 19 Sep', 254, 2, 1, 1, 1086, 0, 2, 2, NULL, NULL),
(245, 'Cozma Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', 'Economist, IT ', '0721602051', '04/20/1987', 'Master', '', '10 Noi - 18 Noi 2018', 700, 2, 1, 1, 1086, 0, 1, 2, NULL, NULL),
(246, 'Rodica', 'Ciobanu', 'unspe@ymail.com', 'Tester', '0771529281', '02/11/1987', 'Universitate', '', '29 Oct - 12 Dec 2018', 261, 3, 2, 2, 1088, 0, 3, 2, NULL, NULL),
(247, 'Ungureanu', 'Iuliana', 'iuliana.ungureanu07@gmail.com', 'Economist', '0726882005', '02/07/1988', 'Studii post-universitare', '', '10 Noi - 18 Noi 2018', 700, 2, 2, 1, 1089, 0, 1, 2, NULL, NULL),
(248, 'Ungureanu', 'Bogdan', 'ungureanubogdan92@gmail.com', 'inginer ofertare', '0733217539', '03/21/1992', 'studii superioare', '', '10 Noi - 18 Noi 2018', 700, 3, 2, 1, 1087, 0, 2, 2, NULL, NULL),
(249, 'Ghinea', 'Iuliana', 'iulianaghinea07@gmail.com', 'Qa', '0767260485', '02/07/1992', 'Upb', '', '9 Nov - 18 Nov 2018', 1061, 2, 2, 1, 1100, 0, 1, 2, NULL, NULL),
(250, 'Bibu', 'Andrei Cristian', 'andreibibuu@gmail.com', 'Lucrator comercial', '0737017899', '08/10/1996', '2011 - 2015 Liceu Victor Slavescu, Ploiesti , Profil Matematica - Informatica', '', '10 Noi - 18 Noi 2018', 700, 3, 2, 1, 1095, 0, 2, 2, NULL, NULL),
(251, 'Gherghina ', 'Silviu Claudiu ', 'klaudiumail@yahoo.com', 'QA & Testing Analyst', '0723312708', '09/07/1985', 'Facultatea de cibernetica, statistica si informatica economica', '', '29 Oct - 12 Dec 2018', 261, 3, 3, 2, 1105, 0, 1, 2, NULL, NULL),
(252, 'Munteanu', 'Ciprian', 'ciprian88m@gmail.com', 'Air & Sea Freight Coordinator', '0769698933', '06/20/1988', 'Academia de Studii Economice - Facultatea de Administrarea Afacerilor', '', '10 Noi - 18 Noi 2018', 700, 3, 1, 2, 1107, 0, 1, 2, NULL, NULL),
(253, 'dima', 'george', 'orita.florin@yahoo.com', 'facturist', '0235652124', '10/17/2018', 'liceu', '', '3 Sep - 19 Sep', 254, 2, 1, 1, 1106, 0, 1, 2, NULL, NULL),
(254, 'Zamfir', 'Alexandre', 'alexandru.zamfir@allevo.ro', 'Tester', '0748044806', '06/27/1994', 'licenta', '', '29 Oct - 12 Dec 2018', 261, 3, 3, 1, 1103, 0, 1, 2, NULL, NULL),
(255, 'Chelaru', 'Mirela', 'chelaru.mirela@gmail.com', 'Manual tester', '0754972810', '03/01/1982', 'Studii universitare, specializare mate-info', '', '29 Oct - 12 Dec 2018', 261, 2, 2, 2, 1108, 0, 3, 2, NULL, NULL),
(256, 'Dragomir', 'Marius', 'maryuscl@yahoo.com', 'Product manager', '0729742265', '03/22/1991', 'Facultate de marketing, universitatea dimitrie cantemir', '', '10 Noi - 18 Noi 2018', 700, 3, 2, 1, 1110, 0, 1, 2, NULL, NULL),
(257, 'Grigore', 'Elena', 'elena.grigore22@gmail.com', 'QA engineer', '0745797123', '05/22/1986', 'Universitatea Politehnica Bucuresti, Facultatea de Automatica si Calculatoare', '', '29 Oct - 12 Dec 2018', 261, 2, 2, 1, 1113, 0, 3, 2, NULL, NULL),
(258, 'Baluta', 'Dumitru', 'dumitru.baluta@gmail.com', 'Tehnician Maseur', '0769276357', '11/22/1984', 'Absolvent Facultatea de Jurnalism', '', '10 Noi - 18 Noi 2018', 700, 2, 1, 1, 1114, 0, 1, 2, NULL, NULL),
(259, 'Sabo', 'Viorel', 'vsabo@cbn.ro', 'Software QA Engineer', '0722508555', '06/23/1981', 'UPB', '', '29 Oct - 12 Dec 2018', 261, 2, 2, 2, 1116, 0, 1, 2, NULL, NULL),
(260, 'Nistor', 'Corina-Mihaela', 'coryna_odo@yahoo.com', 'Software Tester', '0752546513', '12/11/1985', 'Master degree', '', '29 Oct - 12 Dec 2018', 261, 3, 2, 2, 1117, 0, 1, 2, NULL, NULL),
(261, 'Banulescu ', 'Cosmin', 'cosmin_b96@yahoo.com', 'Student', '0762921185', '30/03/1996', 'ASE, Informatica Economica(engleza)', '', '10 Noi - 18 Noi 2018', 700, 3, 3, 3, 1119, 0, 1, 2, NULL, NULL),
(262, 'Niculae', 'Cosmin', 'n.cosmin05@gmail.com', 'Software Tester', '0721338903', '06/19/1991', 'Licenta in informatica', '', '29 Oct - 12 Dec 2018', 261, 3, 2, 2, 1122, 0, 3, 2, 1, 1),
(263, 'Dinu', 'Lauren?iu', 'laurentiu.dinu1007@gmail.com', 'Fara', '0786411119', '07/10/1991', 'Facultatea de Automatic?, calculatoare ?i electronica', '', '10 Noi - 18 Noi 2018', 700, 2, 3, 3, 1125, 0, 1, 2, 1, 1),
(264, 'bebe', 'bebe', 'dany_leonard@gmail.com', 'lautar', '0763575781', '10/09/2018', 'fizica', '', '3 Sep - 17 Oct', 261, 2, 1, 1, 1128, 0, 1, 2, NULL, NULL),
(265, 'Rusu', 'Andreea', 'andreea.rusu03@yahoo.com', 'BPO Analyst', '0727921623', '03/24/1992', 'Masterat ASE Bucuresti - Economia si Administrarea Afacerilor Agroalimentare', '', '10 Noi - 18 Noi 2018', 700, 3, 2, 1, 1131, 0, 2, 2, NULL, NULL),
(266, 'AHMED', 'ANDRA', 'andraahmed@gmail.com', 'Analist bancar', '0722651333', '09/01/1975', 'ASE', '', '10 Noi - 18 Noi 2018', 700, 2, 2, 2, 1132, 0, 1, 2, NULL, NULL),
(267, 'Amironesei ', 'Ancuta', 'anca06anca@gmail.com', 'HR specialist', '0757098015', '06.05.1982', 'Master', '', '10 Noi - 18 Noi 2018', 700, 2, 2, 1, 1134, 0, 1, 2, NULL, NULL),
(268, 'Cozma-Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', 'Economist', '0721602051', '04/20/1987', 'Absolvent Master', '', '22 Sep - 30 Sep 2018', 700, 2, 1, 1, 1086, 0, 1, 2, NULL, NULL),
(277, 'Filimon', 'Alina', 'alinafilimon817@gmail.com', 'Bucatar', '0753334467', '03/01/1986', 'Liceu', '', '26 Ian – 3 Feb', 700, 2, 1, 1, 1151, 0, 1, 2, NULL, NULL),
(278, 'Amironesei', 'Ancuta', 'amironeseianka@yahoo.com', 'Hr consultant', '0757098015', '06.05.1983', 'Master', '', '26 Ian – 3 Feb', 700, 2, 2, 1, 1154, 0, 3, 2, NULL, NULL),
(270, 'Mirela', 'juhgffd', '1234@gmail.com', 'ysfsddff', '0123654789', '11/20/1985', 'ASE', '', 'ÎN CURÂND - CURSURI 2019', 254, 2, 1, 1, 1137, 0, 1, 2, NULL, NULL),
(271, 'Sanchez', 'Cristina', 'cristinam.sanchez.rincon@gmail.com', 'Economist', '0758036028', '07/20/1984', 'Studii superioare', '', '26 Ian – 3 Feb', 700, 3, 2, 2, 1140, 0, 2, 2, NULL, NULL),
(272, 'dolete', 'andreea', 'andreea.dolete@yahoo.com', 'Manual Tester', '0723639589', '06/03/1978', 'Economist', '', '18 Februarie - 3 Aprilie', 1061, 3, 3, 2, 1135, 0, 2, 2, NULL, NULL),
(273, 'Marin', 'Oana', 'pasat.m.oana@gmail.com', 'Asistent medical', '0733742044', '09/07/1990', 'FMAM Carol Davila', '', '26 Ian – 3 Feb', 700, 2, 1, 1, 1144, 0, 1, 2, NULL, NULL),
(274, 'Andrei', 'Catalin-Constantin ', 'catalin.raven@gmail.com', 'Inginer', '0722966332', '05/05/1984', 'Inginer', '', '26 Ian – 3 Feb', 700, 2, 2, 1, 1143, 0, 1, 2, NULL, NULL),
(275, 'Alexe', 'Mihai Sorin', 'sorinalexe12@gmail.com', 'Inginer', '0767206343', '11/16/1991', 'Master Universitatea Politehnica din Bucuresti', '', '18 Februarie - 3 Aprilie', 1061, 3, 3, 2, 1149, 0, 1, 2, NULL, NULL),
(276, 'Morariu', 'Catalin', 'catamorariu@icloud.com', 'Java developer', '0747771495', '06/14/1983', 'Studii Superioare', '', '26 Feb – 10 Apr', 261, 3, 1, 2, 1082, 0, 3, 2, NULL, NULL),
(279, 'Tanasescu', 'Anca', 'tzugurela@gmail.com', 'Economist', '0726519774', '10.06.1984', 'Studii superioare', '', '26 Ian – 3 Feb', 700, 2, 3, 1, 1158, 0, 2, 2, NULL, NULL),
(280, 'Dogeanu', 'Laura Violeta', 'laura.dogeanu@gmail.com', 'economist', '0724222572', '07/07/1975', 'A.S.E Bucuresti', '', '26 Ian – 3 Feb', 700, 2, 3, 1, 1159, 0, 1, 2, NULL, NULL),
(281, 'Pirvu', 'Vasilica', 'vasilica.nutu@gmail.com', 'Operator date', '0746637302', '10/16/1986', 'Facultate', '', '26 Ian – 3 Feb', 700, 2, 2, 2, 1162, 0, 2, 2, NULL, NULL),
(282, 'fierbinteanu', 'adrian ', 'fierbinteanu.adrian@gmail.com', 'Programator', '0761545201', '02/21/1985', 'Liceu', '', '26 Ian – 3 Feb', 700, 3, 2, 2, 1164, 0, 3, 2, 1, 1),
(283, 'Luca', 'Simona', 'viviannesim.sl@gmail.com', 'Tester', '0773895744', '03/08/1985', 'Upb', '', '18 Februarie - 3 Aprilie', 1061, 3, 2, 2, 1166, 0, 2, 2, NULL, NULL),
(284, 'Petrescu', 'Ioan Viorel', 'viorelpetrescu@yahoo.com', 'Agent Customer Service Desk', '0723195144', '26/02/1967', 'Univ. Bucuresti/Management resurse umane', '', '26 Ian – 3 Feb', 700, 2, 2, 1, 1168, 0, 2, 2, NULL, NULL),
(285, 'Andrada', 'Tucaevici', 'andrada@academiatestarii.ro', 'Iubita', '0745202244', '01/18/2019', 'Ejieje', '', ' 18 Iunie – 3 Iulie ', 254, 2, 1, 1, 1169, 0, 1, 2, NULL, NULL),
(286, 'Predescu', 'Marius', 'pmariuspredescu@gmail.com', 'QA Tester', '0721281911', '11/07/1987', 'Licentiat in Informatica', '', '18 Februarie - 3 Aprilie', 1061, 3, 3, 2, 1171, 0, 2, 2, NULL, NULL),
(287, 'Anton', 'Claudiu', 'anton_claudiu92@yahoo.com', 'Game tester', '0753638224', '02/16/1992', 'Superior ', '', '4 – 20 Martie', 254, 2, 2, 1, 1177, 0, 2, 2, NULL, NULL),
(288, 'Silviu', 'Silvan', 'themirceavalcu@gmail.com', 'doctor ', '0744476363', '02/11/2019', 'Cei sapte ani de acasa', '', '18 Februarie - 3 Aprilie', 1061, 2, 1, 1, 1190, 0, 1, 2, NULL, NULL),
(289, 'Silviu', 'Silvan', 'themirceavalcu@gmail.com', 'doctor ', '0744476363', '02/11/2019', 'Cei sapte ani de acasa', '', '4 – 20 Martie', 254, 2, 1, 1, 1190, 0, 1, 2, NULL, NULL),
(290, 'Olteanu', 'Dragos', 'dragos.olteanu@axessoftware.ro', 'Tester', '0726719456', '03/02/1982', 'Licenta economist', '', '4 – 20 Martie', 254, 3, 1, 1, 1197, 0, 1, 2, NULL, NULL),
(291, 'Visan', 'Daniel-Stefan', 'dvsn23@outlook.com', 'Validation Consultant', '0746503281', '09/23/1993', 'Superioara', '', ' 3 Iunie – 17 Iulie', 1061, 3, 3, 2, 1199, 0, 3, 2, NULL, NULL),
(292, 'asdas', 'dsada', 'cst2989@gmail.com', 'asdasd', '0734540912', '02/13/2019', 'asdasd', '', '4 – 20 Martie', 254, 2, 1, 1, 1, 0, 1, 2, NULL, NULL),
(293, 'Negoi??', 'Gabi R?zvan', 'gabinegoita@yahoo.com', 'Barista', '0764525669', '21/06/1985', 'Studii superioare in curs', '', '4 – 20 Martie', 254, 3, 1, 2, 1187, 0, 1, 2, NULL, NULL),
(294, 'Fuioaga', 'Alin', 'alin.fuioaga@icloud.com', 'Inside Business Partner', '0745651130', '04/18/1991', 'Studii Superioare', '', ' 11 – 19 Mai', 700, 3, 1, 1, 1203, 0, 3, 2, NULL, NULL),
(295, 'Ghilenschi ', 'Mihai', 'ghila777@yahoo.com', 'QA Automation', '0722313789', '10/06/1982', 'Electronica si Telecomunica?ii - Politehnica', '', '25 Mar - 16 Mai', 261, 3, 3, 2, 1008, 0, 1, 2, NULL, NULL),
(296, 'Armulescu', 'Miruna Olivia', 'mirunaolivia@gmail.com', 'lucrez in domeniul cadastrului', '0749268760', '07/25/1986', 'ASE (master)', '', '4 – 20 Martie', 254, 2, 1, 1, 1205, 0, 2, 2, NULL, NULL),
(297, 'Anghel ', 'Florentina Magdalena ', 'anghelmagdalena@yahoo.com', 'Junior accounting', '0746357302', '01/05/1997', 'Absolventa a facult??ii de Management din cadrul SNSPA', '', ' 11 – 19 Mai', 700, 2, 1, 1, 1206, 0, 2, 2, NULL, NULL),
(298, 'Pintilie', 'Oana', 'oanapintilie17@gmail.com', 'Recruiter', '0743492862', '04/17/1993', 'Postuniversitara', '', '4 – 20 Martie', 254, 2, 1, 1, 1207, 0, 1, 2, NULL, NULL),
(299, 'Popescu', 'Alexandra', 'trewalex@yahoo.com', 'manual tester', '0767545315', '08/17/1990', 'inginerie electrica', '', '18 Februarie - 3 Aprilie', 1061, 2, 1, 1, 1192, 0, 3, 2, 1, 1),
(300, 'Paun', 'Florin', 'ma3x_ul@yahoo.com', 'inginer constructor', '0728863265', '08/02/1988', 'Masterat management constructii', '', ' 11 – 19 Mai', 700, 2, 2, 1, 1208, 0, 2, 2, NULL, NULL),
(301, 'andreea', 'militaru', 'andreuta44@gmail.com', 'aiominibyvtrexrexrextvk5661/.ljjhbvbjbnikbk69751/*aiominibyvtrexrexrextvk5661/.ljjhbvbjbnikbk69751/*', '0799744371', '04/06/1993', 'ase', '', '4 – 20 Martie', 254, 3, 3, 2, 1211, 0, 1, 2, NULL, NULL),
(302, 'Test', 'Testing', 'cst2989@gmail.com', 'tester', '0022114422', '03/17/1971', 'asb', '', ' 11 – 19 Mai', 700, 2, 1, 1, 1, 0, 1, 2, NULL, NULL),
(303, 'Rauta', 'Diana', 'rauta.diana@yahoo.ro', 'Front Office Engineer', '0744446926', '21/11/1990', 'Universitatea Politehnica Bucuresti', '', '18 Iunie – 3 Iulie ', 254, 2, 2, 1, 1215, 0, 2, 2, NULL, NULL),
(304, 'Foltica', 'Alexandra', 'alexandra.cioroianu@gmail.com', 'IT Analyst', '0753138181', '07/19/1982', 'Master in Ingineria Sistemelor de Calcul', '', '3 Iunie – 17 Iulie', 1061, 3, 2, 1, 1216, 0, 2, 2, NULL, NULL),
(305, 'Amet', 'Adler', 'ametadler@yahoo.com', 'Agent vanzari', '0747868313', '01/12/1990', 'Liceu', '', ' 11 – 19 Mai', 700, 2, 2, 1, 1217, 0, 2, 2, NULL, NULL),
(306, 'Salceanu', 'Maria', 'maria.salceanu@trendconsult.eu', 'Consultant Management', '0744441456', '08/03/1977', 'ASE Bucuresti', '', ' 11 – 19 Mai', 700, 2, 3, 2, 1219, 0, 2, 2, NULL, NULL),
(307, 'Vlaicu', 'Adrian Romulus', 'adivlaicu72@gmail.com', 'inginer', '0724779289', '25/10/1972', 'Studii superioare', '', '3 Iunie – 17 Iulie', 1061, 2, 2, 2, 1220, 0, 1, 2, NULL, NULL),
(308, 'Vatamanu', 'Raisa  Miruna', 'Raisavm@yahoo.com', 'manager', '0767896373', '12/04/1989', 'masterat', '', '3 Iunie – 17 Iulie', 1061, 3, 3, 1, 972, 0, 1, 2, NULL, NULL),
(309, 'STROE', 'ADELINA ALEXANDRA', 'stroe.adelina.alexandra@gmail.com', 'SPECIALIST SERVICII CLIENTI', '0724580801', '05/24/1991', 'FACULATEA DE STIINTE ECONOMICE', '', ' 11 – 19 Mai', 700, 3, 2, 1, 1222, 0, 1, 2, NULL, NULL),
(310, 'Trepca', 'Adrian', 'trepca_adrian@yahoo.com', 'Trainer departament operational ', '0743861580', '11/27/1990', 'masterat', '', '18 Iunie – 3 Iulie ', 254, 2, 1, 1, 1223, 0, 2, 2, NULL, NULL),
(311, 'Lumtraru', 'Madalina', 'ana.luntraru@gmail.com', 'Referent marketing online', '0725537257', '05/20/1987', 'Master', '', '6 - 14 Iulie ', 700, 2, 3, 2, 1225, 0, 2, 2, NULL, NULL),
(312, 'Pop', 'Victor', 'pop.v.victor@gmail.com', 'QA Engineer', '0745981931', '07/11/1989', 'Liceu', '', '3 Iunie – 17 Iulie', 1061, 3, 3, 1, 1226, 0, 2, 2, NULL, NULL),
(313, 'Stefan', 'Craia', 'stefan.else@gmail.com', 'Freelancer', '0770715636', '12/20/1983', 'Licenta', '', ' 11 – 19 Mai', 700, 3, 2, 2, 1227, 0, 1, 2, NULL, NULL),
(314, 'Ciuica', 'Bogdan', 'ciuica_bogdan@yahoo.com', 'Fara ocupatie', '0763604136', '08/28/1995', 'Facultatea de Drept, Universitatea din Craiova', '', ' 11 – 19 Mai', 700, 3, 2, 2, 1228, 0, 2, 2, NULL, NULL),
(315, 'Raicu', 'Andrei', 'andrei.raicu111@gmail.com', 'Junior manual Software Tester', '0758795668', '11/02/1992', 'Facultate', '', '3 Iunie – 17 Iulie', 1061, 3, 2, 2, 1036, 0, 2, 2, NULL, NULL),
(316, 'Pauna', 'Oana', 'oana_pauna88@yahoo.com', 'Consilier juridic', '0727246750', '06/12/1988', 'Facultatea de Drept si Stiinte Administrative', '', '18 Iunie – 3 Iulie ', 254, 2, 2, 2, 1230, 0, 2, 2, NULL, NULL),
(317, 'Cojocaru', 'Maria Ramona', 'ramona.cojocaru@softeh.ro', 'DevOps Engineer', '0762543711', '05/25/1994', 'Studii superioare', '', '3 Iunie – 17 Iulie', 1061, 2, 2, 1, 1231, 0, 1, 2, NULL, NULL),
(318, 'Mihalcea', 'Roxana', 'roxana.modreanu@softeh.ro', 'DevOps Engineer', '0765656639', '09/29/1994', 'Studii superioare', '', '3 Iunie – 17 Iulie', 1061, 2, 2, 1, 1214, 0, 1, 2, NULL, NULL),
(319, 'Tunsu', 'Sorin', 'sorin.tunsu@gmail.com', 'Inginer', '0730688901', '09/17/1991', 'Inginer', '', '3 Iunie – 17 Iulie', 1061, 3, 2, 1, 1232, 0, 3, 2, NULL, NULL),
(320, 'Corbu', 'Iulia', 'iulia.corbu.cristiana@gmail.com', 'N/A', '0723559117', '05/03/1987', 'Liceu Tehnic Energetic', '', '6 - 14 Iulie ', 700, 2, 1, 1, 1234, 0, 3, 2, NULL, NULL),
(321, 'Golea ', 'Catalin', 'catalin_thk@yahoo.com', 'Operator electronist', '0730563009', '06/10/1980', 'Facultate', '', '6 - 14 Iulie ', 700, 2, 1, 1, 1235, 0, 2, 2, NULL, NULL),
(322, 'Matache', 'Mihaela', 'mihaela_bgh@yahoo.com', 'CCC', '0722452795', '12/10/1986', 'Master in curs de absolvire', '', '6 - 14 Iulie ', 700, 3, 3, 3, 1237, 0, 2, 2, NULL, NULL),
(323, 'Stanculet', 'Cosmin Claudiu', 'stanculet.cosmin@gmail.com', 'inginer electromecanic', '0767038408', '06/08/1990', 'Facultatea de Automatica ?i calculatoare', '', '6 - 14 Iulie ', 700, 2, 2, 2, 1236, 0, 1, 2, NULL, NULL),
(324, 'Ionita ', 'Andreea Tatiana', 'i.andreeatatiana@gmail.com', 'Consultant', '0730119012', '01/12/1981', 'Facultatea de Sociologie - Psihologie ', '', '6 - 14 Iulie ', 700, 2, 1, 1, 1240, 0, 1, 2, NULL, NULL),
(325, 'Creciun', 'Dumitru', 'creciundumitru@gmail.com', 'Inginer petrolist', '0732066905', '12/11/1986', 'Universitate', '', '2 Sep - 18 Sep', 254, 2, 2, 1, 1241, 0, 1, 2, NULL, NULL),
(326, 'Creciun', 'Dumitru', 'creciundumitru@gmail.com', 'Inginer Petrolist', '0732066905', '12/11/1986', 'Universitate', '', '6 - 14 Iulie ', 700, 2, 2, 1, 1241, 0, 1, 2, NULL, NULL);
INSERT INTO `db_module` (`id`, `last_name`, `first_name`, `email`, `occupation`, `phone`, `date_of_birth`, `education`, `foreign_languages`, `period`, `module`, `english`, `office`, `web`, `user`, `status`, `payment_type`, `payment_method`, `gdpr`, `newsletter`) VALUES
(327, 'Musetescu', 'Daniela', 'dana.musetescu@yahoo.com', 'account manager ', '0722447636', '06/21/1976', 'Facultatea de Economie Generala', '', 'In curând', 254, 2, 2, 2, 1243, 0, 2, 2, NULL, NULL),
(328, 'Anghel', 'Maria Diana', 'pantadiana@gmail.com', 'Profesor', '0766358893', '06/03/1984', 'Master', '', 'In curând', 254, 3, 2, 1, 1245, 0, 1, 2, NULL, NULL),
(329, 'CHESARU', 'ROXANA - NICOLETA', 'rox.chesaru@gmail.com', 'Team Manager', '0732260383', '09/23/1984', 'Academia de Studii Economice - Facultatea Management - Administratie Publica', '', '2 Sep - 18 Sep; 11 Noi - 27 Noi', 254, 3, 3, 2, 1246, 0, 3, 2, NULL, NULL),
(330, 'Andreescu', 'Ileana', 'ile.andreescu@gmail.com', 'Grafician', '0724663123', '20051968', 'Studii superioare', '', '2 Sep - 18 Sep', 254, 2, 2, 2, 1247, 0, 3, 2, NULL, NULL),
(331, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', 'Customer Success Manager', '0722912206', '10/10/1984', 'Computer Science - Universitatea Romano Americana', '', '2 Sep - 18 Sep', 254, 3, 3, 3, 1248, 0, 3, 2, NULL, NULL),
(332, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', 'Customer Success Manager', '0722912206', '10/10/1984', 'Computer Science, Universitatea Romano Americana', '', '23 Sep - 6 Noi', 1061, 3, 3, 3, 1248, 0, 3, 2, NULL, NULL),
(333, 'Sava', 'Radu', 'radu1691@gmail.com', 'Expert Logistic', '0721438543', '06/01/1991', 'Masterand', '', '2 Sep - 18 Sep', 254, 3, 1, 1, 1249, 0, 2, 2, NULL, NULL),
(334, 'Ciunt', 'Raul', 'raulciunt@yahoo.com', 'Software Quality Assurance Engineer', '0753821600', '05/29/1989', 'Licenta', '', '23 Sep - 6 Noi', 1061, 3, 2, 3, 1251, 0, 3, 2, NULL, NULL),
(335, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', '-', '0722532193', '08/20/1981', 'Liceul', '', '2 Sep - 18 Sep', 254, 3, 3, 1, 1252, 0, 1, 2, NULL, NULL),
(336, 'Chelaru', 'Iulian-Robert', 'chelaru.iulian15@gmail.com', 'Consultant achizitii IT', '0755976002', '11/15/1996', 'Masterand', '', '2 Sep - 18 Sep', 254, 2, 3, 2, 1250, 0, 1, 2, NULL, NULL),
(337, 'Rusu', 'Madalina', 'rusumadalinna@yahoo.com', 'credit analyst', '0754683925', '03/23/1985', 'master', '', '2 Sep - 18 Sep', 254, 2, 2, 2, 1253, 0, 1, 2, NULL, NULL),
(338, 'Nicoara', 'Drago?', 'nicoaraionutdragos@gmail.com', 'Analist', '0766674693', '05/26/1998', 'Master', '', '2 Sep - 18 Sep', 254, 3, 1, 1, 1255, 0, 2, 2, NULL, NULL),
(339, 'Cretan', 'Ioan-Alexandru', 'alexandru.cretan@gmail.com', 'QA Analyst', '0799338379', '09/20/1992', 'Politehnica - Mecatronica si Robotica', '', '2 Sep - 18 Sep', 254, 3, 1, 1, 1254, 0, 2, 2, NULL, NULL),
(340, 'Mihai', 'Tudose', 'mihtud@yahoo.com', 'somer', '0728143318', '09/11/1970', 'studii economice', '', '2 Sep - 18 Sep', 254, 3, 3, 2, 1257, 0, 1, 2, NULL, NULL),
(341, 'Soare', 'Ionut Bogdan', 'grod1490@gmail.com', 'QA Tester', '0721645311', '05/14/1990', 'Licenta Drept', '', '2 Sep - 18 Sep', 254, 3, 2, 1, 1256, 0, 2, 2, NULL, NULL),
(342, 'Agavriloaei', 'Elena', 'elena@agavriloaei.ro', 'Specialist marketing', '0735435393', '05/24/1994', 'Studii superioare', '', '2 Sep - 18 Sep', 254, 2, 2, 1, 1258, 0, 3, 2, NULL, NULL),
(343, 'Dragomir', 'Alexandra ', 'dragomiralexandramaria@gmail.com', 'Management Assistant ', '0784125628', '07/08/1994', 'Facultatea de Litere', '', '2 Sep - 18 Sep', 254, 2, 1, 1, 1259, 0, 1, 2, NULL, NULL),
(344, 'Pântrjel ', 'Petru-Alexandru', 'ppetru.alexandru@gmail.com', 'Asistent proiect/ functionar economic', '0726885804', '06/23/1988', 'Bachelor`s degree, Management Financiar Contabil', '', '2 Sep - 18 Sep', 254, 3, 2, 1, 1262, 0, 1, 2, NULL, NULL),
(345, 'Voica', 'Maria-Gabriela ', 'Voica.maria@gmail.com', 'Coordonator emisie', '0747252507', ' 29.01.1985 ', 'Universitatea Hyperion Regie Film si TV ', '', '2 Sep - 18 Sep', 254, 2, 1, 1, 1263, 0, 2, 2, NULL, NULL),
(348, 'IRIS', 'Daniel Adrian', 'daniel.iris@siveco.ro', 'Tester', '0731707594', '01/29/1985', 'Master', '', '23 Sep - 6 Noi', 1061, 2, 3, 2, 1264, 0, 1, 2, NULL, NULL),
(349, 'Mitroi', 'Ana-Maria', 'ana.maria0201@yahoo.com', 'Game Tester', '0763246689', '02/01/1990', 'UCDC', '', '11 Noi - 27 Noi', 254, 2, 1, 1, 1265, 0, 3, 2, NULL, NULL),
(350, 'Ioana', 'Cristina', 'ioanacristiana2005@yahoo.com', 'N/A', '0761687447', '09/02/2019', 'N/A', '', '2 Sep - 18 Sep', 254, 2, 1, 1, 1267, 0, 1, 2, NULL, NULL),
(351, 'Balasa', 'Alexandra', 'balasaalexandra1993@gmail.com', 'Inginer mecanic', '0743522420', '08/19/1993', 'Masterand', '', '11 Noi - 27 Noi', 254, 3, 2, 2, 1268, 0, 1, 2, NULL, NULL),
(352, 'Ionita', 'Mihai Alexandru', 'ionita.alexandru.mihai@gmail.com', 'Inginer mecanic', '0734190743', '11/29/1993', 'Universitatea politehnica', '', '11 Noi - 27 Noi', 254, 3, 2, 2, 1218, 0, 3, 2, NULL, NULL),
(353, 'Qanairy', 'Qanairy', 'crosy_2pac@yahoo.com', 'Qanairy', '0734540913', '09/10/2019', 'Qanairy', '', 'In curând', 261, 3, 3, 3, 1269, 0, 3, 2, NULL, NULL),
(354, 'Mahmood', 'Muheb', 'mahmood.muheb@gmail.com', 'Medic Stomatolog', '0720312746', '19/08/1987', 'Facultate de Medicina Dentara', '', '7 Dec - 15 Dec', 700, 3, 2, 2, 1271, 0, 1, 2, NULL, NULL),
(355, 'Zamfir', 'Oana', 'oanazamfir@gmail.com', 'Software Tester', '0724749036', '01/08/1982', 'Facultate', '', '23 Sep - 6 Noi', 1061, 3, 2, 2, 1272, 0, 2, 2, NULL, NULL),
(356, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', 'QA tester', '0722532193', '08/20/1981', 'Liceu', '', '23 Sep - 6 Noi', 1061, 2, 2, 2, 1252, 0, 1, 2, NULL, NULL),
(357, 'Ionut', 'Stancuea', 'ionut.stanculea@gmail.com', 'Inginer Proiectant Auto', '0775547311', '11/23/1993', 'Universitatea Politehnica', '', '11 Noi - 27 Noi', 254, 2, 2, 2, 1273, 0, 3, 2, NULL, NULL),
(358, 'Anghel', 'Maria Diana', 'pantadiana@gmail.com', 'profesor', '0766358893', '03/06/1984', 'Master', '', '7 Dec - 15 Dec', 700, 3, 1, 1, 1245, 0, 1, 2, NULL, NULL),
(359, 'Pohrib', 'Marina ', 'ampohrib@gmail.com', 'Profesor', '0751226506', '09/10/1986', 'Masters ', '', '7 Dec - 15 Dec', 700, 3, 2, 2, 1277, 0, 1, 2, NULL, NULL),
(363, 'Cretan', 'Alexandru', 'alexandru.cretan@gmail.com', 'QA Analyst - Amber', '0799338379', '09/20/1992', 'Facultate', '', '23 Sep - 6 Noi', 1061, 3, 3, 2, 1254, 0, 3, 2, NULL, NULL),
(364, 'Gurgu', 'Ciprian', 'cgurgu@internetmarketingcompany.biz', 'QA tester', '0735787364', '04/18/1988', 'studii universitare absolvite', '', '23 Sep - 6 Noi', 1061, 3, 3, 3, 1282, 0, 3, 2, NULL, NULL),
(365, 'Ciurcanu', 'Oana', 'ciurcanu_oana@yahoo.com', 'Inginer mecanic', '0747437345', '05/05/1992', 'Licenta', '', '11 Noi - 27 Noi', 254, 2, 2, 2, 1283, 0, 1, 2, NULL, NULL),
(366, 'Anton', 'Iulia Ioana', 'ischeul@yahoo.com', 'Economist', '0744341064', '09/02/1975', 'Universitara', '', '11 Noi - 27 Noi', 254, 2, 2, 2, 1285, 0, 3, 2, NULL, NULL),
(367, 'Mitru', 'Ana Maria Isabela', 'mitru.anamaria@yahoo.com', 'Technical support level 2', '0769959316', '12/20/1992', 'Facultatea de litere', '', '7 Dec - 15 Dec', 700, 3, 3, 2, 1288, 0, 3, 2, NULL, NULL),
(368, 'Dobra', 'Maria', 'maria.dobra91@gmail.com', 'Inginer', '0753982547', '03/03/1991', 'Diploma de licenta', '', '11 Noi - 27 Noi', 254, 2, 1, 1, 1289, 0, 3, 2, NULL, NULL),
(369, 'Sarbu', 'Georgiana', 'sarbu.georgiana1988@gmail.com', 'Claims Specialist', '0724827178', '17022019', 'Master', '', '7 Dec - 15 Dec', 700, 2, 2, 2, 1290, 0, 3, 2, NULL, NULL),
(370, 'Hincu', 'Alina-Emilia', 'hincu.emi@gmail.com', 'beauty advisor', '0762270788', '01/15/1985', 'Marketing si afaceri economice', '', '11 Noi - 27 Noi', 254, 2, 1, 1, 1291, 0, 1, 2, NULL, NULL),
(371, 'Enache-Pommer', 'Ana', 'Enachepommer.ana@gmail.com', 'none', '0727794155', '02/05/1989', 'Politehnica', '', '11 Noi - 27 Noi', 254, 3, 1, 1, 1293, 0, 3, 2, NULL, NULL),
(372, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', 'Customer Success Manager', '0722912206', '10/10/1984', 'Computer Science', '', '3 Febr - 18 Martie', 1061, 3, 3, 3, 1248, 0, 2, 2, NULL, NULL),
(373, 'Dinu', 'Andreea Cristina', 'andreea_cristina_dinu@yahoo.com', 'Economist', '0727505301', '06/27/1984', 'Master', '', '11 Noi - 27 Noi', 254, 3, 3, 1, 1294, 0, 1, 2, NULL, NULL),
(374, 'Buraga', 'Raluca', 'raluca_buraga@yahoo.com', 'Inginer Proiectant Constructii ', '0724047140', '06/27/1978', 'Studii Superioare', '', '7 Dec - 15 Dec', 700, 2, 2, 1, 1295, 0, 1, 2, NULL, NULL),
(375, 'Nastase', 'Corina', 'corina.nastase2014@gmail.com', 'PMO', '0742983736', '08/27/1980', 'Studii universitare', '', '11 Noi - 27 Noi', 254, 2, 2, 1, 1297, 0, 2, 2, NULL, NULL),
(376, 'Rou?-Simion', 'Alexandra-Maria ', 'alexandrasimion583@yahoo.com', '-', '0770311306', '01/29/1995', 'Licenta ', '', '11 Noi - 27 Noi', 254, 3, 1, 1, 1299, 0, 1, 2, NULL, NULL),
(377, 'Rou?', 'George', 'rouageorge@gmail.com', 'D.G.P.M.B.', '0775606958', '04/19/1991', 'Licenta', '', '11 Noi - 27 Noi', 254, 2, 1, 1, 1300, 0, 1, 2, NULL, NULL),
(378, 'Afrim', 'Catalin', 'catalin.afrim@gmail.com', 'Operator Back Office', '0752675768', '25/05/1990', 'Comunicare si Relatii Publice ', '', '11 Noi - 27 Noi', 254, 2, 2, 2, 1278, 0, 3, 2, NULL, NULL),
(379, 'ILIE', 'RAZVAN', 'razvancostin.ilie@gmail.com', 'FUNCTIONAR BANCAR ', '0746112231', '08/28/1984', 'STUDII SUPERIOARE ', '', '7 Dec - 15 Dec', 700, 2, 1, 1, 1301, 0, 2, 2, NULL, NULL),
(380, 'Petru', 'Nicoleta', 'nycoleta.petru@gmail.com', 'Data Analyst ', '0728085030', '06/21/1986', ' Academia de Studii Economice, Management Economic, Liceu cu profil Matematica Informatica', '', '', 254, 2, 3, 2, 1303, 0, 3, 2, NULL, NULL),
(381, 'Ban', 'Dumitru', 'ban.dumitru@gmail.com', 'Operator imagine ProTv', '0766421553', '05/18/1987', 'Facultate', '', '7 Dec - 15 Dec', 700, 2, 1, 1, 1306, 0, 3, 2, NULL, NULL),
(382, 'Sandu', 'Ionut Daniel', 'danisandu59@gmail.com', 'Game Tester', '0735083268', '11/03/1995', 'Academia de Studii Economice din Bucuresti, Marketing', '', '7 Dec - 15 Dec', 700, 3, 2, 2, 1307, 0, 1, 2, NULL, NULL),
(383, 'Ciuciu-Toader', 'Emilia-Gabriela', 'ema_gbrl@yahoo.com', 'Asitent Manager', '0745040267', '02/18/1989', 'Master', '', '7 Dec - 15 Dec', 700, 2, 1, 1, 1308, 0, 1, 2, NULL, NULL),
(384, 'Creasta ', 'Ana Maria ', 'anamariacreasta@yahoo.com', 'ICT Communications Officer', '0725792135', '06/05/1991', 'ASE- Informatica Economica', '', '7 Dec - 15 Dec', 700, 2, 2, 2, 1311, 0, 2, 2, NULL, NULL),
(385, 'Chiriac', 'Andreea-Adriana', 'andreeachiriac3@yahoo.com', 'Tehnical Support', '0748424754', '01/03/1995', 'Master in Contabilitate si Informatica de Gestiune', '', '7 Dec - 15 Dec', 700, 2, 1, 1, 1310, 0, 1, 2, NULL, NULL),
(386, 'Dinu', 'Anca Georgiana', 'anca1189@yahoo.com', 'Barman', '0768153153', '04/11/1989', 'Liceu', '', '11 Noi - 27 Noi', 254, 2, 2, 1, 1313, 0, 1, 2, NULL, NULL),
(387, 'Martinas', 'Radu', 'radu.martinas@ymail.com', 'inginer', '0724290943', '12/17/1987', 'Automatica', '', '7 Dec - 15 Dec', 700, 3, 3, 1, 1315, 0, 2, 2, NULL, NULL),
(388, 'Martinas', 'Andreea', 'andreea.martinas88@yahoo.com', 'Special Pricing Analyst', '0724623752', '03/23/1988', 'Inginerie Medicala', '', '7 Dec - 15 Dec', 700, 3, 2, 1, 1316, 0, 2, 2, NULL, NULL),
(389, 'Zaharia', 'Diana ', 'diana.f.zaharia@gmail.com', 'Account Manager', '0752125171', '10/17/1984', 'Vcvv', '', '7 Dec - 15 Dec', 700, 3, 2, 2, 1317, 0, 2, 2, NULL, NULL),
(390, 'Bercu', 'Constantin', 'bercuconstantinbogdan@yahoo.com', 'Inginer', '0740569465', '05/15/1993', 'Masterand', '', '7 Dec - 15 Dec', 700, 2, 2, 2, 1318, 0, 3, 2, NULL, NULL),
(391, 'Cristian ', 'Romanoschi', 'cristian_romanoschi@yahoo.com', 'Product Owner', '0723584812', '04/12/1984', 'Studii Superioare', '', '3 Febr - 18 Martie', 1061, 3, 2, 2, 1320, 0, 3, 2, NULL, NULL),
(392, 'Prigoreanu', 'Elena Diana', 'dianaprigoreanu@yahoo.com', 'Studenta', '0732678111', '04/02/1995', 'Studii Liceale ', '', '1 Feb - 9 Feb 2020', 700, 2, 2, 1, 1309, 0, 2, 2, NULL, NULL),
(393, 'Tudor', 'Alina Nicoleta ', 'tudor_alina_nicoleta@yahoo.com', 'Economist', '0731669713', '05/24/1988', 'Master', '', '13 - 29 Ianuarie 2019', 254, 2, 2, 1, 1322, 0, 3, 2, NULL, NULL),
(394, 'Duran', 'Georgiana', 'durangeorgiana@yahoo.com', 'Inginer Mecanic', '0767091610', '03/18/1993', 'Universitatea Politehnica Bucuresti, Facultatea de Transporturi', '', '1 Feb - 9 Feb 2020', 700, 2, 1, 1, 1321, 0, 1, 2, NULL, NULL),
(395, 'Musat', 'Daniela', 'daniela.musat6@gmail.com', 'Manager Contractare', '0738004107', '02/23/1988', 'liceu', '', '11 Noi - 27 Noi', 254, 3, 2, 2, 1323, 0, 2, 2, NULL, NULL),
(419, 'Negoesteanu', 'Alexandru', 'alexzamoravvv@gmail.com', 'Game Tester', '0732874370', '01/26/1992', 'Master Sisteme Informationale Geografice', '', '1 Feb - 9 Feb 2020', 700, 3, 3, 3, 1353, 0, 3, 2, NULL, NULL),
(397, 'Musat', 'Daniela', 'daniela.musat6@gmail.com', 'Manager Contractare', '0738004107', '02/23/1988', 'Liceu', '', '7 Dec - 15 Dec', 700, 3, 2, 2, 1323, 0, 2, 2, NULL, NULL),
(398, 'Avram', 'Ciprian', 'avramciprian18@yahoo.com', 'Data Entry Operator', '0729296865', '12/02/1995', 'Master', '', '7 Dec - 15 Dec', 700, 3, 3, 3, 1324, 0, 2, 2, NULL, NULL),
(399, 'Pohrib', 'Marina', 'cst2989@gmail.com', 'ampohrib@gmail.com', '0751226506', '12/05/2019', 'aaa', '', '7 Dec - 15 Dec', 700, 2, 1, 1, 1, 0, 1, 2, NULL, NULL),
(400, 'MIHAI', 'Tudor', 'radutimohi@yahoo.com', 'inginer', '0734433052', '26/10/1965', 'studii superioare', '', '7 Dec - 15 Dec', 700, 2, 2, 1, 1325, 0, 2, 2, NULL, NULL),
(401, 'Doar 14', 'Persoane', 'crosy_2pac@yahoo.com', 'Dsss', '0734540913', '12/19/2019', 'Aaaa', '', '7 Dec - 15 Dec', 700, 2, 1, 1, 1269, 0, 1, 2, NULL, NULL),
(402, 'BAN', 'DUMITRU', 'ban.dumitru@gmail.com', 'Operator imagine', '0766421553', '12/18/1987', 'liceu', '', '3 Febr - 18 Martie', 1061, 2, 1, 1, 1306, 0, 3, 2, NULL, NULL),
(403, 'Cutieru ', 'Mihai-Petrisor ', 'cutieru_mihai@yahoo.com', 'Specialist achizitii componente aeronava', '0728198930', '05/10/1984', 'Master la Academia de Studii Economice', '', '13 - 29 Ianuarie 2019', 254, 3, 2, 2, 1326, 0, 1, 2, NULL, NULL),
(404, 'IONITA-ANDREI', 'CRISTIAN-GEORGE', 'ionita.andrei2010@gmail.com', 'Cameraman', '0723181363', '10/30/1981', 'FACULTATE', '', '1 Feb - 9 Feb 2020', 700, 2, 1, 1, 1327, 0, 3, 2, NULL, NULL),
(405, 'Zlotea', 'Oana', 'zlotea.oana@yahoo.com', 'Analist', '0724901921', '10/04/1989', 'master', '', '3 Febr - 18 Martie', 1061, 3, 2, 1, 1329, 0, 2, 2, NULL, NULL),
(406, 'Niculita', 'Crsitian', 'niculita.cristi@gmail.com', 'secretar facultate', '0745863179', '06/06/1975', 'universitare', '', '1 Feb - 9 Feb 2020', 700, 2, 3, 3, 1336, 0, 2, 2, NULL, NULL),
(407, 'Tudorache', 'Stefan', 'tudorache.stefan@gmail.com', 'POS Supervisor', '0753601824', '23/03/1986', 'Master - Marketing si Comunicare in Afaceri', '', '13 - 29 Ianuarie 2019', 254, 2, 1, 1, 1338, 0, 1, 2, NULL, NULL),
(408, 'Patras ', 'Andreea Georgiana', 'andreea.patras@gmail.com', 'consilier achizitii', '0768860960', '08/05/1985', 'Acaademia de Studii Economice', '', '1 Feb - 9 Feb 2020', 700, 2, 2, 2, 1339, 0, 2, 2, NULL, NULL),
(409, 'Bratu', 'Simona', 'bmona@yahoo.com', 'QA Tester', '0744441175', '05/31/1975', 'ASE - Fac. Cibernetica, Statistica si Informatica Economica', '', '3 Febr - 18 Martie', 1061, 2, 2, 2, 1340, 0, 2, 2, NULL, NULL),
(410, 'Tatu', 'Alexandra', 'tatu.alexandra91@gmail.com', 'Consultant Software', '0766573537', '31/12/1991', 'Master', '', '1 Feb - 9 Feb 2020', 700, 2, 2, 2, 1341, 0, 3, 2, NULL, NULL),
(411, 'Zaharache', 'Stefan', 'trashlord72@gmail.com', 'Game Tester', '0770976351', '10/31/1997', 'Liceul Teoretic \\\"Jean Monnet\\\"', '', '1 Feb - 9 Feb 2020', 700, 3, 3, 3, 1342, 0, 2, 2, NULL, NULL),
(412, 'Alecsandru', 'Dan', 'dem24cat@yahoo.com', 'sales', '0722492426', '04/20/1978', 'MARKETING', '', '1 Feb - 9 Feb 2020', 700, 2, 2, 1, 1343, 0, 1, 2, NULL, NULL),
(413, 'Palcau', 'Maria', 'palcau_maria@yahoo.com', 'Analist servicii clienti', '0757063651', '12/15/1991', 'Facultatea de Litere', '', '1 Feb - 9 Feb 2020', 700, 3, 1, 1, 1344, 0, 1, 2, NULL, NULL),
(414, 'Plopeanu', 'Andreea', 'deea_cosmina@yahoo.com', 'QA Manual', '0733044911', '02/04/1989', 'Master', '', '3 Febr - 18 Martie', 1061, 3, 2, 1, 1345, 0, 3, 2, NULL, NULL),
(415, 'Foltica', 'Alexandra', 'alexandra.cioroianu@gmail.com', 'Analist IT', '0753138181', '19071982', 'Masterat', '', '3 Febr - 18 Martie', 1061, 3, 2, 2, 1216, 0, 2, 2, NULL, NULL),
(416, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', 'QA', '0722532193', '08/20/1981', 'Liceu', '', '3 Febr - 18 Martie', 1061, 2, 3, 1, 1252, 0, 1, 2, NULL, NULL),
(417, 'Nita', 'Alexandra', 'alexandra.iacobuta@gmail.com', 'Economist', '0745012851', '08/14/1987', 'Master ASE - Contabilitate, Control si Expertiza', '', '13 - 29 Ianuarie 2019', 254, 2, 2, 2, 1349, 0, 2, 2, NULL, NULL),
(418, 'Danalache', 'Fabian', 'danalache.fabian@gmail.com', 'IT recruiter', '0735590310', '09/11/1994', 'ASE - Managementul Resurselor Umane', '', '13 - 29 Ianuarie 2019', 254, 3, 2, 1, 1347, 0, 1, 2, NULL, NULL),
(420, 'Dumitrica', 'Cosmin', 'dumitrica_cosmin@yahoo.com', 'Manager administrativ', '0726385834', '06/21/1988', 'Studii superioare', '', '13 - 29 Ianuarie 2019', 254, 2, 2, 2, 1354, 0, 2, 2, NULL, NULL),
(421, 'Tudose ', 'Daniela-Iulia', 'ziulik@yahoo.co.uk', 'agent turism', '0762357106', '06/09/1986', 'Master', '', '1 Feb - 9 Feb 2020', 700, 2, 1, 1, 1355, 0, 2, 2, NULL, NULL),
(422, 'Dinu', 'Andreea Cristina', 'andreea_cristina_dinu@yahoo.com', 'Project Support Officer', '0727505301', '06/27/1984', 'Master', '', '3 Febr - 18 Martie', 1061, 3, 3, 1, 1294, 0, 1, 2, NULL, NULL),
(424, 'BRENDEA', 'ALEXANDRU-IULIAN', 'brendea.alexandru@yahoo.com', 'INGINER PROIECTANT INSTALATII', '0735656944', '08/09/1988', 'FACULTATEA DE INGINERIE A INSTALATIILOR', '', '30 Martie - 15 Aprilie', 254, 2, 2, 1, 1358, 0, 1, 2, NULL, NULL),
(425, 'Manole Mihaela', 'Mihaela', 'Francumihaelatatiana@yahoo.com', 'Analist', '0723725766', '01/18/2020', 'Facultate', '', '1 Feb - 9 Feb 2020', 700, 2, 3, 2, 1361, 0, 2, 2, NULL, NULL),
(426, 'Gavrila', 'Angela', 'angelagavrila@gmail.com', 'HRIS specialist', '0733600067', '06/23/1983', 'Finante Banci- licenta ', '', '30 Martie - 15 Aprilie', 254, 3, 2, 2, 1362, 0, 1, 2, NULL, NULL),
(427, 'Coculescu', 'Alexandra', 'cst2989@gmail.com', 'coculescu.andra@gmail.com', '0741516288', '01/16/2000', 'aa', '', '1 Feb - 9 Feb 2020', 700, 2, 1, 1, 1, 0, 2, 2, NULL, NULL),
(428, 'Calin', 'Ingrid', 'caliningridd@gmail.com', 'Tester', '0721796926', '01/27/1995', 'Student', '', '1 Feb - 9 Feb 2020', 700, 3, 2, 1, 1367, 0, 2, 2, NULL, NULL),
(429, 'Daniel-Stefan', 'Tirscoveanu', 'daniel.stefan.t@gmail.com', 'Game Tester', '0758558921', '03/09/1992', 'Bacalaureat', '', '1 Feb - 9 Feb 2020', 700, 3, 3, 2, 1368, 0, 1, 2, NULL, NULL),
(430, 'Râmboi', 'Alexandru ', 'ramboi.alexandru@gmail.com', 'Game Tester ', '0756644825', '12/10/1984', 'Studii Superioare ', '', '1 Feb - 9 Feb 2020', 700, 2, 2, 2, 1369, 0, 2, 2, NULL, NULL),
(431, 'Marin', 'Corina', 'corina_marin25@yahoo.com', 'Economist', '0757321907', '07/25/1986', 'Masterat', '', '30 Martie - 15 Aprilie', 254, 2, 2, 1, 1370, 0, 2, 2, NULL, NULL),
(432, 'Stanica', 'Simona', 'stanicaas95@gmail.com', 'Testing Specialist', '0732370327', '03/28/1995', 'Liceu', '', '3 Febr - 18 Martie', 1061, 3, 2, 1, 1371, 0, 2, 2, NULL, NULL),
(433, 'Matei', 'Adrian', 'adrian.matei.am@gmail.com', 'N/A', '0723017610', '05/22/1978', 'Universitatea Bucuresti - Informatica', '', '3 Febr - 18 Martie', 1061, 3, 2, 1, 1372, 0, 1, 2, NULL, NULL),
(434, 'Voinea', 'Florin', 'voin3a_florin@yahoo.com', 'Vanzari', '0741218552', '05/05/1984', 'Inginer Agronom', '', '30 Martie - 15 Aprilie', 254, 2, 2, 2, 1373, 0, 2, 2, NULL, NULL),
(435, 'Voinea', ' Florin', 'voin3a_florin@yahoo.com', 'Vanzari', '0741218552', '05/05/1984', 'Ingineri agronom', '', '1 Feb - 9 Feb 2020', 700, 2, 2, 2, 1373, 0, 1, 2, NULL, NULL),
(438, 'Vaida', 'Mihai', 'vaidamihai@gmail.com', 'Business Analyst', '0726290527', '07/07/1989', 'Facultate', '', '10 Februarie - 20 Martie 2020', 1435, 3, 2, 2, 1374, 0, 3, 2, NULL, NULL),
(439, 'Stoicescu', 'Gabriel', 'gabi21stoicescu@yahoo.com', 'Economist', '0760337330', '10/07/1984', 'Administrarea Afacerilor', '', '30 Martie - 15 Aprilie', 254, 2, 1, 1, 1376, 0, 2, 2, NULL, NULL),
(440, 'Tudor', 'Andreea Stefania', 'andreea.stefania_tudor@yahoo.com', 'Farmacist', '0747011327', '12/27/1988', 'Liceul Teoretic Ion Neculce , diploma de bacalaureat, Universitatea de Medicina si Farmacie \\\"Carol Davila\\\" Facultatea de Famacie, diploma de absolvire, diploma de licenta ', '', '30 Martie - 15 Aprilie', 254, 3, 1, 1, 1378, 0, 1, 2, NULL, NULL),
(441, 'Serban', 'Roxana- Elena', 'serban.roxana.elena.01@gmail.com', 'Profesor învatamânt prescolar', '0729409345', '29/01/1995', 'Marter, studii postuniversitare', '', '9 - 17 Mai 2020', 700, 2, 1, 1, 1379, 0, 2, 2, NULL, NULL),
(442, 'Prigoreanu', 'Diana ', 'dianaprigoreanu9525@gmail.com', 'Student ', '0732678111', '04/02/1995', 'bvcjhglvgb bnj', '', '15 Ian – 21 Feb 2018', 254, 2, 2, 2, 953, 0, 2, 2, NULL, NULL),
(443, 'Popa ', 'Laura', 'laura_dulcik88@yahoo.com', 'Contabil', '0744176517', '08/01/1988', 'Studii superioare', '', '30 Martie - 15 Aprilie', 254, 2, 1, 1, 1365, 0, 2, 2, NULL, NULL),
(444, 'Tanasescu', 'Anca', 'tzugurela@gmail.com', 'Economist', '0726519774', '06/10/1984', 'Studii superioare', '', '17 Februarie - 27 Martie 2020', 1435, 2, 2, 2, 1158, 0, 2, 2, NULL, NULL),
(445, 'Burcea', 'Marius-Cristian', 'mcburcea@gmail.com', 'Psihoterapeut', '0732154844', '09/07/1979', 'Postuniversitare', '', '30 Martie - 15 Aprilie', 254, 2, 2, 2, 1381, 0, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `staff` int(10) UNSIGNED DEFAULT NULL,
  `scor` int(2) UNSIGNED DEFAULT 0,
  `organizare_jira_zephyr_plus` text DEFAULT NULL,
  `organizare_jira_zephyr_minus` text DEFAULT NULL,
  `test_cases_plus` text DEFAULT NULL,
  `test_cases_minus` text DEFAULT NULL,
  `defects_plus` text DEFAULT NULL,
  `defects_minus` text DEFAULT NULL,
  `traceability_plus` text DEFAULT NULL,
  `traceability_minus` text DEFAULT NULL,
  `link` varchar(12) DEFAULT NULL,
  `granted_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `class_id`, `staff`, `scor`, `organizare_jira_zephyr_plus`, `organizare_jira_zephyr_minus`, `test_cases_plus`, `test_cases_minus`, `defects_plus`, `defects_minus`, `traceability_plus`, `traceability_minus`, `link`, `granted_on`, `created_at`, `updated_at`) VALUES
(1, 108, 7, NULL, 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 't in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, datat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut  dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat', 'labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'kjhads578zc9', '2020-02-25 13:34:26', NULL, NULL),
(2, 3, 16, NULL, 5, '231', '23', '', '31', '31', '', '31', '', 'DuyDXKoeb9PJ', '2020-03-25 11:11:49', NULL, NULL),
(3, 1, 6, NULL, 9, 'Foarte bine', 'Foarte bine', 'Foarte bine', 'Foarte bine', 'Foarte bine', 'Foarte bine', 'Foarte bine', 'Foarte bine', 'EkegT4ziFQHb', '2020-04-06 12:19:16', NULL, NULL),
(4, 1, 20, NULL, 10, 'scv\\xzc', 'cxz\\c', 'c\\xzczxc', '\\zxczx', '\\xzc\\xzc', '\\xzc', 'c\\xzc', 'z\\xc\\xz', 'uUE7WriwPsTI', '2020-04-06 14:20:44', NULL, NULL),
(5, 1, 25, NULL, 10, 'test asdasdasdasd', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', 'Oferim cursuri de preg?tire specializat? în testare software, consultan?? ?i servicii de resurse.', '704OFMg7Gu1K', '2020-04-26 10:04:58', NULL, NULL),
(6, 3, 56, NULL, 10, 'Perfect', 'Perfect', 'Perfect', 'Perfect', 'Perfect', 'Perfect', 'Perfect', 'Perfect', 'u9YRbVswSFzV', '2020-09-29 20:15:01', NULL, NULL),
(7, 365, 16, NULL, 10, '', '', '', '', '', '', '', '', 'VNibUHfApABn', '2020-10-12 11:22:16', NULL, NULL),
(8, 5, 24, NULL, 10, '', '', '', '', '', '', '', '', 'R4M0YrIQB95e', '2020-11-12 11:09:18', NULL, NULL),
(9, 396, 22, NULL, 10, '', '', '', '', '', '', '', '', 'At3jxlCu5SrB', '2020-11-12 11:09:59', NULL, NULL),
(10, 394, 22, NULL, 10, '', '', '', '', '', '', '', '', 'ZDfRPx9Geidg', '2020-11-12 11:12:48', NULL, NULL),
(11, 397, 22, NULL, 10, '', '', '', '', '', '', '', '', 'OYFUisSHM8K2', '2020-11-12 11:14:13', NULL, NULL),
(12, 398, 22, NULL, 10, '', '', '', '', '', '', '', '', 'Qxv7jwpicVt0', '2020-11-12 11:17:27', NULL, NULL),
(13, 402, 22, NULL, 10, '', '', '', '', '', '', '', '', 'GQilyFTkFpBv', '2020-11-12 11:17:53', NULL, NULL),
(14, 405, 22, NULL, 10, '', '', '', '', '', '', '', '', 'Mk9HI6w7PwfC', '2020-11-12 11:18:19', NULL, NULL),
(15, 406, 22, NULL, 10, '', '', '', '', '', '', '', '', '47vhs8PagyIf', '2020-11-12 11:18:48', NULL, NULL),
(16, 407, 22, NULL, 10, '', '', '', '', '', '', '', '', 'bssxv5jpgGsG', '2020-11-12 11:19:16', NULL, NULL),
(17, 408, 22, NULL, 10, '', '', '', '', '', '', '', '', '4QfJ4Es4Pz5r', '2020-11-12 11:19:53', NULL, NULL),
(18, 410, 22, NULL, 10, '', '', '', '', '', '', '', '', 'MZc0VJq09YAb', '2020-11-12 11:20:31', NULL, NULL),
(19, 214, 21, NULL, 10, '', '', '', '', '', '', '', '', 'bjYYX0O5KaNC', '2020-11-12 11:24:43', NULL, NULL),
(20, 379, 21, NULL, 10, '', '', '', '', '', '', '', '', 'l5sAY6tonfnI', '2020-11-12 11:25:30', NULL, NULL),
(21, 267, 21, NULL, 10, '', '', '', '', '', '', '', '', 'RKfI6NnQu4nb', '2020-11-12 11:26:02', NULL, NULL),
(22, 390, 21, NULL, 10, '', '', '', '', '', '', '', '', 'ffjUVFJKwCqD', '2020-11-12 11:26:29', NULL, NULL),
(23, 374, 21, NULL, 10, '', '', '', '', '', '', '', '', '39HhrnhRHf75', '2020-11-12 11:26:59', NULL, NULL),
(24, 371, 21, NULL, 10, '', '', '', '', '', '', '', '', 'pQDOV4AQJLEg', '2020-11-12 11:27:25', NULL, NULL),
(25, 373, 21, NULL, 10, '', '', '', '', '', '', '', '', 'gIfOffXD4mCf', '2020-11-12 11:27:49', NULL, NULL),
(26, 387, 21, NULL, 10, '', '', '', '', '', '', '', '', 'gdC8EYVVXAEV', '2020-11-12 11:28:13', NULL, NULL),
(27, 386, 21, NULL, 10, '', '', '', '', '', '', '', '', 'YXCXzzEZQ3uT', '2020-11-12 11:28:39', NULL, NULL),
(28, 383, 21, NULL, 10, '', '', '', '', '', '', '', '', 'Lum8hjWh2Z3R', '2020-11-12 11:29:00', NULL, NULL),
(29, 378, 26, NULL, 10, '', '', '', '', '', '', '', '', 'hE36HflTy7CK', '2020-11-12 11:29:46', NULL, NULL),
(30, 389, 26, NULL, 10, '', '', '', '', '', '', '', '', 'Gmlkt3AVzOoA', '2020-11-12 11:30:28', NULL, NULL),
(31, 395, 26, NULL, 10, '', '', '', '', '', '', '', '', 'Jle8cQn0TBZ7', '2020-11-12 11:30:51', NULL, NULL),
(32, 414, 26, NULL, 10, '', '', '', '', '', '', '', '', 'yc7uaDTGCfzA', '2020-11-12 11:31:19', NULL, NULL),
(33, 20, 25, NULL, 10, '', '', '', '', '', '', '', '', '8ObzoNWp6VEX', '2020-11-12 11:52:30', NULL, NULL),
(34, 102, 25, NULL, 10, '', '', '', '', '', '', '', '', 'TPnovWJzrIk7', '2020-11-12 11:53:14', NULL, NULL),
(35, 419, 25, NULL, 10, '', '', '', '', '', '', '', '', '7hRAUpuedbsW', '2020-11-12 11:53:39', NULL, NULL),
(36, 421, 25, NULL, 10, '', '', '', '', '', '', '', '', '9Eh1JSKcjbkL', '2020-11-12 11:54:02', NULL, NULL),
(37, 447, 67, NULL, 10, '', '', '', '', '', '', '', '', 'ytZmeRXkPAJJ', '2020-11-12 11:54:37', NULL, NULL),
(38, 448, 67, NULL, 10, '', '', '', '', '', '', '', '', 'lH65gOq3LpQo', '2020-11-12 11:55:00', NULL, NULL),
(39, 415, 23, NULL, 10, '', '', '', '', '', '', '', '', 'WnSL9c5SxQU3', '2020-11-17 13:43:28', NULL, NULL),
(40, 420, 23, NULL, 10, '', '', '', '', '', '', '', '', 'PeBD8VKRrJCx', '2020-11-17 13:44:37', NULL, NULL),
(41, 422, 23, NULL, 10, '', '', '', '', '', '', '', '', '4BuT4Ih40fPs', '2020-11-17 13:45:11', NULL, NULL),
(42, 425, 23, NULL, 10, '', '', '', '', '', '', '', '', 'MziX2kN63Nw3', '2020-11-17 13:45:40', NULL, NULL),
(43, 426, 23, NULL, 10, '', '', '', '', '', '', '', '', 'DZuHxCvNS4cs', '2020-11-17 13:46:06', NULL, NULL),
(44, 427, 23, NULL, 10, '', '', '', '', '', '', '', '', 'Umq7EiWHeeAj', '2020-11-17 13:47:20', NULL, NULL),
(45, 428, 23, NULL, 10, '', '', '', '', '', '', '', '', 'MMNQHqMY8UTf', '2020-11-17 13:47:48', NULL, NULL),
(46, 429, 23, NULL, 10, '', '', '', '', '', '', '', '', 'fX0a6O3ooomL', '2020-11-17 13:48:18', NULL, NULL),
(47, 430, 23, NULL, 10, '', '', '', '', '', '', '', '', 'Ly8xBfPYIRt3', '2020-11-17 13:48:52', NULL, NULL),
(48, 431, 23, NULL, 10, '', '', '', '', '', '', '', '', 'isoYU6bjwN9J', '2020-11-17 13:49:22', NULL, NULL),
(49, 434, 23, NULL, 10, '', '', '', '', '', '', '', '', 'A170BuSSa1K4', '2020-11-17 13:49:49', NULL, NULL),
(50, 436, 23, NULL, 10, '', '', '', '', '', '', '', '', '5zVtWsmHsBC7', '2020-11-17 13:50:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice` text DEFAULT NULL,
  `is_paid` int(10) UNSIGNED DEFAULT 0,
  `issued_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_classes`
--

CREATE TABLE `main_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `is_active` int(10) UNSIGNED DEFAULT 1,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_new` int(10) UNSIGNED DEFAULT 0,
  `url_string_short` text DEFAULT NULL,
  `url_string_full` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_classes`
--

INSERT INTO `main_classes` (`id`, `title`, `is_active`, `order`, `is_new`, `url_string_short`, `url_string_full`) VALUES
(1, 'Iniţiere în Software Testing', 1, 1, 0, 'initiere-in-software-testing', 'initiere-in-software-testing.html'),
(2, 'Iniţiere în Test Automation: <br />Rest API & UI', 1, 3, 0, 'initiere-in-test-automation', 'initiere-in-test-automation.html'),
(3, 'Advanced Test Automation', 1, 4, 0, 'advanced-test-automation', 'advanced-test-automation.html'),
(5, 'Advanced Software Testing', 1, 2, 1, 'advanced-software-testing', 'advanced-software-testing.html'),
(6, 'Iniţiere în Testarea de Performanță', 1, 5, 1, 'initiere-in-testare-de-performanta', 'initiere-in-testare-de-performanta.html'),
(7, 'Wordpress Web Development', 1, 0, 1, 'wordpress-web-development', 'wordpress-web-development.html'),
(8, NULL, 1, 6, 1, '', '.html');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_08_28_144645_import_database_structure', 1),
(2, '2020_09_05_164648_add_timestamps_to_tables', 1),
(3, '2020_09_05_165412_add_timestamps_to_testimonials', 1),
(4, '2020_09_06_132316_add_timestamps_to_content_table', 1),
(5, '2020_10_25_112742_add_webpage_to_comments_table', 1),
(6, '2020_11_15_132121_add_deleted_at_to_trainers', 1),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(10, '2016_06_01_000004_create_oauth_clients_table', 2),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(12, '2020_10_18_124507_create_users_table', 3),
(13, '2020_10_18_124617_create_password_resets_table', 4),
(14, '2020_10_18_131250_create_roles_and_permissions_tables', 4),
(15, '2020_10_18_131858_create_trainer_provider_table', 4),
(16, '2020_11_20_075557_add_roles_and_permissions_data', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `keywords` mediumtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(4) UNSIGNED DEFAULT 0,
  `views` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `keywords`, `date`, `added_on`, `is_active`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3 motive să îţi începi cariera în Software Testing', '<p>Industria IT este una dintre cele mai provocatoare şi performante industrii de astăzi, care cuprinde şi nu se rezumă la Web Development, Software Testing, sau Web Design.</p>\r\n\r\n<p>&Icirc;n Rom&acirc;nia, valoarea salariului mediu pentru joburile &icirc;n IT este de cca. 5.200 de lei pe lună, de 2,5 ori mai mari dec&acirc;t media pieţei.</p>\r\n\r\n<p>Am decis să evidențiem 3 motive pentru care industria IT este &ldquo;the place to be&rdquo;, &icirc;n special pentru studenți, absolvenți recenți sau persoane care doresc să-și lanseze cariera &icirc;ntr-un domeniu nou.</p>\r\n\r\n<p>La final, decide pentru tine daca vrei sa faci şi tu primul pas spre un job &icirc;n industria IT. E verde la &icirc;nscrierile pentru cursul de Iniţiere &icirc;n Software Testing.</p>\r\n\r\n<p><strong>Cerere mare, salariu mare</strong><br />\r\nDin moment ce tehnologia este parte integrantă a succesului multor domenii diferite, nu ar trebui să fie o surpriză faptul că profesioniștii din domeniu sunt mereu &icirc;n căutare.<br />\r\n&Icirc;n Rom&acirc;nia cu precădere, mai contează și faptul că piața are mai multe joburi dec&acirc;t candidați.</p>\r\n\r\n<p><strong>Varietate</strong><br />\r\nActivitatea unui profesionist &icirc;n domeniul tehnologiei poate fi incredibil de vastă &ndash; există foarte puține lucruri pe care nu le puteți face. &Icirc;n timp ce tehnologia este o industrie &icirc;n sine, se suprapune cu aproape orice altă industrie. Profesioniștii IT lucrează &icirc;n medicină, agricultură, transport, energie, divertisment și chiar in domenii precum dreptul, banca și serviciile financiare.</p>\r\n\r\n<p><strong>Locul cercetării, dezvoltării și inovării</strong><br />\r\nPoate că cel mai important motiv este munca &icirc;n sine. Dacă tinzi &icirc;nspre zona de dezvoltare și inovare, este posibil să nu existe o industrie mai bună.<br />\r\n&Icirc;n plus, nu te plictiseşti niciodată.</p>\r\n\r\n<p>Reference: www.talentegg.ca; www.playtech.ro</p>\r\n', 'cariera', '2017-09-04', '2020-11-25 16:07:05', 1, 766, NULL, NULL, NULL),
(2, 'Radu este Software Tester', '<blockquote>\r\n<p>Mi-au dat un test, m-au chemat la interviu şi, &icirc;n 3 zile, m-au anunţat că &icirc;ncep din 2 Octombrie, &hellip;</p>\r\n</blockquote>\r\n\r\n<p>&hellip; spuse Radu după ce ne-am h&acirc;h&acirc;it 1 minut la telefon.</p>\r\n\r\n<p>Am stat de vorbă cu el acum c&acirc;teva zile. &Icirc;ncă &icirc;şi &icirc;ncheia socotelile la fostul loc de muncă, pe care &icirc;l lasă &icirc;n spate ca să &icirc;şi demonstreze că, dacă eşti suficient de curajos şi determinat, reuşeşti. El a reuşit să se angajeze, noi am reuşit să dăm de el şi să &icirc;l felicităm.</p>\r\n\r\n<p>Reţeta e simplă şi &icirc;l lăsăm pe el să o spună:</p>\r\n\r\n<p>&ldquo;Am aplicat, prin recomandare, la o lună de la terminarea cursului. &Icirc;mi trecusem &icirc;n CV faptul că am absolvit cursul &ldquo;Modul I: Iniţiere &icirc;n Software Testing&rdquo;, av&acirc;nd ca experienţă anterioară doar anii lucraţi &icirc;n bancă.&rdquo;</p>\r\n\r\n<p>De-acum, Radu face Software Testing şi e plătit pentru asta. &ldquo;Am identificat 40 de bug-uri la test şi le-am raportat folosind procesul şi formatul &icirc;nvăţate la curs. Interviul a fost cu Managing Directorul şi QA Managerul, care au fost impresionaţi de cum am structurat şi organizat bug-urile.&rdquo;</p>\r\n\r\n<p>Nouă nu ne ram&acirc;ne dec&acirc;t să spunem BRAVO! Suntem m&acirc;ndri şi bucuroşi să ştim că unul dintre primii noştri cursanţi a reuşit să materializeze ceea ce a &icirc;nvăţat la curs.</p>\r\n\r\n<blockquote>\r\n<p>La ce m-a ajutat cursul?! Să iau interviul.</p>\r\n</blockquote>\r\n\r\n<p>N-o spunem noi, o spune Radu. Şi nu-l crede pe cuv&acirc;nt, vezi oferta noastră de cursuri şi hotărăşte pentru tine dacă vrei să ni te alături.</p>\r\n', 'testimoniale', '2017-10-03', '2020-11-25 16:07:05', 1, 1047, NULL, NULL, NULL),
(3, '7 tendinţe din Software Testing pe care să le urmăreşti în 2018', '<p>Pentru cunoscători, nu e o surpriză evoluţia ultimilor ani: am fost martorii numeroaselor modificări &icirc;n practicile de software testing, cum ar fi adoptarea DevOps sau aplicarea testării &icirc;n AI (Artificial Intelligence) sau ML (Machine Learning).</p>\r\n\r\n<p>Rezumăm aici c&acirc;teva predicții ale tendințelor pentru următorii ani, să ştim cu toţii care ne sunt oportunitățile de &icirc;nvăţare şi avansare &icirc;n industrie.</p>\r\n\r\n<blockquote>\r\n<p>Dacă nu &icirc;nveţi ceva nou &icirc;n fiecare zi, &icirc;nseamnă că nu testezi.</p>\r\n</blockquote>\r\n\r\n<p><strong>1. Creșterea Adopției DevOps</strong><br />\r\nDevOps pune accent pe automatizare și integrare. Vizează reducerea timpului de la dezvoltare (Dev) la operare (Ops) şi asigură &icirc;n același timp calitatea software-ului. Google Trends arată că DevOps a c&acirc;știgat un interes copleșitor &icirc;n ultimii cinci ani, iar probabilitatea ca tendinţa să continue este mare.</p>\r\n\r\n<p><strong>2. Scurtarea ciclurilor de livrare</strong><br />\r\nLa nivel global, schimbările rapide au loc şi &icirc;n tehnologie, nu doar &icirc;n politică. Wink, wink.<br />\r\nAsta presupune o dezvoltare, testare, integrare și livrare rapidă și mai frecventă. Acum, software-ul trebuie livrat și implementat zilnic, nu lunar şi nici săptăm&acirc;nal. Urmările se observă deja &icirc;n creșterea practicilor și instrumentelor DevOps.</p>\r\n\r\n<p><strong>3. Mai mult, mai bine: Test Automation</strong><br />\r\nTest Automation reprezintă acum doar 20% din activitățile de testare (sursa: Raportul Mondial de Calitate 2017-2018). Un procent dezamăgitor, av&acirc;nd &icirc;n vedere că tot ea este responsabilă pentru scurtarea timpului de livrare şi integrarea instrumentelor DevOps. Selenium, printre cele mai importante instrumente open source, facilitează integrarea cu toolchain-uri precum Jenkins, GIT și JIRA.</p>\r\n\r\n<p><strong>4. Evoluţia Mobile Test Automation</strong><br />\r\nUtilizarea testării automate &icirc;n proiectele mobile este &icirc;ncă la un nivel scăzut: există o lipsă de metode, instrumente și dispozitive corecte pentru a efectua testarea automată a aplicațiilor mobile. Deplasarea din ce &icirc;n ce mai mare de pe desktop și web către aplicații mobile obligă companiile de software să folosească mai mult automatizarea testelor pentru aplicații mobile.</p>\r\n\r\n<p><strong>5. Manual Testing + Test Automation = Love</strong><br />\r\nDeși testarea automată este trending now, testarea manuală &icirc;ncă domină Software Testing-ul. E simplu: strategiile de testare corecte sunt cele care cuprind at&acirc;t ​​abordările manuale, c&acirc;t și cele automatizate. Combinarea practicilor și instrumentelor de testare manuală și automată va creşte din ce &icirc;n ce mai mult &icirc;n următorii ani.</p>\r\n\r\n<blockquote>\r\n<p>#TestareaManualaNuMoare, cum ar veni.</p>\r\n</blockquote>\r\n\r\n<p><strong>6. API Test Automation</strong><br />\r\n&Icirc;n prezent, procesele de testare automată se utilizează cel mai mult &icirc;n testarea UI. Tendința va fi o cerere tot mai mare de automatizare a proceselor API, &icirc;ntr-un ritm mai mare dec&acirc;t automatizarea procesului de testare UI. Testerii independenți, echipaţi cu instrumente inteligente și ușor de utilizat, vor fi responsabili pentru testarea API, ajut&acirc;nd la reducerea timpului de lansare pe piață şi &icirc;mbunătățirea calității software-ului.</p>\r\n\r\n<p><strong>7. Intelligence Test Automation</strong><br />\r\nAI (Artificial Intelligence) și ML (Machine Learning) s-au alăturat dezvoltării de software pentru a &icirc;mbunătăţi productivitatea echipelor de proiect și calitatea software-ului. Prin urmare, vom &icirc;ntalni mai multe tehnologii inteligente de automatizare a testării și generare de test case-uri şi scripturi.</p>\r\n\r\n<blockquote>\r\n<p>Artificial intelligence is growing up fast, as there are robots whose facial expressions can elicit empathy and make your mirror neurons quiver. &mdash;Diane Ackerman</p>\r\n</blockquote>\r\n\r\n<p>Sursa: www.sogeti.com, www.utest.com, www.forbes.com</p>\r\n', 'Software,Testing,IT,cariera,dezvoltare', '2018-01-18', '2020-11-25 16:07:24', 1, 1280, NULL, NULL, NULL),
(4, 'Ce bine că Alexandra a fost curioasă!', '<p><strong>Spoiler alert:</strong> la finalul post-ului, vei afla că Alexandra s-a angajat &icirc;n Software Testing. Fără niciun fel de experienţă anterioară &icirc;n domeniu. Poţi ieşi acum sau poţi citi tot interviul şi să afli cum, c&acirc;nd şi de ce.</p>\r\n\r\n<p><strong>De ce te-ai &icirc;ndreptat spre Software Testing?</strong><br />\r\nAm ales să fac Software Testing pentru că sunt o fire analitică. &Icirc;mi place să găsesc greşeli şi, mai mult dec&acirc;t at&acirc;t, &icirc;mi place ca lucrurile să meargă bine. Este un domeniu care are legătură cu domeniul pe care l-am studiat şi, &icirc;n plus, şansele să te plictiseşti şi să te plafonezi sunt mici.</p>\r\n\r\n<p><strong>Ce avantaje vezi &icirc;n domeniu?</strong><br />\r\n&Icirc;ncep cu dezvoltarea tot mai acerba a pieţei de IT &icirc;n ţara noastră. Apoi, ca să ai un soft bun, trebuie să ai c&acirc;t mai puţine bug-uri. Şi asta facem noi, le identificăm pe parcursul preocesului de dezvoltare. Mai contează şi faptul că posibilităţile de a evolua sunt ridicate. Poţi pleca uşor de la o companie la alta, &icirc;n ţară sau &icirc;n afara ei.</p>\r\n\r\n<p><strong>&Icirc;n ce domeniu lucrai &icirc;nainte?</strong><br />\r\nAm venit la curs direct după ce mi-am dat licenţa. &Icirc;n facultate n-am luat contact cu testarea, ci numai cu programarea, aşa că aveam mare nevoie de cineva care să-mi explice cum stau lucrurile &icirc;n domeniu. Am reuşit să &icirc;nvăţ &icirc;n cele 12 şedinţe de curs foarte multe lucruri şi am fost capabilă să-mi găsesc, mai apoi, un job &icirc;n domeniu.</p>\r\n\r\n<p><strong>Cum ai ajuns să susţii interviul?</strong><br />\r\nDupă ce am mers la un targ de job-uri. Acolo am intrat &icirc;n contact cu firma la care lucrez acum. Nu a fost primul job la care am aplicat, am fost la mai multe interviuri, deci am avut de unde alege.</p>\r\n\r\n<p><strong>Cu cine ai suţinut interviul şi cum a fost?</strong><br />\r\nPrimul interviu l-am avut cu şefa departamentului de HR, iar apoi am susţinut un interviu tehnic cu şeful departamentului &icirc;n care sunt acum. Le-am povestit modul &icirc;n care lucram &icirc;n cadrul cursului şi au părut destul de impresionaţi, dat fiind faptul că la c&acirc;teva zile m-au sunat pentru angajare.<br />\r\nAici nu am dat niciun test. Au fost &icirc;nsă multe intrebări tehnice, foarte hands-on, din experienţa din facultate şi de la cursul de Iniţiere &icirc;n Software Testing. Am mers şi la interviuri unde am dat test, unele presupuneau să deţii şi cunoştinţe de baze de date sau testare automată.</p>\r\n\r\n<p><strong>Cu ce te ajută cursul de iniţiere?</strong><br />\r\nMi-am format o imagine de ansamblu a tot ceea ce &icirc;nseamnă testare. Poţi obţine foarte uşor un job, chiar dacă nu ai experienţă &icirc;n domeniu, asa cum a fost si cazul meu.</p>\r\n\r\n<p><strong>Aplici ceva din lucrurile pe care le-ai &icirc;nvăţat la Academia Testării?</strong><br />\r\nFoarte multe lucruri. Chiar dacă nu mereu se folosesc aceiaşi termeni, tot testare e. E adevărat că aici nu folosesc Jira, dar folosesc tool-uri asemănătoare. Am colegi mult mai experimentaţi cărora le-am arătat tips &amp; tricks &icirc;nvăţate la curs, iar asta a fost un plus.</p>\r\n\r\n<p>&Icirc;n cazul meu, Software Testing-ul a fost o curiozitate care s-a transformat &icirc;ntr-o pasiune pe care o practic &icirc;n fiecare zi.</p>\r\n', 'Testimonial,Success story,Software,Testing', '2018-03-19', '2020-11-25 16:07:24', 1, 2193, NULL, NULL, NULL),
(5, 'Cele mai bune framework-uri de testare cu care poţi să te joci', '<p>Am decis să facem o clasificare a celor mai bune şi utilizate framework-uri de testare din industrie. Sunt 5 la număr, toate open-source, adică nu ai niciun motiv de natură financiară pentru care să nu le &icirc;ncerci.</p>\r\n\r\n<p>Curiozitatea e bună c&acirc;nd te ajută să &icirc;nveţi. &Icirc;ncepe cu lectura asta de 10 minute, vezi ce <em>tool</em> ai vrea să aprofundezi şi fă-o următoarea dată c&acirc;nd ai ceva timp liber.</p>\r\n\r\n<p><strong>1. Selenium: <a href=\"http://www.seleniumhq.org\" target=\"_blank\">www.seleniumhq.org</a></strong></p>\r\n\r\n<p>Folosit de peste <strong>20.000 companii</strong>, Selenium este probabil cel mai popular framework de testare open-source pentru automatizarea aplicațiilor web.<br />\r\nC&acirc;teva motive pentru care &icirc;l folosim şi noi, la Academie, &icirc;n părţile practice ale cursurilor:</p>\r\n\r\n<ul>\r\n	<li>Este baza altor instrumente de testare, cross-platform și cross-browser</li>\r\n	<li>Susţine o gamă largă de limbaje de programare: C#, Java, Python, PHP, Ruby etc.</li>\r\n	<li>Este flexibil și ușor de &icirc;ntreținut, este extensibil prin intermediul unei serii largi de librării și API-uri</li>\r\n	<li>Permite scrierea unor scripturi de testare mai avansate</li>\r\n	<li>Oferă un instrument de record &amp; play &ndash; <strong>Selenium IDE</strong> &ndash; &nbsp;care permite scrierea de teste fără &icirc;nvăţarea unui limbaj de scripting</li>\r\n	<li>Oferă o interfaţă de progamare &ndash; <strong>Selenium Web Driver</strong> &ndash; care necesită cunoştinţe de bază ale unui limbaj de programare</li>\r\n</ul>\r\n\r\n<p>La cursurile de la Academia Testării, &icirc;l folosim pentru c&acirc;teva flow-uri principale: să automatizăm aplicaţia noastră de bibliotecă &icirc;n desfăşurarea unor acţiuni precum &icirc;nchirierea cărţilor, adăugarea lor, crearea altor cărţi noi, etc.</p>\r\n\r\n<p><strong>2. Appium: <a href=\"http://www.appium.io\" target=\"_blank\">www.appium.io&nbsp;</a></strong></p>\r\n\r\n<p>Proiectat să testeze aplicațiile mobile, Appium porneşte de la ideea că nu trebuie să recompilezi aplicația sau să o modifici &icirc;n niciun fel pentru a o testa. Este la fel de uşor de instalat şi folosit precum Selenium WebDriver, iar documentaţia disponibilă este abundentă. Majoritatea companiilor care dezvolta aplicatii mobile folosesc Appium. De ce n-ar face-o? E open-source, uşor de folosit şi integrat cu Selenium WebDriver şi, &icirc;n plus:</p>\r\n\r\n<ul>\r\n	<li>Permite testarea pe mai multe platforme (iOS, Android, Windows, Mac) utiliz&acirc;nd acelaşi API</li>\r\n	<li>Reutilizează codul din suitele de test iOS, Android și Windows</li>\r\n	<li>Foloseşte simulatoare (iOS) și emulatori (Android)</li>\r\n	<li>Lucrează cu aplicațiile web native, hibride, mobile și aplicaţiile desktop</li>\r\n	<li>Se bazează pe arhitectura client / server</li>\r\n</ul>\r\n\r\n<p><strong>3. Apache JMeter:</strong> <a href=\"http://www.jmeter.apache.org\" target=\"_blank\">www.jmeter.apache.org&nbsp;</a></p>\r\n\r\n<p>Construit special pentru testarea de performanţă, <strong>JMeter</strong> este folosit de peste <strong>9000 de companii</strong>. JMeter este uşor de folosit datorită interfeţei (GUI), dar şi pentru că facilitează definirea elementelor şi scrierea scenariilor de test.&nbsp;Poate fi folosit pentru a testa performanța at&acirc;t pe resurse statice c&acirc;t și dinamice, şi:</p>\r\n\r\n<ul>\r\n	<li>Testează performanța diferitelor tipuri de aplicații / servere / protocoale: Web, SOAP, FTP, LDAP, TCP, protocoale de e-mail, script-uri de shell, obiecte Java</li>\r\n	<li>Generează rapoarte de testare şi fiind 100% dezvoltat in Java, poate fi portat/utilizat pe orice sistem de operare</li>\r\n	<li>Oferă suport de scripting. Nu este &icirc;nsă obligatoriu pentru scrierea de teste</li>\r\n	<li>Facilitează personalizarea prin intermediul plugin-urilor de analiză și vizualizare a datelor</li>\r\n	<li>Este uşor de integrat cu Maven, Graddle și Jenkins</li>\r\n</ul>\r\n\r\n<p><strong>4. Postman:</strong> <a href=\"http://www.getpostman.com\" target=\"_blank\">www.getpostman.com&nbsp;</a></p>\r\n\r\n<p>Este un client HTTP puternic, de tip REST, care te ajută să construieşti cereri pentru un server web şi &icirc;ţi afişează răspunsul primit. Postman facilitează testarea, dezvoltarea și documentarea API-urilor, permiț&acirc;nd utilizatorilor să grupeze rapid cererile HTTP simple și complexe. Este disponibil at&acirc;t ca Google Chrome Packaged App, c&acirc;t și ca aplicație &icirc;n browser.<br />\r\nEste un tool foarte simplu de folosit, intuitiv şi dotat cu funcţionalităţi care fac viaţa oricărui tester mai uşoară:</p>\r\n\r\n<ul>\r\n	<li>Salveză request-urile &icirc;n mod automat</li>\r\n	<li>Organizează testele &icirc;n colecţii şi medii de test</li>\r\n	<li>Execută pre-condiţii</li>\r\n	<li>Validează testele</li>\r\n	<li>Generează rapoarte</li>\r\n	<li>Permite echipei să colaboreze &icirc;n mod activ</li>\r\n	<li>Permite documentarea API-urilor</li>\r\n</ul>\r\n\r\n<p>Pentru că poate fi configurat cu uşurinţă, oferă o interfaţă grafică prietenoasă şi inovativă, folosim Postman şi pentru nevoile noastre de la curs. &Icirc;n plus, e un tool <em>super pe val</em> şi vrem să ne asigurăm că studenţii noştri sunt mereu &icirc;n pas cu moda.</p>\r\n\r\n<p><strong>5. Cucumber:</strong> <a href=\"http://www.cucumber.io\" target=\"_blank\">www.cucumber.io </a></p>\r\n\r\n<p>Este un instrument de tip BDD (Behavior Driven Development), folosit pentru scrierea testelor de acceptanţă pentru aplicaţiile web şi care:</p>\r\n\r\n<ul>\r\n	<li>Permite reutilizarea codului &icirc;n teste</li>\r\n	<li>A fost extins la Java framework, fiind implementat inițial &icirc;n Ruby</li>\r\n	<li>Permite folosirea codului &icirc;mpreună cu Selenium, Watir, Capybara</li>\r\n	<li>Lucreză cu limbaje precum Python, PHP, Perl, .NET, Scala, Groovy</li>\r\n</ul>\r\n\r\n<p>Uitaţi un exemplu de sintaxă:</p>\r\n\r\n<pre>\r\n- <em># feature/hello_cucumber.feature</em>\r\n- <strong>Feature:</strong> Hello Cucumber\r\n- As a product manager\r\n- I want our users to be greeted when they visit our site\r\n- So that they have a better experience\r\n- \r\n- <strong>Scenario:</strong> User sees the welcome message\r\n- <strong>When </strong>I go to the homepage\r\n-<strong> Then</strong> I should see the welcome message</pre>\r\n\r\n<p>Cuv&acirc;ntul cheie aici e&nbsp;<strong>feature</strong>, care se referă la descrierea caracteristicilor unui proiect.<br />\r\nPutem folosi practica din Agile pentru a descrie aceste caracteristici:</p>\r\n\r\n<pre>\r\n<code>- <strong>Feature:</strong> \r\n- As a \r\n- I want to \r\n- So that </code></pre>\r\n\r\n<p>Cucumber este un tool care se concentrează pe experienţa utizilatorului şi care poate fi &icirc;nţeles de către oricine.</p>\r\n\r\n<p>La final, &icirc;ntrebarea firească pe care ne-o punem e dacă aveți şi voi ceva de adăugat la această listă.<br />\r\nCare e framework-ul vostru preferat de testare? Ce tool de testare vreţi să aprofundaţi &icirc;n viitor?</p>\r\n', 'cariera', '2018-05-24', '2020-11-25 15:18:15', 1, 3949, NULL, NULL, NULL),
(6, 'Înainte și după Academia Testării – Long Story Short', '<h3>Povestea Simonei, descrisă de ea. Niciun cuv&acirc;nt din textul original nu a fost rănit &icirc;n producerea acestui blog post.</h3>\r\n\r\n<p>Și așa &icirc;ncepe&hellip;</p>\r\n\r\n<p>După 12 ani &icirc;n Marketing, simțeam nevoia de o schimbare &icirc;n plan profesional și ideea de a migra spre domeniul IT mă b&acirc;ntuia de ceva timp. Am ales Software Testing deoarece mă consider o persoană creativă și deschisă către a &icirc;nvăța lucruri noi.</p>\r\n\r\n<p>Academia Testării mi-a fost recomandată de către o persoană apropiată mie, care lucrează de mulți ani &icirc;n Software Testing și care cumva m-a &icirc;mpins de la spate să fac pasul acesta.</p>\r\n\r\n<p>După două zile de la absolvirea cursului, mă g&acirc;ndeam să aplic pentru un job &icirc;n domeniu si mi-am adus aminte de un fost coleg care e &icirc;n testare &ndash; lucrasem &icirc;mpreună c&acirc;țiva ani &icirc;n aceeași companie, &icirc;n departamente diferite.</p>\r\n\r\n<p>L-am sunat și l-am &icirc;ntrebat dacă are nevoie de un tester. Ne-am &icirc;nt&acirc;lnit, i-am povestit ce cunoștinte am dob&acirc;ndit &icirc;n urma cursului și ce &icirc;mi propun să fac &icirc;n viitor. Am primit un răspuns pozitiv și am semnat contractul &icirc;n scurt timp.</p>\r\n\r\n<p>Am lucrat șase luni ca Software Tester pentru aplicațiile dezvoltate in-house. Acum sunt manager de proiect, lucrez &icirc;mpreună cu doi developeri și avem o mulțime de proiecte interesante &icirc;n lucru. Cel mai mult &icirc;mi place că, pe l&acirc;ngă Software Testing, fac o mulțime de lucruri interesante (implementare software, training utilizatori, crearea manualelor de utilizare a aplicațiilor dezvoltate).</p>\r\n\r\n<p>Toate noțiunile &icirc;nvățate la curs &ndash; crearea scenariilor de test, testarea, raportarea bug-urilor &ndash; sunt aplicate la job. Acum sunt ferm convinsă că alegerea cursului de la Academia Testării a fost cea mai bună.</p>\r\n', 'cariera,Testing,Software,dezvoltare,angajare,curs', '2018-12-03', '2020-11-25 16:07:05', 1, 648, NULL, NULL, NULL),
(7, 'Dimensionarea echipei de testare', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Pe 30 iunie 1945, John Von Neumann publica raportul privind EDVAC, prima discuţie documentată despre conceptul de program stocat şi planul de arhitectură a calculatoarelor. Deşi t&acirc;nără, industria a c&acirc;ştigat teren rapid. Tim Berners-Lee, Linus Torvalds, Bill Gates, Martha Lane Fox sau Steve Jobs au dezvoltat produsele şi serviciile IT, amplific&acirc;nd impactul pe care acestea &icirc;l au asupra lumii. Ce putea urma? Standardizarea modului de lucru, primul pas spre maturizare.</div>\r\n\r\n<p>Lumea IT este complexă, iar echipele de testare &icirc;nt&acirc;mpină dificultăţi &icirc;n a estima ce activităţi de testare pot livra, de c&acirc;te persoane e nevoie pentru a livra activităţile curente sau activităţile critice de testare din proiect, ce senioritate e necesare pentru angajare, precum şi optimizarea activităţilor de testare raportat la numărul de specialişti.</p>\r\n\r\n<p>Odată cu implementarea standardelor &icirc;n modul de livrare, eficientizarea anumitor practici a căpătat mai mult sens, scopul fiind obţinerea unor procese c&acirc;t mai mature de dezvoltare, precum testarea automată, <strong>DevOps</strong>, <strong>Behavior-Driven Development</strong> (BDD) sau <strong>Test-Driven Development</strong> (TDD).</p>\r\n\r\n<p>Testarea automată c&acirc;ştiga tot mai mult teren &icirc;n procesul general de testare ale produselor software. Există &icirc;nsă şi destule provocări care &icirc;nfr&acirc;nează explorarea şi perfecţionarea acestui tip de testare, dintre care dimensionarea corectă a echipei de testare este printre cele mai &icirc;nt&acirc;lnite.</p>\r\n\r\n<p><strong>Cum echilibrăm activităţile de testare manuală şi automată, raportat la volumul de muncă din proiect?</strong><br />\r\nSă fie un raport de <strong>1:2</strong>, <strong>1:5</strong>, <strong>1:10</strong> sau <strong>2:1</strong>? Acestea sunt c&acirc;teva exemple de corelaţii existente, folosite pentru determinarea mărimii echipei de testare &icirc;n funcţie de mărimea echipei de dezvoltatori. Limitarea acestei teorii vine din imposibilitatea aplicării ei la un nivel general valabil. IT-ul este un Univers al particularităţilor, iar testarea trebuie să se raporteze la ele.</p>\r\n\r\n<p>&Icirc;n continuare, vă propunem un model de dimensionare al echipei de testare automată, ce poate fi uşor extins asupra &icirc;ntregii echipe de testare.<br />\r\nVom discuta mai &icirc;nt&acirc;i despre factorii complexităţii şi cum influenţează ei modelul de calcul, trecem apoi la determinarea costului calitătii şi cum putem identifica &ldquo;sweet spot-ul&rdquo; &icirc;n funcţie de senioritate, alocare şi prioritate.</p>\r\n\r\n<p><strong>Click to download</strong>:&nbsp;<a href=\"https://academiatestarii.ro/wp-content/uploads/2019/03/Finding-the-sweet-spot-for-the-test-automation-team-size.pdf\" target=\"_blank\">Descărcă de aici analiză completă, precum şi aplicabilitatea ei.&nbsp;</a></p>\r\n', 'cariera,dezvoltare,angajare', '2019-03-12', '2020-11-25 16:07:24', 1, 528, NULL, NULL, NULL),
(8, 'Suntem la TechTalks Bucharest cu două subiecte. Vino pe 6 Aprilie', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Scena de Quality Assurance din cadrul TechTalks se axează pe identificarea modului de prevenire a defectelor software și evitarea problemelor legate de livrare către clienți. Conferința are loc pe 6 Aprilie, la Sala Palatului, de la 14:30.</div>\r\n\r\n<p>Academia Testării va fi prezentă cu două prezentări</p>\r\n\r\n<ol>\r\n	<li><strong>The future of testing, susţinută de Florin Manolescu</strong><br />\r\n	Noile tehnologii schimbă dramatic modul &icirc;n care lucrăm. &Icirc;n timpul acestei discuții, vom analiza tehnologiile care ar putea forma viitorul și vom &icirc;ncerca să anticipăm cum va fi impactată testarea.</li>\r\n	<li><strong>Agile Testing. Agile Mindset, susţinută de George Stan</strong><br />\r\n	Fiecare proiect Agile este unic și trebuie să utilizăm o abordare de testare specifică mediului nostru. Testarea joacă un rol crucial &icirc;n &icirc;ntregul proces, iar scopul prezentării este de a identifica motivele pentru care Agile a fost creat &icirc;n primul r&acirc;nd și care sunt principalele sale beneficii.</li>\r\n</ol>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://academiatestarii.ro/index.php/2019/04/01/suntem-la-techtalks-bucharest-cu-doua-subiecte-vino-pe-6-aprilie/56536469_6140794995380_1492641383222083584_n-png/\"><img alt=\"TechTalks Bucharest Academia Testarii\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/04/56536469_6140794995380_1492641383222083584_n.png.jpg\" style=\"height:300px; width:300px\" /></a></td>\r\n			<td><a href=\"https://academiatestarii.ro/index.php/2019/04/01/suntem-la-techtalks-bucharest-cu-doua-subiecte-vino-pe-6-aprilie/56579012_6140794996380_7695093145314263040_n-png/\"><img alt=\"TechTalks Bucharest Academia Testarii\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/04/56579012_6140794996380_7695093145314263040_n.png.jpg\" style=\"height:300px; width:300px\" /></a></td>\r\n			<td><a href=\"https://academiatestarii.ro/index.php/2019/04/01/suntem-la-techtalks-bucharest-cu-doua-subiecte-vino-pe-6-aprilie/56473818_6140794994980_5538270906972897280_n-png/\"><img alt=\"TechTalks Bucharest Academia Testarii\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/04/56473818_6140794994980_5538270906972897280_n.png.jpg\" style=\"height:300px; width:300px\" /></a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<dl>\r\n</dl>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<dl>\r\n</dl>\r\n\r\n<dl>\r\n</dl>\r\n\r\n<p>Ne vedem pe 6 Aprilie? Noi vom fi &icirc;n sala C, la etajul al doilea.&nbsp; Ce trebuie să știi &icirc;nainte de a<a href=\"https://www.hipo.ro/locuri-de-munca/login?redirect=%2Findex.php%2Flocuri_de_munca%2F118487\" target=\"_blank\"> te &icirc;nscrie</a>:</p>\r\n\r\n<ul>\r\n	<li>Intrarea este gratuită, dar există un număr limitat de 70 de participanți</li>\r\n	<li>Numai candidații care &icirc;ndeplinesc cerințele companiei vor primi o confirmare prin e-mail</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Mai multe despre TechTalks</p>\r\n\r\n<p>TechTalks este organizat de Hipo.ro şi are loc pe 5-6 Aprilie, &icirc;n aceeaşi perioadă ca Angajatori de TOP 2019 &ndash; cel mai mare t&acirc;rg de cariere din Rom&acirc;nia. Cei 20 de speakeri internaționali și naționali vor dezbate subiecte precum limbaje de programare, metodologii de lucru sau noi concepte din tehnologie.<br />\r\nAccesul se face pe bază de pre&icirc;nscriere pe Hipo.ro pentru fiecare workshop &icirc;n parte. <a href=\"https://www.hipo.ro/locuri-de-munca/angajatoridetop/bucuresti/Tech_Talks\" target=\"_blank\">&Icirc;nscrie-te!</a></p>\r\n\r\n<p>Mai multe despre Angajatori de Top</p>\r\n\r\n<p>Cei 130 angajatori &icirc;nregistrați ți-au pregătit peste 6000 de joburi &ndash; pentru profesioniști, mid-level sau studenți &icirc;n căutare de internship.<br />\r\nLe recomandăm absolvenților noștri de Inițiere &icirc;n Software Testing și Inițiere &icirc;n Test Automation: Rest API și UI să participe. Interacțiunea directă cu angajatorii vă oferă posibilitatea să cunoașteți mai bine piața și să vă maximizați șansele de angajare &icirc;n domeniu.<a href=\"https://www.hipo.ro/locuri-de-munca/angajatoridetop/bucuresti\" target=\"_blank\"> &Icirc;nscrie-te!</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', 'Evenimente', '2019-04-01', '2020-01-28 11:46:20', 1, 316, NULL, NULL, NULL),
(9, 'Spune-mi unde ești că să îți spun cum să crești în IT', '<h3>O analiză a pieței IT din Rom&acirc;nia. &Icirc;n prim-plan: București, Cluj, Iași, Timișoara, Brașov, Sibiu, Craiova.</h3>\r\n\r\n<hr />\r\n<p>Nimic nou, o știm cu toții și o tot auzim: piața&nbsp;IT din Rom&acirc;nia este o piață &icirc;n continuă dezvoltare. Deși cererea de specialiști este mare (estimată la 140.000 de angajați &icirc;n IT p&acirc;nă &icirc;n 2020), capacitatea de a aduce persoane noi &icirc;n piață nu este extraordinară. &Icirc;n ultimii ani, stimulate de angajatorii din piață care au investit mult &icirc;n mediul academic, facultățile și-au adaptat un pic programa IT pentru a face loc și profesiilor conexe (except&acirc;nd dezvoltarea).</p>\r\n\r\n<p><strong>Piața IT &icirc;n Rom&acirc;nia &icirc;n 2019</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/07/Distributia-rolului-de-QA.png\" style=\"height:264px; width:444px\" /></p>\r\n\r\n<p>Pentru a &icirc;nțelege ce anume generează o asemenea cerere agresivă de resurse, trebuie să ne uităm la angajatorii din piață locală &ndash; &icirc;n general, firme multinaționale. Urm&acirc;nd modelul studiului<a href=\"https://www.brainspotting.ro/insights\" target=\"_blank\"> IT Talent Map 2019 publicat de Brainspotting,</a> ne vom raporta doar la următoarele orașe: București, Cluj, Iași, Timișoara, Brașov, Sibiu, Craiova.</p>\r\n\r\n<p>Republica Moldova apare și ea &icirc;n acest studiu &ndash; lovindu-se de problema găsirii forței de muncă calificate, angajatorii &icirc;ncep să recruteze de peste Prut, pregătirea profesională fiind similară &icirc;nsă așteptările salariale mult mai mici.</p>\r\n\r\n<p>București reprezintă cel mai mare oraș, cu peste <strong>25.000 dezvoltatori</strong> și<strong> 5000 de software testers</strong>, aproape <strong>3000 de business analysts</strong> și <strong>2500 project managers</strong>.&nbsp;Pe locul doi se clasează Cluj, unde putem observa o distribuție mai echilibrată a raportului <em>dezvoltator:tester.</em></p>\r\n\r\n<p>Din distribuția rolului de QA, raportată la celelalte profesii, except&acirc;nd București, Cluj și Sibiu, observăm un trend similar al distribuției. Cei mai mari factori &icirc;n această distribuție sunt profilul angajatorului (development, support, servicii, etc.) și capacitatea orașului de a produce profesiile analizate (fie prin instituții de &icirc;nvățăm&acirc;nt sau existența cursurilor de formare și specializare).</p>\r\n\r\n<p><strong>Trenduri IT la nivel global</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/07/Distribuția-rolurilor-de-testare.png\" style=\"height:266px; width:444px\" /></p>\r\n\r\n<p>Vom interpreta, &icirc;n contextul trendurilor globale date de <a href=\"https://qablog.practitest.com/the-state-of-testing-report-2019-is-out-this-is-the-6th-yearly-edition/\" target=\"_blank\">State of Testing 2019,</a> distribuția rolurilor principale &icirc;nt&acirc;lnite &icirc;n zona de IT, cu accent pe profesiile de testare. Este important de menționat că Europa are o pondere de 38% dintre respondenți.</p>\r\n\r\n<p>Profesia de testare a crescut foarte mult și specializările care sunt căutate momentan &icirc;n piață sunt variate.</p>\r\n\r\n<p>Această distribuție de roluri, este &icirc;n continuare dominată de cele trei arii majore:<br />\r\n&ndash; Testare manuală (test analyst)<br />\r\n&ndash; Testare automată (test engineers, automation testers)<br />\r\n&ndash; Leadership și management (Test leads).</p>\r\n\r\n<p>Cu toate astea, apar și roluri noi, momentan de nișă, care &icirc;nsă &icirc;ncep să ocupe o parte semnificativă &icirc;n distribuția totală.</p>\r\n\r\n<p><img alt=\"\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/07/Variația-dimensiunii-echipei-de-testare-300x180.png\" style=\"height:266px; width:444px\" /></p>\r\n\r\n<p>Dimensiunea echipei de testare &icirc;n cadrul organizației reprezintă o problema pentru un total de 70% din respondenții State of Testing.</p>\r\n\r\n<p>Pentru 40% din ei este o problema majoră, iar pentru 30% reprezintă o provocare. &Icirc;n acest context, dimensiunea echipei de testare, la nivel global, dar și variația ei pe parcursul timpului, reprezintă un indicator de luat &icirc;n seama.</p>\r\n\r\n<p>Observăm astfel, o scădere ușoară a echipelor cu o dimensiune de 1-5 testeri și o creștere a echipelor cu 6-15. Celelalte două categorii se mențin constante, &icirc;n ușoară creștere față de anul trecut.</p>\r\n\r\n<p>Dar cum ajungem să profesăm &icirc;n industria IT?</p>\r\n\r\n<p>Cum o parte semnificativă a procesului de recrutare &icirc;l reprezintă discuția cu viitorul manager direct, este important să &icirc;nțelegem ce anume caută managerii atunci c&acirc;nd angajează.</p>\r\n\r\n<p>Una din cele mai căutate abilități o reprezintă cunoștințele &icirc;n zona de test automation (abilități de scripting, programare, tool-uri, CI/CD). Un alt set foarte căutat de abilități este reprezentat de &lsquo;soft skills&rsquo; (self-learn, communication and emotional intelligence, assertive/creative thinking, problem solving, adaptability, flexibility). Căutate sunt și cunoștințele legate de noile practici și tehnologii (testare de securitate, performanță, IoT).</p>\r\n\r\n<p>Deoarece cunoștințele tehnice reprezintă un factor important &icirc;n evaluarea candidaților, este interesant să privim, pentru a fi aliniați cu cerințele pieței, la sistemele și tehnologiile care sunt folosite &icirc;n 2019.</p>\r\n\r\n<p><img alt=\"\" src=\"https://academiatestarii.ro/wp-content/uploads/2019/07/variantia-sistemelor-si-tehnologiilor-folosite.png\" style=\"height:362px; width:602px\" /></p>\r\n\r\n<p><a href=\"https://academiatestarii.ro/#facebook\" target=\"_blank\">Facebook</a><a href=\"https://academiatestarii.ro/#twitter\" target=\"_blank\">Twitter</a></p>\r\n', 'Analize', '2019-07-19', '2020-11-25 16:07:05', 1, 747, NULL, NULL, NULL),
(10, 'De ce sa alegi Wordpress ca platforma de dezvoltare', '<p>Wordpress este un framework de PHP, open source, care a aparut din necesitatea unei platoforme de blogging in anul 2003. Cei doi fondatori Matt Mullenweg si Mike Little au creat aceasta platforma dupa ce platforma blogging b2/cafelog din care cei doi faceau parte a fost inchisa de dezvoltatori.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cu toate ca interfața foarte usor de utilizat a făcut ca Wordpress sa fie adoptat cu usurinta de autorii de articole, Wordpress nu s-a oprit aici. Implicarea celor doi fondatori in comunitatea open source si atragerea de programatori prin diferite programe cum ar fi Google Summer of Code, au transformat Wordpress dintr-o platforma pentru bloggeri in cel mai utilizat&nbsp; framework PHP veritabil care este la ora actuala pe internet.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Principalul motiv pentru care a explodat ca popularitate, a fost Extensibilitatea sa prin Plugin-uri. Datorită plugin-urilor care pot fi gratis sau contra cost, utilizatorii platformei pot crea de la site-uri de prezentare, la un shop-uri online fără cunoștințe de programare.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pe de altă parte, dezvoltatorii pot să creeze site-uri complexe și personalizate pentru clienții lor, acestia put&acirc;nd beneficia de adminul usor de folosit de la Wordpress.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Iată c&acirc;teva tipuri de site-uri complexe dezvoltate pe Wordpress:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Site-uri Ecommerce ( cu pluginul WooCommerce )</li>\r\n	<li>Site-uri de Prezentare ( cu ajutorul Custom Post Types de la Wordpress)</li>\r\n	<li>Site-uri Multi-Lingual (cu ajutorul pluginului WPLM)</li>\r\n	<li>Site-uri de E-learning&nbsp;</li>\r\n	<li>Site-uri pe diferite platforme dar cu acelasi admin (cu ajutorul pluginului Multipress)</li>\r\n	<li>Blog-uri multiple cu acelasi admin</li>\r\n</ul>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FQ1p2-4Tidc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<p>&nbsp;</p>\r\n\r\n<p>Pentru dezvoltatori Wordpress a devenit o mina de aur, cele mai cautate proiecte in regim de freelance fiind pe Wordpress. Pe platforma Upwork.com sunt in permanenta peste 3000 de joburi postate zilnic cu tag-ul de Wordpress development.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Daca doresti sa iti dezvolti un site personal, o afacere de la 0 si ai nevoie de un site de prezentare, sa iti dezvolti un portofoliu de Web Developer sau sa incepi sa lucrezi remote din confortul casei, recomand sa inveti cum sa dezvolti aplicatii software cu ajutorul framework-ului Wordpress.</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', 'Wordpress,Web development', '2020-05-03', '2020-11-25 16:07:05', 1, 2, NULL, NULL, NULL),
(11, 'De ce sa alegi o cariera in testarea software?', '<p>Industria de IT creste, in ciuda perioadei de pandemie. Astazi, deoarece capacitatea de formare a sistemului de stat nu acopera o parte semnificativa a cererii de specialisti in IT, au aparut multe companii de educatie informala care pregatesc persoane interesate sa faca o schimbare in cariera, spre zona software.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si sunt foarte multe de predat si multe specializari spre care se pot orienta studentii: cerintele pietei sunt destul de variate si acopera un spectru larg de cunostinte si competente tehnice. Pentru o reconversie de succes, este nevoie de un set de cunostinte soft, care sa le completeze pe cele tehnice si care sa fie sincronizate cu nevoile fiecarui angajator.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Din toate specializarile existente in zona IT, testarea software reprezinta una dintre profesiile care permit, cel mai facil, accesul in aceasta zona. De ce? Pentru asta trebuie sa ne uitam, printr-o perspectiva realista, la asteptarile pe care le-am avea de la un junior, in diversele profesii care compun sfera IT. Vom constata ca, pentru un junior venit din zona testarii software, nivelul de competente tehnice, asociate de obicei cu un proces mai lung de invatare, nu sunt necesare, pentru a-si indeplini atributii asociate senioritatii rolului sau.&nbsp;</p>\r\n\r\n<p><em>La Academia Testarii, venim in intampinarea studentilor cu un curs deja validat in piata, atat de catre studenti, cat si de catre angajator: <a href=\"https://www.academiatestarii.ro/curs.php?id=1\">Initiere in Software Testing</a>.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Inseamna oare asta ca profesia de testare software este o profesie neatractiva? Desigur ca nu. Profesia de testare, prin variile specializari si senioritati angrenate, reprezinta o profesie extrem de atractiva, atat din punct de vedere al cunostintelor, cat si financiar. Desi este relativ usor sa inveti cunostintele de baza, pentru a putea progresa sunt necesare cunostinte tehnice, din ce in ce mai avansate.&nbsp;</p>\r\n\r\n<p><em>La Academia Testarii, va oferim o curicula bogata de cursuri de testare software, ce acopera cele mai cautate specializari: <a href=\"https://www.academiatestarii.ro/curs.php?id=5\">Advanced Software Testing</a> (testare manuala), <a href=\"https://www.academiatestarii.ro/curs.php?id=2\">Initiere in Test Automation</a> (testare automatizata), <a href=\"https://www.academiatestarii.ro/curs.php?id=6\">Initiere in Testarea de Performanta</a> (testare de performanta)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Testarea software este, de asemeni, o profesie care faciliteaza reconversia in alte profesii implicate in dezvoltarea si livrarea software, prin natura transversala a cunostintelor ce defines profesia. Astfel, in functie de orientarea avuta, un specialist in testare software poate face pasul catre: software development, devops, project management, business analysis, etc.&nbsp;</p>\r\n\r\n<p><em>Am mapat cele mai cautate profesii ce pot fi accesate prin testare software si oferim studentilor cursuri de reconversie si pentru alte profesii decat testarea software: dezvoltare (<a href=\"https://www.academiatestarii.ro/curs.php?id=7\">Wordpress Web Development</a>), DevOps (Initiere in DevOps), Project management (Initiere in Software Project Management)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pe langa beneficiile date de cunostintele pe care studentii le pot acumula, merita sa vorbim si despre beneficiile cele mai motivante pentru potentialii angajati: salariul si beneficiile suplimentare. Industria IT este o industrie bine platita iar testarea software beneficiaza si ea de acest lucru. Salariile de inceput pot varia intre 3000 si 4500 de lei pe luna si pot creste, in functie de specializare si senioritate la peste 10.000 lei pe luna. Din ce in ce mai multi angajatori din zona IT si nu numai incep sa ofere si multe beneficii ca pachet extins de salarizare, pentru a devein mai atractivi in ochii potentialilor angajati. Astfel, acestia pot beneficia de abonamente medicale, abonamente la sala, zile in plus de concediu, buget de educatie si multe altele.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ca si concluzie, testarea software este una din cele mai atractive profesii de invatat, deoarece ofera cea mai facila si rapida intrare in industria IT, pentru persoanele interesate de reconversie profesionala. Accesul spre alte profesii poate deveni foarte facil, odata cu cresterea in senioritatea a celor deja implicati in testarea software, lucru care merita mentionat. Va invitam sa studiati oferta noastra de cursuri Open, pentru a va maximiza sansele de reconversie profesionala cat si specializare in profesia de testare software.</p>\r\n', 'Testare software,Reconversie profesionala', '2020-07-20', '2020-11-25 16:07:05', 1, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_images`
--

CREATE TABLE `news_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` mediumtext DEFAULT NULL,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `is_default` int(11) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_images`
--

INSERT INTO `news_images` (`id`, `image`, `news_id`, `is_default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tbt-2.png', 1, 1, NULL, NULL, NULL),
(2, 'radu-este-software-tester-1110x363.png', 2, 1, NULL, NULL, NULL),
(3, '7-tendinte-1110x371.png', 3, 1, NULL, NULL, NULL),
(4, 'pexels-photo-567633.jpeg', 4, 1, NULL, NULL, NULL),
(5, 'dasdadsad-1110x754.jpg', 5, 1, NULL, NULL, NULL),
(6, 'adult-african-agenda-1089556-1110x740.jpg', 6, 1, NULL, NULL, NULL),
(7, 'cardboard-communication-connecting-1246743-1110x740.jpg', 7, 1, NULL, NULL, NULL),
(8, 'accounting-analytics-apple-572056-1110x740.jpg', 9, 1, NULL, NULL, NULL),
(9, 'WORDPRESS.jpg', 10, 1, NULL, NULL, NULL),
(11, 'Software testing.jpg', 11, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f4418e8f4096c561403bd6c5d6f215b0e8bf290b144d5cfbca9de7cd4c08c380e76fae27b3423b20', 1, 1, 'AcademiaTestarii', '[]', 0, '2020-11-24 17:22:17', '2020-11-24 17:22:17', '2021-11-24 19:22:17'),
('a50d35227d8bb3de9de44c35ba65334f7a089ca62097be9e6d719cf74c23e55828111a87fe262407', 1, 1, 'AcademiaTestarii', '[]', 0, '2020-11-24 17:22:19', '2020-11-24 17:22:19', '2021-11-24 19:22:19'),
('a0765b70197a503c0fd38c20440cee39f435a60a8f80e3d1338d05f54185783eb5e6eb5cf25dd1b3', 1, 1, 'AcademiaTestarii', '[]', 0, '2020-11-24 17:39:27', '2020-11-24 17:39:27', '2021-11-24 19:39:27'),
('a6b2a8a336d162517145419fae0733d4cf6ee94233d855460e4eba9d59ef22095c14611826c07018', 1, 1, 'AcademiaTestarii', '[]', 0, '2020-11-25 12:16:14', '2020-11-25 12:16:14', '2021-11-25 14:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nvaQSujQZ6IGh8nCQ1xAHkklfioV1xXaeRuTvsLN', NULL, 'http://localhost', 1, 0, 0, '2020-11-24 17:19:53', '2020-11-24 17:19:53'),
(2, NULL, 'Laravel Password Grant Client', 'l9shn2cfdT7y287UbG0ADVfJC94ldCO94xGCISWl', 'users', 'http://localhost', 0, 1, 0, '2020-11-24 17:19:53', '2020-11-24 17:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-24 17:19:53', '2020-11-24 17:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `logo`, `description`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Digitech', 'Digitech.png', '', 'http://digitech.fr', NULL, NULL, NULL),
(6, 'DevTalks', 'dev-talks-black.png', '', 'https://www.devtalks.ro', NULL, NULL, NULL),
(7, 'Angajatori de top', 'Logo-ADT.png', '', 'https://www.catalyst.ro/project/angajatori-de-top/', NULL, NULL, NULL),
(12, 'Veolia', 'Veolia-brand.png', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"display: none;\">&nbsp;</div>\r\n', 'https://www.apanovabucuresti.ro/', NULL, NULL, NULL),
(2, 'Digidemat', 'Digidemat-logo.png', '<p>Echipa de consultanti Digidemat este specializata in digitalizare, oferind solutii inovatoare pentru a dezvolta procese B2B si B2C digitale, utilizand semnaturi electronice. Compania dispune si de expertiza in Quality Assurance, manuala sau automata</p>\r\n', 'https://www.digidemat.ro/', NULL, NULL, NULL),
(3, 'Suvoda', 'Logo-Suvoda.png', '<p>Suvoda este unul dintre liderii mondiali in materie de software dedicat studiilor clinice. Solutiile brandului contribuie la o lansare mai rapida pe piata a celor mai noi si folositoare medicamente, de care pacienti cu diferite afectiuni au nevoie. Aplicatiile pentru studii clinice simplifica munca specialistilor din companiile farmaceutice si ofera tehnologiei o altfel de putere: aceea de a contribui la o stare de sanatate mai buna a oamenilor.</p>\r\n', 'https://www.suvoda.com/', NULL, NULL, NULL),
(4, 'DigiTestLab', 'DTL-logo_black-1.png', '', 'https://www.digitestlab.ro', NULL, NULL, NULL),
(11, 'Computer Learning Center', 'ComputerLearningCenter_Logo_FINAL-mare.jpg', '', 'https://www.newhorizons.ro', NULL, NULL, NULL),
(13, 'NN Asigurari de Viata', 'NN-Logo.png', '', 'https://www.nn.ro', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `period` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `module_id`, `name`, `period`) VALUES
(1, 254, 'Initiere în Software Testing (3 saptamani)', '15 Ian – 21 Feb 2018'),
(2, 254, 'Initiere în Software Testing (3 saptamani)', '20 Aug - 5 Sep 2018'),
(3, 254, 'Initiere în Software Testing (3 saptamani)', '25 Iun – 1 Aug 2018'),
(4, 254, 'Initiere în Software Testing (3 saptamani)', '3 Sep - 19 Sep 2018'),
(5, 254, 'Initiere în Software Testing (3 saptamani)', '5 Mar – 11 Apr 2018'),
(6, 254, 'Initiere în Software Testing (3 saptamani)', '5 Noi – 21 Noi 2018'),
(7, 254, 'Initiere în Software Testing (3 saptamani)', '7 Mai – 13 Iun 2018'),
(8, 261, 'Initiere în Test Automation: Rest API & UI (7 saptamâni)', '11 Iun – 25 Iul 2018'),
(9, 261, 'Initiere în Test Automation: Rest API & UI (7 saptamâni)', '29 Oct - 12 Dec 2018'),
(10, 261, 'Initiere în Test Automation: Rest API & UI (7 saptamâni)', '3 Sep - 17 Oct 2018'),
(11, 261, 'Initiere în Test Automation: Rest API & UI (7 saptamâni)', '5 Mar – 18 Apr 2018'),
(13, 700, 'Initiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(14, 1061, 'Initiere în Test Automation: Rest API & UI (2 weekend-uri)', '9 Nov - 18 Nov 2018');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'can-view-all', 'Can view all', '2020-11-24 17:19:34', '2020-11-24 17:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2020-11-24 17:19:34', '2020-11-24 17:19:34'),
(2, 'student', 'Student', '2020-11-24 17:19:34', '2020-11-24 17:19:34'),
(3, 'trainer', 'Trainer', '2020-11-24 17:19:34', '2020-11-24 17:19:34'),
(4, 'trainer-provider', 'Trainer Provider', '2020-11-24 17:19:34', '2020-11-24 17:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, '2020-11-24 17:20:45', '2020-11-24 17:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `buton` varchar(256) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(1) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='home page slider';

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `description1`, `description2`, `link`, `buton`, `created`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'slider1.jpg', 'Early Bird, Loyalty, Friends will be Friends, Company Discount ', 'Tu de ce tip de reducere poţi beneficia? ', '', '', 'Detalii', '2019-10-09 11:42:30', 1, NULL, NULL, NULL),
(4, 'slider2.jpg', 'Fă primul pas spre o carieră în IT! ', 'Iniţiere în Software Testing ', '', '', '', '2019-10-09 11:43:09', 1, NULL, NULL, NULL),
(2, 'slider3_2.jpg', 'Pachetul complet pentru un viitor Automation Engineer. ', 'Iniţiere în Test Automation: Rest API & UI ', '', '', 'Cum putem colabora', '2019-10-09 11:12:02', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(6) UNSIGNED NOT NULL,
  `last_name` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `job_title` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `english` text DEFAULT NULL,
  `other_language` text DEFAULT NULL,
  `ms_office` text DEFAULT NULL,
  `web` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `cnp` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `county` text DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(32) DEFAULT NULL,
  `confirmation_code` varchar(12) DEFAULT NULL,
  `reset_code` varchar(12) DEFAULT NULL,
  `activity` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `is_active` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `notifications` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `promotions` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `newsletter` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `last_name`, `first_name`, `email`, `date_of_birth`, `job_title`, `company`, `phone`, `education`, `english`, `other_language`, `ms_office`, `web`, `photo`, `cnp`, `address`, `city`, `county`, `registration_date`, `password`, `confirmation_code`, `reset_code`, `activity`, `reset`, `is_active`, `notifications`, `promotions`, `newsletter`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mirea', 'Daniel', 'daniel.mirea@gmail.com', '1972-08-27', 'Full Stack Web Developer', 'Core Design', '0731147305', 'MC', 'Avansat', 'Franceza', 'Avansat', 'Avansat', NULL, NULL, 'Acasa', 'Ploiesti', 'Prahova', '2019-10-30 11:21:23', '58e988a3d680813d69539d936660f998', NULL, NULL, '2020-06-11 16:25:13', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(8, 'Florea', 'Maria Adelina', 'adelina.florea7@gmail.com', NULL, 'analyst software', NULL, '0721297845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'dbcdd715b9fe901676dfa06cd6cd8b6e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(3, 'Manolescu', 'Florin', 'florin@academiatestarii.ro', '1983-08-25', '', '', '0799005004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Str. Stefan Stoika, nr 22', 'Bucuresti', 'Bucuresti', '2019-11-11 06:35:13', '6de09817ece634aa6973502267f82784', NULL, NULL, '2020-08-18 11:22:27', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(4, 'Florin', 'Manolescu', 'florin.manolescu@digidemat.ro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-06 16:32:43', '6de09817ece634aa6973502267f82784', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(5, 'STAN', 'GEORGE', 'george@academiatestarii.ro', NULL, 'gbjhbjh', 'jhgjbj', '0734540913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asda', 'asdajhbjha', 'Bucuresti', '2019-12-10 16:05:52', 'be232386250c65d2ea9436d47ebe6f57', NULL, NULL, '2020-11-12 13:06:59', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(9, 'Vlaicu', 'Adrian Romulus', 'adivlaicu72@gmail.com', NULL, 'inginer', NULL, '0724779289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '94bf22a5764fdfd49d4f84b2c1e335e5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(10, 'Matei', 'Adrian', 'adrian.matei.am@gmail.com', NULL, 'N/A', NULL, '0723017610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '38dd90717633543e59993ba9940e6379', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(11, 'Iliescu', 'Albertina', 'albertina.iliescu@gmail.com', NULL, 'IT Recruiter', NULL, '0767354479', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '46911515a1fc6ee54b4d87443201c9bd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(12, 'Ecard', 'Alecsandra', 'alecsandra.ecard@gmail.com', NULL, 'Comunicare ', NULL, '0724935536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '57d9643481f635cff7d6f69fcfb6570f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(13, 'Verban', 'Alexandra', 'alekverban@gmail.com', NULL, 'Expeditor International', NULL, '0770549231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'aa488f039a575f8746b442920c7530a6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(14, 'NECULA', 'ALEXANDRA', 'alexaman20@yahoo.com', NULL, 'ofiter bancar', NULL, '0761149548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'dca0599b2060074103b941f11e53df32', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(15, 'Foltica', 'Alexandra', 'alexandra.cioroianu@gmail.com', NULL, 'IT Analyst', NULL, '0753138181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'eabe45cc0f24a6edbaec37afc51f8b3d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(16, 'Nita', 'Alexandra', 'alexandra.iacobuta@gmail.com', NULL, 'Economist', NULL, '0745012851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f9b84343bc6a238671e21ad3a1cbc490', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(17, 'Radu', 'Alexandra', 'alexandra.radu@rbc.com.ro', NULL, 'Software tester', NULL, '0735447949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b0f5be54ee24acbcd6a19d979e095224', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(18, 'Avram', 'Alexandra', 'alexandraavram87@yahoo.ro', NULL, 'Doctorand', NULL, '0748822304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '2b680f5bd8393a35dada6491e1d8a3f5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(19, 'Rou-Simion', 'Alexandra-Maria ', 'alexandrasimion583@yahoo.com', NULL, '-', NULL, '0770311306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4bca5a2e3583466cc9ecf8e92729d1ed', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(20, 'Cretan', 'Ioan-Alexandru', 'alexandru.cretan@gmail.com', NULL, 'QA Analyst', NULL, '0799338379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9e0273893d9eff6fd8ab6e6a62f995ae', NULL, 'rIwPzedFvMsK', '2020-09-02 16:14:24', '2020-10-30 12:17:56', 1, 1, 1, 0, NULL, NULL, NULL),
(21, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', NULL, '-', NULL, '0722532193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '36c19adecb2913919ee873bc4e62de1e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(22, 'Zamfir', 'Alexandre', 'alexandru.zamfir@allevo.ro', NULL, 'Tester', NULL, '0748044806', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3659c31cb772a1d569ec87d6339fab78', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(23, 'Fundaneanu', 'Alexandru', 'alexandru_fundaneanu@yahoo.com', NULL, 'economist', NULL, '0765455342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '32c1acb9e3cb39ab7978b9ef4d3f3f1e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(24, 'Minza', 'Alexandru', 'alexandru_mn@yahoo.com', NULL, 'Liber profesionist', NULL, '0722307448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0857ee8ceb6a734821fc1e67bbe6968a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(25, 'Cozma-Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', NULL, 'IT Specialist', NULL, '0721602051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'cd711cd036bbae4dcc53723d6c0ea59e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(26, 'Negoesteanu', 'Alexandru', 'alexzamoravvv@gmail.com', NULL, 'Game Tester', NULL, '0732874370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c5eb07ddfdb6a80c58be5deaf04f9b1c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(27, 'Fuioaga', 'Alin', 'alin.fuioaga@icloud.com', NULL, 'Inside Business Partner', NULL, '0745651130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '109438e2c44c6227803730c6ba397d3b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(28, 'Diaconescu', 'Alina Maria', 'alinadiaconescu_18@yahoo.com', NULL, 'Traducator', NULL, '0763674968', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9b707200d5d130927f7d1e24934d9979', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(29, 'Filimon', 'Alina', 'alinafilimon817@gmail.com', NULL, 'Bucatar', NULL, '0753334467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'e970c66202e92084853fb1443f7c1c7e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(30, 'Balaban', 'Alina', 'alina_irina_b@yahoo.com', NULL, 'QA', NULL, '0740303193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6e22bd00b1424c08d238b48a1f4408a6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(31, 'Amet', 'Adler', 'ametadler@yahoo.com', NULL, 'Agent vanzari', NULL, '0747868313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0b5cca2aa95a0e4e572b5718da897af3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(32, 'Lumtraru', 'Madalina', 'ana.luntraru@gmail.com', NULL, 'Referent marketing online', NULL, '0725537257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4f7a0af2533feb1df8ae387aec7a5cb7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(33, 'Muraru', 'Suzana', 'ana.meciu@gmail.com', NULL, 'Operator suport tehnic', NULL, '0769654511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f7576f51f3223a233330053efa55d23e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(34, 'Dinu', 'Anca Georgiana', 'anca1189@yahoo.com', NULL, 'Barman', NULL, '0768153153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ed09822b1960d000cd62d31101079270', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(35, 'Apostol', 'Alexandra', 'andraa2301@gmail.com', NULL, 'student', NULL, '0735319342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6a25f7ee1f2a0a6b13216e51b1b368e9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(36, 'AHMED', 'ANDRA', 'andraahmed@gmail.com', NULL, 'Analist bancar', NULL, '0722651333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ac02eb5cd014db1b99fc6de2d5c693f1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(37, 'dolete', 'andreea', 'andreea.dolete@yahoo.com', NULL, 'Manual Tester', NULL, '0723639589', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4ebac966ec819d7c6add3bb5858de751', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(38, 'Martinas', 'Andreea', 'andreea.martinas88@yahoo.com', NULL, 'Special Pricing Analyst', NULL, '0724623752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1db40872e7c4f22a13273f7b2e995743', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(39, 'Patras ', 'Andreea Georgiana', 'andreea.patras@gmail.com', NULL, 'consilier achizitii', NULL, '0768860960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '85b0aa3942317c030fbed3b0924af416', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(40, 'Rusu', 'Andreea', 'andreea.rusu03@yahoo.com', NULL, 'BPO Analyst', NULL, '0727921623', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '39d6c3cc855438db2c45b5bed013f218', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(41, 'Tudor', 'Andreea Stefania', 'andreea.stefania_tudor@yahoo.com', NULL, 'Farmacist', NULL, '0747011327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a3fed4265f709a0e02978aa356809e82', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(42, 'Avasiloaie', 'Andreea', 'andreeaavasiloaie15@gmail.com', NULL, '-', NULL, '0755947432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '938bd64287517d675723c2971648dc8a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(43, 'Chiriac', 'Andreea-Adriana', 'andreeachiriac3@yahoo.com', NULL, 'Tehnical Support', NULL, '0748424754', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '91aa5eef10f71f03a6f7f31bcc6256ee', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(44, 'Dinu', 'Andreea Cristina', 'andreea_cristina_dinu@yahoo.com', NULL, 'Economist', NULL, '0727505301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '424b6dd715a484078ad9f103f798a9dd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(45, 'Raicu', 'Andrei', 'andrei.raicu111@gmail.com', NULL, 'Reprezentant de vanzari in industria Pharma', NULL, '0758795668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ac9e105bf90a50cc125406ebaeb64114', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(46, 'Senseutchi', 'Andrei', 'andrei.senseutchi@gmail.com', NULL, 'manager achizitii', NULL, '0734398629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '8f907769be60df886a3e1dc7e9be3723', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(47, 'Bibu', 'Andrei Cristian', 'andreibibuu@gmail.com', NULL, 'Lucrator comercial', NULL, '0737017899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '16a46950cb7ebda37a757eaf86feab26', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(48, 'andreea', 'militaru', 'andreuta44@gmail.com', NULL, '', NULL, '0799744371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0ad16ed4b4acc392127054bb0c4f8313', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(49, 'Gavrila', 'Angela', 'angelagavrila@gmail.com', NULL, 'HRIS specialist', NULL, '0733600067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '49b67c317d0e86eda0f8df480dcc8b89', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(50, 'Antohi', 'Veronica', 'antohi.veraarev@gmail.com', NULL, 'QA Software Tester', NULL, '0724148786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'fbe60c7a6e1aee45f9e17738f84892bb', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(51, 'Anton', 'Claudiu', 'anton_claudiu92@yahoo.com', NULL, 'Game tester', NULL, '0753638224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f107a2d5c3259b77e97831f865c4e3eb', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(52, 'Gindea', 'Aura', 'aura.gandea@gmail.com', NULL, 'Inginer Testare', NULL, '0725439410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9ce2b47d6da51b1cfdc8ba17514918ea', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(53, 'Balasa', 'Alexandra', 'balasaalexandra1993@gmail.com', NULL, 'Inginer mecanic', NULL, '0743522420', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9f6dfe00748d81ed0193da8e5bf9037d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(54, 'Ban', 'Dumitru', 'ban.dumitru@gmail.com', NULL, 'Operator imagine ProTv', NULL, '0766421553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '25fe0e55a02bd4a4053c56e60525ce74', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(55, 'Bercu', 'Constantin', 'bercuconstantinbogdan@yahoo.com', NULL, 'Inginer', NULL, '0740569465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '01d5b72f0455db3a726db15fd51e297b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(56, 'Bratu', 'Simona', 'bmona@yahoo.com', NULL, 'QA Tester', NULL, '0744441175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'aa0c0884777c13d2f42869c91bfa9e39', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(57, 'Avram', 'Bogdan', 'bog.avram@yahoo.com', NULL, 'Student', NULL, '0721949606', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0efc273c5835bc1776539060a5f7c6ee', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(58, 'Iordache', 'Bogdan', 'bogdan388@gmail.com', NULL, 'QA Specialist ', NULL, '0720271812', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b3e81654b1f832d5dca9b9a0e8f3b429', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(59, 'Elena', 'Elena', 'branzan.elena@gmail.com', NULL, 'Economist', NULL, '0766224989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9569a70cfbd2ce5e998eb945a50ce721', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(60, 'BRENDEA', 'ALEXANDRU-IULIAN', 'brendea.alexandru@yahoo.com', NULL, 'INGINER PROIECTANT INSTALATII', NULL, '0735656944', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a350fc55fe2271917d7819236237fbb1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(61, 'Calin', 'Ingrid', 'caliningridd@gmail.com', NULL, 'Tester', NULL, '0721796926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '2cd4c324a1be25bddf5371df2249c7c6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(62, 'Dimian', 'Carmen Mihaela', 'carmen.mihaela.lis@gmail.com', NULL, 'economist', NULL, '0765434698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '82c180c9f9e25eaa4f6d90c7bc8cb606', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(64, 'Afrim', 'Catalin', 'catalin.afrim@gmail.com', NULL, 'Service Desk', 'Ntt data', '0752675768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Str. Straduintei nr 6', 'Bucuresti', NULL, '2020-02-13 16:26:47', '65de11ef39016010d5e1f95ce0a93a00', NULL, NULL, '2020-05-08 16:14:05', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(65, 'Anghel', 'Catalin Nicolae', 'catalin.anghel85@yahoo.com', NULL, 'Manager proiect', NULL, '0726684384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '58bd789b207946d653c1519ec35ab900', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(66, 'Andrei', 'Catalin-Constantin ', 'catalin.raven@gmail.com', NULL, 'Inginer', NULL, '0722966332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6a49253a96482e2e2531722f5b01313c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(67, 'Golea ', 'Catalin', 'catalin_thk@yahoo.com', NULL, 'Operator electronist', NULL, '0730563009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '81422dc56e9cc8998cc6a3e0e3463f95', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(68, 'Morariu', 'Catalin', 'catamorariu@icloud.com', NULL, 'Java developer', NULL, '0747771495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f637bd75c5f631d201740f580b259084', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(69, 'Gurgu', 'Ciprian', 'cgurgu@internetmarketingcompany.biz', NULL, 'QA tester', NULL, '0735787364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1ef1654e365f5603323896d0f49efe9f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(70, 'Chelaru', 'Iulian-Robert', 'chelaru.iulian15@gmail.com', NULL, 'Consultant achizitii IT', NULL, '0755976002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd77185269dc373d934ca09db908f015f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(71, 'Chelaru', 'Mirela', 'chelaru.mirela@gmail.com', NULL, 'Manual tester', NULL, '0754972810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '689acfdc6f67b238ae0b6664c788d960', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(72, 'Chetrone', 'Mirela', 'chiritoiumirela@gmail.com', NULL, 'Contabill', NULL, '0768258334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ccdcf2a752d5ce30b4a4121d3b4b5e21', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(73, 'Schiopu', 'Ciprian-Mihai', 'ciprian.schiopu@gmail.com', NULL, 'Analist', NULL, '0742933981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1847354562fa4eef89c909c657fceb1c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(74, 'Munteanu', 'Ciprian', 'ciprian88m@gmail.com', NULL, 'Air & Sea Freight Coordinator', NULL, '0769698933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c346f1647b27ec23b76a487528980efd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(75, 'Ciuica', 'Bogdan', 'ciuica_bogdan@yahoo.com', NULL, 'Fara ocupatie', NULL, '0763604136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bad4f2fdaf063b633d7e5bcd4b2b027a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(76, 'Ciurcanu', 'Oana', 'ciurcanu_oana@yahoo.com', NULL, 'Inginer mecanic', NULL, '0747437345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'fcb5fe51c1f502659835e394c8c3f23a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(77, 'Dinicica', 'Claudia', 'claudiadinicica@gmail.com', NULL, 'Ofiter Logistica', NULL, '0767832074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '47df828081d5d8e0c1b56734a07a5f4e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(78, 'Tamas', 'Claudiu', 'claudiu.tamas@punct.ro', NULL, 'QA Engineer', NULL, '0732779578', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '14e61206b545a6a55fa68cdcc489a386', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(79, 'Coman', 'Alexandru', 'comanalexandru07@gmail.com', NULL, 'Team leader ', NULL, '0753481914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a9dd40ef8489da7a83a4555fa1e90016', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(80, 'Carpovici', 'Victor', 'corina.carpovici@db.com', NULL, 'Claims assessor', NULL, '0726970831', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a5f660e89b735c09866f981303e46783', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(81, 'Marin', 'Corina', 'corina_marin25@yahoo.com', NULL, 'Economist', NULL, '0757321907', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3ff2dd2b7c4f48accb1c238188b3976f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(82, 'Nistor', 'Corina-Mihaela', 'coryna_odo@yahoo.com', NULL, 'Software Tester', NULL, '0752546513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'dbc95740d57868298264bb871ec4532f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(83, 'Banulescu ', 'Cosmin', 'cosmin_b96@yahoo.com', NULL, 'Student', NULL, '0762921185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ca4ef9a5d2842f6db61a866044d0c81f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(84, 'Olteanu', 'Costin', 'costinolteanu@yahoo.com', NULL, 'Lead Software Tester', NULL, '0753878697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'e270b62ca8922bff46d752c018ad206e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(85, 'Creciun', 'Dumitru', 'creciundumitru@gmail.com', NULL, 'Inginer petrolist', NULL, '0732066905', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '593b942a9c358274bfb0ce08d814d7a2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(86, 'Dimian', 'Dan Cristian', 'cristi.dimian@gmail.com', NULL, 'Data Entry Operator', NULL, '0724058806', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '92c76593e0033d323c2f8733b56c6903', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(87, 'Stoica', 'Cristian', 'Cristian.eugen.stoica@gmail.com', NULL, 'X', NULL, '0727053153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'dcd791e4849c04a69c30c9e9f2b28189', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(88, 'Cristian', 'Gonciulea', 'cristian.gonciulea@gmail.com', NULL, 'aa', NULL, '0772095203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '76e0384b541f46a0fe3c83f08f674c70', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(89, 'Cristian', 'Gonciulea', 'cristian.gonciulea@yahoo.com', NULL, 'aa', NULL, '0772095203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '76e0384b541f46a0fe3c83f08f674c70', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(90, 'Cristian ', 'Romanoschi', 'cristian_romanoschi@yahoo.com', NULL, 'Product Owner', NULL, '0723584812', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '60a4477df94aa6b3fb0b1755f81bc1b1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(91, 'Sanchez', 'Cristina', 'cristinam.sanchez.rincon@gmail.com', NULL, 'Economist', NULL, '0758036028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a6f19612993afffa4a684e60b36f01f6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(92, 'Qanairy', 'Qanairy', 'crosy_2pac@yahoo.com', NULL, 'Qanairy', NULL, '0734540913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b9dbfcdd84930c6024c7169d08d47cb0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(95, 'Cutieru ', 'Mihai-Petrisor ', 'cutieru_mihai@yahoo.com', NULL, 'Specialist achizitii componente aeronava', NULL, '0728198930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '40d8baf5b54b0eae8610d356551e524d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(96, 'Musetescu', 'Daniela', 'dana.musetescu@yahoo.com', NULL, 'account manager ', NULL, '0722447636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '615b412f5a642917448f5a0ad0b38096', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(97, 'Danalache', 'Fabian', 'danalache.fabian@gmail.com', NULL, 'IT recruiter', 'LSEG Romania', '0735590310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Str. Ceahlaul nr. 8', 'Bucuresti', NULL, '2020-02-13 16:26:47', 'd3b68cd85f0bda600aa70387d08bf593', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(98, 'Ristea', 'Daniel', 'daniel.ristea84@yahoo.com', NULL, 'Area sales manager', NULL, '0727528528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f6ac9d303fd392aa66ee3bfed6e42a42', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(99, 'Daniel-Stefan', 'Tirscoveanu', 'daniel.stefan.t@gmail.com', NULL, 'Game Tester', NULL, '0758558921', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b536cb1d5610d3a9d302961d6a0a39fc', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(100, 'Musat', 'Daniela', 'daniela.musat6@gmail.com', NULL, 'Manager Contractare', NULL, '0738004107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '60c3020cedc385a31b7cf03e48e55f0e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(101, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', NULL, 'Customer Success Manager', NULL, '0722912206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd3f4250231db7b3c0cd0975a5168d9b3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(102, 'Sandu', 'Ionut Daniel', 'danisandu59@gmail.com', '1995-11-03', 'Software Tester', 'Digidemat', '0735083268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Str. Crinului, Nr. 66C', 'Rosu', 'Ilfov', '2020-02-13 16:26:47', '972ded6a8944d3cabb96e84ef135fcdf', NULL, NULL, '2020-09-02 17:01:39', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(103, 'Plopeanu', 'Andreea', 'deea_cosmina@yahoo.com', NULL, 'QA Manual', NULL, '0733044911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a6c770d32743665c7a01fd5c7c4c83f8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(104, 'Alecsandru', 'Dan', 'dem24cat@yahoo.com', NULL, 'sales', NULL, '0722492426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3d277467f804ad3e4facb0d26de90fe2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(105, 'Diaconu', 'Florin', 'diaconu7@gmail.com', NULL, 'Software Support', NULL, '0727946834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd392fe7ad38ef2d69db0f8f76c2a48e8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(106, 'Zaharia', 'Diana ', 'diana.f.zaharia@gmail.com', NULL, 'Account Manager', NULL, '0752125171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'aeca14476c5380868a7f6360c0a2a1f9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(107, 'Prigoreanu', 'Diana ', 'dianaprigoreanu9525@gmail.com', NULL, 'Student ', NULL, '0732678111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '458cddb4f050876226fa22d26bb5d71d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(108, 'Prigoreanu', 'Elena Diana', 'dianaprigoreanu@yahoo.com', NULL, 'Studenta', NULL, '0732678111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '080a3b0155f6442953c30c1e8be43dcc', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(109, 'Di Conza', 'Domenico', 'domenicodiconza@punct.ro', NULL, 'QA Engineer', NULL, '0721719122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '5ae750ffd2b98db2dd3c57a61655cc60', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(110, 'Domnisan', 'Andrei Alexandru Silvestru', 'domnisanandrei@gmail.com', NULL, 'QA Senior Tester', NULL, '0741273989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6e115dd419d42d2bf798aed80187dbe8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(111, 'Dragomir', 'Eugen', 'dragomir.eugen@yahoo.com', NULL, 'QA', NULL, '0732487591', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '03579e3eec52cc8c95d3a327c85c7a53', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(112, 'Olteanu', 'Dragos', 'dragos.olteanu@axessoftware.ro', NULL, 'Tester', NULL, '0726719456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '198e10f0bdde910cd83c9ae459681609', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(113, 'Avadanei', 'Dragos', 'dragosstudio@gmail.com', NULL, 'Qa', NULL, '0722609283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '255059aa42d98ad07efea650cf3f784f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(114, 'Dumitrica', 'Cosmin', 'dumitrica_cosmin@yahoo.com', NULL, 'Manager administrativ', NULL, '0726385834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '88df171579bc981b1433b78d8d56987a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(115, 'Baluta', 'Dumitru', 'dumitru.baluta@gmail.com', NULL, 'Tehnician Maseur', NULL, '0769276357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1e3aa180d66943729f5965451ff8f4c2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(116, 'Duran', 'Georgiana', 'durangeorgiana@yahoo.com', NULL, 'Inginer Mecanic', NULL, '0767091610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1ce10a1722e76ffc822773f0542e6ee3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(117, 'Visan', 'Daniel-Stefan', 'dvsn23@outlook.com', NULL, 'Validation Consultant', NULL, '0746503281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bd71939cb1fec59f652450f2a6e337a6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(118, 'Grigore', 'Elena', 'elena.grigore22@gmail.com', NULL, 'QA engineer', NULL, '0745797123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1db871de863d342277c1aff45df2360b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(119, 'Agavriloaei', 'Elena', 'elena@agavriloaei.ro', NULL, 'Specialist marketing', NULL, '0735435393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'fadf17141f3f9c3389d10d09db99f757', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(120, 'Ciuciu-Toader', 'Emilia-Gabriela', 'ema_gbrl@yahoo.com', NULL, 'Asitent Manager', NULL, '0745040267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '56af884e8542d3a4e8306d30c7828b35', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(121, 'Enache-Pommer', 'Ana', 'Enachepommer.ana@gmail.com', NULL, 'none', NULL, '0727794155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'dcfbd01b910668eac9c2f6c0ceff3479', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(122, 'Patrascu ', 'Raluca Elena ', 'e_raluca_p@yahoo.com', NULL, 'Economist', NULL, '0727736468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '809a9706a1e945113b07f3e0e7edd041', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(123, 'Manole Mihaela', 'Mihaela', 'Francumihaelatatiana@yahoo.com', NULL, 'Analist', NULL, '0723725766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd9998c9805f3a5f3c626f5626621360a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(124, 'Stoicescu', 'Gabriel', 'gabi21stoicescu@yahoo.com', NULL, 'Economist', NULL, '0760337330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'fc7cf2f668a20087355dcc437910c0d8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(125, 'Negoita', 'Gabi Razvan', 'gabinegoita@yahoo.com', NULL, 'Barista', NULL, '0764525669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'cbe614cdb9226e69992e88c5eb41f90f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(126, 'Gaita', 'Octavian', 'gaita_octavian@yahoo.com', NULL, 'Senior Accountant', NULL, '0768841805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '29d11c698b15def34cdaf52c0a06026d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(127, 'Calin', 'Georgian Ionut', 'gcalin@cbn.ro', NULL, 'Software Tester', NULL, '0745016835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9c5f067740c434d243d19b4d30874168', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(128, 'Pascu', 'George', 'george.pascu89@yahoo.com', NULL, 'Junior Card System Administrator', NULL, '0737152877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '8dfa1ddc9aca221bfb3ae2ce68d996ce', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(129, 'Ghera', 'George', 'ghera.george@gmail.com', NULL, 'Specialist IT', NULL, '0766399499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f4852ec7d15bfec98567cde5ad3aa0ee', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(130, 'Ghilenschi ', 'Mihai Alexandru', 'ghila777@yahoo.com', NULL, 'Software QA', NULL, '0722313789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0bbc4fedfa2b5cc259004e8e195b1522', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(131, 'Gogescu', 'Adrian Marius', 'gogescuadrian@gmail.com', NULL, 'Tester', NULL, '0724844935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '23c37b8966115faf9af1f2d213a20427', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(132, 'Soare', 'Ionut Bogdan', 'grod1490@gmail.com', NULL, 'QA Tester', NULL, '0721645311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '437f1c9e36b0edc6197a140200dadc30', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(133, 'Hincu', 'Alina-Emilia', 'hincu.emi@gmail.com', NULL, 'beauty advisor', NULL, '0762270788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3d16ce19fa2188247278b44ef851dbb6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(134, 'Ionita ', 'Andreea Tatiana', 'i.andreeatatiana@gmail.com', NULL, 'Consultant', NULL, '0730119012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1bfcea513322b229a6cd438c252ec30e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(135, 'Andreescu', 'Ileana', 'ile.andreescu@gmail.com', NULL, 'Grafician', NULL, '0724663123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1efe1147fe0464a0ab809d178c77c61e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(136, 'Ioana', 'Cristina', 'ioanacristiana2005@yahoo.com', NULL, 'N/A', NULL, '0761687447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4d889fd6c9e8d2f6f7c30817a18da4e3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(137, 'Lajea', 'Ionela', 'ionelalajea@gmail.com', NULL, 'QA Engineer', NULL, '0768892663', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '765c94eee6c8fa9af3bd9ca6d932ac3a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(138, 'Ionita', 'Mihai Alexandru', 'ionita.alexandru.mihai@gmail.com', NULL, 'Inginer mecanic', NULL, '0734190743', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '59f8e26e05e7a97317e73cdd3fa16dfa', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(139, 'IONITA-ANDREI', 'CRISTIAN-GEORGE', 'ionita.andrei2010@gmail.com', NULL, 'Cameraman', NULL, '0723181363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'e859043afdd0520f5bd4ccf79c961c31', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(140, 'Ionut', 'Stancuea', 'ionut.stanculea@gmail.com', NULL, 'Inginer Proiectant Auto', NULL, '0775547311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '97fe95069b13baeafae741773504326a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(141, 'Anton', 'Iulia Ioana', 'ischeul@yahoo.com', NULL, 'Economist', NULL, '0744341064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '429c05273a8be7308a91120294903775', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(142, 'IULIAN', 'SIRBU', 'isirbu@cbn.ro', NULL, 'Tester', NULL, '0768236768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6e4e4262b377b67e08777c78b298fdb1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(143, 'Corbu', 'Iulia', 'iulia.corbu.cristiana@gmail.com', NULL, 'N/A', NULL, '0723559117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '8a154e63135b9ac9effd27ce7dc554a2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(144, 'Elena-Iulia', 'Ciufu', 'iuliaelena.cozma@gmail.com', NULL, 'Analist servicii clienti', NULL, '0766338480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3563a5246dc9b653686316c9171911dd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(145, 'Ungureanu', 'Iuliana', 'iuliana.ungureanu07@gmail.com', NULL, 'Economist', NULL, '0726882005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ed77775029dedbebac35712d97cfaf53', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(146, 'Tocica', 'Cristian', 'katana_wrath@yahoo.com', NULL, 'Medic', NULL, '0751076169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a4da71e0873d6f314de15883d8c02f17', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(147, 'Gherghina ', 'Silviu Claudiu ', 'klaudiumail@yahoo.com', NULL, 'QA & Testing Analyst', NULL, '0723312708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6da8876412b6cd2380f6d4e492c519f0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(148, 'Dogeanu', 'Laura Violeta', 'laura.dogeanu@gmail.com', NULL, 'economist', NULL, '0724222572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3fc2ff3dea4ec4466dc70743dbad56b5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(149, 'Laura', 'Recea', 'laurarecea@gmail.com', NULL, 'De inlocuit', NULL, '0784150882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0c03e99d4b604794295d53cef8b5eaf9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(150, 'Popa ', 'Laura', 'laura_dulcik88@yahoo.com', NULL, 'Contabil', NULL, '0744176517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd2d6bb812b44faf89b84b805e9417fb7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(151, 'Dinu', 'Laurentiu', 'laurentiu.dinu1007@gmail.com', NULL, 'Fara', NULL, '0786411119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '5f84a799ee37a9becd05a33cbb897cc3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(152, 'Tanase', 'Lavinia', 'lavinia_trandafir@yahoo.com', NULL, 'Analist servicii clienti', NULL, '0766938630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0e7b0843e1e12552282bea3cf549efc5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(153, 'Chitaru', 'Loredana', 'loredana.chitaru@gmail.com', NULL, 'Software Tester', NULL, '0722400147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1638b36eba436bacef44236bb2247b3f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(154, 'Dinu', 'Lucian', 'lucian.dinu93@yahoo.com', NULL, 'Inginer mecanic', NULL, '0720588615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '71c7d8fdfff5bdab211aa0b93f2111a0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(155, 'Lungu', 'Cristian', 'lungucris@gmail.com', NULL, 'Senior Sales Dealer', NULL, '0722630996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c1cd248cca9ded58804a53bbc9086507', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(156, 'Paun', 'Florin', 'ma3x_ul@yahoo.com', NULL, 'inginer constructor', NULL, '0728863265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'dad0ab10eefaef5a6066ad9cc21554d9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(157, 'Mahmood', 'Muheb', 'mahmood.muheb@gmail.com', NULL, 'Medic Stomatolog', NULL, '0720312746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '27788ada1de256a08e02e977a86fcbc8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(158, 'Dobra', 'Maria', 'maria.dobra91@gmail.com', NULL, 'Inginer', NULL, '0753982547', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'e749bd84cf65b9b38aef9dc2c1810956', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(159, 'Salceanu', 'Maria', 'maria.salceanu@trendconsult.eu', NULL, 'Consultant Management', NULL, '0744441456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'e1af0e6625cbde048a2d09b588b269ad', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(160, 'Munteanu', 'Maria', 'maria22011957@gmail.com', NULL, 'Jurist', NULL, '0764727578', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ba0899361e2bd1bd025b02eae9fdb843', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(161, 'Maria', 'Jora', 'mariana_jora@yahoo.com', NULL, 'Manager Restaurant', NULL, '0731293329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b349fa6e640618c65565a237db513d60', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(162, 'Marinescu', 'Tatiana Malina', 'marinescutatianamalina@yahoo.com', NULL, 'Medic veterinar', NULL, '0723755009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '2f0e8f093fe07b2173dec775b772f74f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(163, 'Baltoi', 'Marius Nicolae', 'mariusbaltoi@gmail.com', NULL, 'Data Entry Operator', NULL, '0727282185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b372c8c7e9e18d52e05ad1f972aedeb8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(164, 'Dragomir', 'Marius', 'maryuscl@yahoo.com', NULL, 'Product manager', NULL, '0729742265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '70290bd3845ff427e716d447abf187f1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(165, 'Burcea', 'Marius-Cristian', 'mcburcea@gmail.com', NULL, 'Psihoterapeut', NULL, '0732154844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bd313199ebc505e960389218ba3d1588', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(166, 'Stefancu', 'Mihaela', 'mihaelaste88@gmail.com', NULL, 'operator introducere date', NULL, '0729322200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '8f02bca42514017c64d2af6b3afd3b70', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(167, 'topala', 'mihaela', 'mihaelatopala1@gmail.com', NULL, 'analist', NULL, '0765516850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'b2ed3c5fc240dac2c88ce53c60abbfc3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(168, 'Matache', 'Mihaela', 'mihaela_bgh@yahoo.com', NULL, 'CCC', NULL, '0722452795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '42407ae623c6bd557cb0b7d280462d42', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(169, 'Florea', 'Mihaela', 'mihaela_florea91@yahoo.ro', NULL, 'QA Engineer', NULL, '0755868295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd3e8240e6860efc1daf13da91e250e20', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(170, 'Lazar', 'Mihai', 'mihai1lazar@yahoo.com', NULL, 'QA Tester @ King Studio Bucuresti', NULL, '0745065106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '832f32de87aa21c0a0d73a70bddee3b1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(171, 'Matache', 'Mihaela', 'mihatesting@gmail.com', NULL, 'QA Engineer', NULL, '0722452795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bbfea4c41d396adf62057d92267c1c40', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(172, 'Mestes', 'Mihaela', 'miha_baci@yahoo.com', NULL, 'QA Engineer', NULL, '0766237694', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4b5c21a66b3f0c2663828992aa59bf7f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(173, 'Mihai', 'Tudose', 'mihtud@yahoo.com', NULL, 'somer', NULL, '0728143318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '16955b75ed56526b4a18c7c8cf28f3b5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(174, 'Cocanu', 'Mirela', 'mirela_cocanu@yahoo.com', NULL, 'student', NULL, '0722638498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '89ed9b3435fab1eb3999f1f26ceea303', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(175, 'Armulescu', 'Miruna Olivia', 'mirunaolivia@gmail.com', NULL, 'lucrez in domeniul cadastrului', NULL, '0749268760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '6c79f92eefaba27f5bc05aad62ce2fa5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(177, 'Munteanu', 'Petre', 'munteanupetre19@gmail.com', NULL, 'Analist', NULL, '0733938894', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '94c8a232df102f7b97c75c5bc6af9b95', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(178, 'Niculae', 'Cosmin', 'n.cosmin05@gmail.com', NULL, 'Software Tester', NULL, '0721338903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4ef86a552f7e7f1796c4a7309fa1a706', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(179, 'Neacsa', 'George', 'neacsa.george@yahoo.com', NULL, 'Inginer Energetician', NULL, '0748147265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0d7f3e42edd60d35595f065b7b3b84f7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(180, 'Nicoara', 'Dragos', 'nicoaraionutdragos@gmail.com', NULL, 'Analist', NULL, '0766674693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd28839111b20b6179d260be3fdd5c214', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(181, 'Petru', 'Nicoleta', 'nycoleta.petru@gmail.com', NULL, 'Data Analyst ', NULL, '0728085030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '33108886715f0091eb5ee40d71bd4017', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(182, 'Adamescu', 'Octav George', 'o.g.adamescu@gmail.com', NULL, '-', NULL, '0749114957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '321c8f1425859a27ad061d4a3dac13d1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(183, 'Cismaseanu', 'Oana', 'oana.cismaseanu@mail.com', NULL, 'economist', NULL, '0722593977', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '366c4162f51ffded894536ec7955cc7b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(184, 'Enache', 'Oana Alexandra', 'oana.enache13@gmail.com', NULL, 'Credit Administration', NULL, '0724355723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '5e4bca798a3d5bc256dca9da26bf3738', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(185, 'Pintilie', 'Oana', 'oanapintilie17@gmail.com', NULL, 'Recruiter', NULL, '0743492862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c416abef8c8224fd89f042c1331ba6d3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(186, 'Zamfir', 'Oana', 'oanazamfir@gmail.com', NULL, 'Software Tester', NULL, '0724749036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'cd3280da017248da4bc2707126e35e83', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(187, 'Mocanu', 'Octavian Aurelian', 'octavian2092@gmail.com', NULL, 'Tehnician Fulfilare', NULL, '0765766919', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c4e1c11e91d8550efe58bdfe117466db', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(188, 'Palcau', 'Maria', 'palcau_maria@yahoo.com', NULL, 'Analist servicii clienti', NULL, '0757063651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'e52b599351516fc22d9107fdc0814bf6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `last_name`, `first_name`, `email`, `date_of_birth`, `job_title`, `company`, `phone`, `education`, `english`, `other_language`, `ms_office`, `web`, `photo`, `cnp`, `address`, `city`, `county`, `registration_date`, `password`, `confirmation_code`, `reset_code`, `activity`, `reset`, `is_active`, `notifications`, `promotions`, `newsletter`, `user_id`, `created_at`, `updated_at`) VALUES
(189, 'Anghel', 'Maria Diana', 'pantadiana@gmail.com', NULL, 'Profesor', NULL, '0766358893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '666fbff3b137617a0b1ed96b8ca692c5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(190, 'Parsolea', 'Alexandru', 'parsolea_alex@yahoo.com', NULL, 'QA Tester ', NULL, '0731179982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '56d40d714470ff5ebddac3af53c9c712', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(191, 'Predescu', 'Marius', 'pmariuspredescu@gmail.com', NULL, 'QA Tester', NULL, '0721281911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '2e909076e4ecb008800b63e34bb52641', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(192, 'Pop', 'Victor', 'pop.v.victor@gmail.com', NULL, 'QA Engineer', NULL, '0745981931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4b51800d8473234234b870f4e19416e0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(193, 'Pântrjel ', 'Petru-Alexandru', 'ppetru.alexandru@gmail.com', NULL, 'Asistent proiect/ functionar economic', NULL, '0726885804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'fa24174170b4cb352d26448c233e7719', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(194, 'Martinas', 'Radu', 'radu.martinas@ymail.com', NULL, 'inginer', NULL, '0724290943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c1aca77ca4ac8705da4be246881a1dea', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(195, 'Sava', 'Radu', 'radu1691@gmail.com', NULL, 'Expert Logistic', NULL, '0721438543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4e2aa37f92f03ffe42ad8be088d2c4ae', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(196, 'MIHAI', 'Tudor', 'radutimohi@yahoo.com', NULL, 'inginer', NULL, '0734433052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c9d4a727ed4a0cfb5301459b1141f5cd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(197, 'Vatamanu', 'Raisa Miruna', 'Raisavm@yahoo.com', NULL, 'Analist coordonator domeniu IT', NULL, '0767896373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'eb0e01f6d2c36482277a3714843e83ff', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(198, 'Buraga', 'Raluca', 'raluca_buraga@yahoo.com', NULL, 'Inginer Proiectant Constructii ', NULL, '0724047140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd3e91813c76deed9cd41cfc823a8b021', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(199, 'Raluca', 'Lungu', 'raluk.lungu@gmail.com', NULL, 'Analist credite', NULL, '0741143860', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '05f2d398d2b43b4507ba656a701f5e03', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(200, 'Râmboi', 'Alexandru ', 'ramboi.alexandru@gmail.com', NULL, 'Game Tester ', NULL, '0756644825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '62f871b2475dc236874d221c98b38437', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(201, 'Cojocaru', 'Maria Ramona', 'ramona.cojocaru@softeh.ro', NULL, 'DevOps Engineer', NULL, '0762543711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '9d851f17b886495f8cd34a18a824a5b3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(202, 'Maxinese ', 'Ramona', 'ramona.maxinese@yahoo.com', NULL, 'Analist bancar', NULL, '0766524945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '503558a9b1303f6de721e64d8830b42e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(203, 'Ciunt', 'Raul', 'raulciunt@yahoo.com', NULL, 'Software Quality Assurance Engineer', NULL, '0753821600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '642dae48dd3eb78fae8a65b7ba69d3f5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(204, 'Corjos', 'Razvan Daniel', 'razvan852@gmail.com', NULL, 'QA Automation Tester', NULL, '0752291024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'f40b87be66d939daaf584954434423ee', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(205, 'ILIE', 'RAZVAN', 'razvancostin.ilie@gmail.com', NULL, 'FUNCTIONAR BANCAR ', NULL, '0746112231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ddb65cd3adce6efc64ccc7ef57f60971', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(206, 'Danaila', 'Razvan-Florin', 'razvanxd66@yahoo.com', NULL, 'Absolvent de liceu', NULL, '0724128500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bbe3053603505969eee3707daa41dd00', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(207, 'Butnariu', 'Codrut-Razvan', 'rebirth90@gmail.com', NULL, 'Software Tester', NULL, '0737052587', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '7f14f894ba6251f375b8a4da959f593c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(208, 'Roua', 'George', 'rouageorge@gmail.com', NULL, 'D.G.P.M.B.', NULL, '0775606958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '0256054a9ca0b7cd04ea843d80a6115e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(209, 'CHESARU', 'ROXANA - NICOLETA', 'rox.chesaru@gmail.com', NULL, 'Team Manager', NULL, '0732260383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '933335cb2f09c452230d4c7f2609170b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(210, 'Mihalcea', 'Roxana', 'roxana.modreanu@softeh.ro', NULL, 'DevOps Engineer', NULL, '0765656639', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '36e38105f6b8eddfa63241d27a17578d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(211, 'Carjan', 'Roxana', 'roxanaliliana.c@gmail.com', NULL, 'economist', NULL, '0766687722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '7f7e61a961252b0c9d6ab54abce0aafe', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(212, 'Rusu', 'Madalina', 'rusumadalinna@yahoo.com', NULL, 'credit analyst', NULL, '0754683925', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'db2963f20c8842486a2a13ed7fe01ed3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(213, 'Simion', 'Ruxandra', 'ruxandra.simion87@gmail.com', NULL, 'Manager de Proiect', NULL, '0728071018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ae17336fac6d38ca25fde265f2fe1766', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(214, 'Serban', 'Roxana- Elena', 'serban.roxana.elena.01@gmail.com', NULL, 'Profesor învatamânt prescolar', NULL, '0729409345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ad7ef504cba134f3869236dd9b98d711', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(215, 'Tunsu', 'Sorin', 'sorin.tunsu@gmail.com', NULL, 'Inginer', NULL, '0730688901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '2faacbb7bfb3757140680062a7fd63d7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(216, 'Stanculet', 'Cosmin Claudiu', 'stanculet.cosmin@gmail.com', NULL, 'inginer electromecanic', NULL, '0767038408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '434116f7f61aa9d5f0f5f17e9b6223c6', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(217, 'Stanica', 'Simona', 'stanicaas95@gmail.com', NULL, 'Testing Specialist', NULL, '0732370327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '11a3dc925f6a9218bb9db037ae64fb9f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(218, 'Stefan', 'Craia', 'stefan.else@gmail.com', NULL, 'Freelancer', NULL, '0770715636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bd86921e82dee82f180e17c60f2d0a22', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(219, 'Hacman', 'Stefan', 'stefan.hacman@gmail.com', NULL, 'QA Engineer', NULL, '0755115869', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'ab36f0ac6c1cb4206325d900f09fffde', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(220, 'STROE', 'ADELINA ALEXANDRA', 'stroe.adelina.alexandra@gmail.com', NULL, 'SPECIALIST SERVICII CLIENTI', NULL, '0724580801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '4c9ea5e53fef15dfce4a9848bdbd8e34', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(221, 'meciu ', 'ana', 'suzanapeichea@yahoo.fr', NULL, 'operator suport tehnic', NULL, '0784801335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '499aa9ecb6537ac0b6bfa94156e51ab4', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(222, 'Tifigiu', 'Horatiu Paul', 'tifigiu_hp@yahoo.com', NULL, 'inginer', NULL, '0728040094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '50ebc50d5378c85eb7217a6bacbd6d38', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(223, 'Zaharache', 'Stefan', 'trashlord72@gmail.com', NULL, 'Game Tester', NULL, '0770976351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '3c83568bae82f7f582ec9a6f8bb3f154', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(224, 'Popescu', 'Alexandra', 'trewalex@yahoo.com', NULL, 'manual tester', NULL, '0767545315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '227639138e86c60f915e52661a6ea7a9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(225, 'Tudorache', 'Stefan', 'tudorache.stefan@gmail.com', '1986-03-23', 'Game Tester', 'Electronic Arts', '0753601824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'str. Teleajenului, nr.7', 'Craiova', 'Dolj', '2020-02-13 16:26:47', 'd2d0a2fd76d17e7aa59d3201c9c54811', NULL, NULL, '2020-11-01 12:50:32', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(226, 'Tudor', 'Alina Nicoleta ', 'tudor_alina_nicoleta@yahoo.com', NULL, 'Economist', NULL, '0731669713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '22544653de42766d6e92008e86df0884', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(227, 'Tanasescu', 'Anca', 'tzugurela@gmail.com', NULL, 'Economist', NULL, '0726519774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'd8dd0768111014eb97433c8b0fcdfd5b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(228, 'Ungureanu', 'Bogdan', 'ungureanubogdan92@gmail.com', NULL, 'inginer ofertare', NULL, '0733217539', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '398be8d1cf4a21f7823cddc756d5d2b7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(229, 'Vaida', 'Mihai', 'vaidamihai@gmail.com', NULL, 'Business Analyst', NULL, '0726290527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(230, 'Pirvu', 'Vasilica', 'vasilica.nutu@gmail.com', NULL, 'Operator date', NULL, '0746637302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '5e9d527a9283aa5420c4a4084b1240fb', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(231, 'Agheorghicesei', 'Madalina', 'vieriu.madalina@gmail.com', NULL, 'QA manual', NULL, '0742099795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'cf62053e7f3e22f863d18d5a710f2a0e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(232, 'Petrescu', 'Ioan Viorel', 'viorelpetrescu@yahoo.com', NULL, 'Agent Customer Service Desk', NULL, '0723195144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1af02664f4e743b0ed7d8ff1f3097634', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(233, 'Luca', 'Simona', 'viviannesim.sl@gmail.com', NULL, 'Tester', NULL, '0773895744', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '8f90f3608e7e93fa92b2b42be00875bd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(234, 'Voica', 'Maria-Gabriela ', 'Voica.maria@gmail.com', NULL, 'Coordonator emisie', NULL, '0747252507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'a8699395c1fdb2fb631b052ebaa44b51', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(235, 'Voinea', 'Florin', 'voin3a_florin@yahoo.com', NULL, 'Vanzari', NULL, '0741218552', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '666ef890976e8a03eaedbca24295505a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(236, 'Sabo', 'Viorel', 'vsabo@cbn.ro', NULL, 'Software QA Engineer', NULL, '0722508555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '86b00e5150416d69dd03baeb5ea447e2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(237, 'Muntean', 'Ionela', 'yonela_tennis@yahoo.com', NULL, 'Antrenor tenis de camp', NULL, '0743211155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'bcd3827d6d510dcab0152c3e0550683f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(238, 'Tudose ', 'Daniela-Iulia', 'ziulik@yahoo.co.uk', NULL, 'agent turism', NULL, '0762357106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', 'c3e2e9ff05fe42affc333fcc60056065', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(239, 'Zlotea', 'Adrian Petrisor', 'zlotea.adriann@gmail.com', NULL, 'inginer', NULL, '0766246782', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '5f25d244e6cd44ce9c39b36898675de7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(240, 'Zlotea', 'Oana', 'zlotea.oana@yahoo.com', NULL, 'Analist', NULL, '0724901921', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-13 16:26:47', '1d757d1490ef514c9ea59fa8ea7bc8f4', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(241, 'ROSU', 'ADELUTA', 'adelina.rosu@ymail.com', NULL, NULL, NULL, '0768427803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'f6a8a3878851803f7597d29b239c7a11', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(242, 'Savin', 'Adrian-Florin ', 'adrian-florin.savin@outlook.com', NULL, NULL, NULL, '0754395842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '094f478317958d14bc54d9ad42164f16', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(243, 'Pirvu', 'Adriana', 'adriana.ledezeu@yahoo.com', NULL, NULL, NULL, '0765634244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b46a4e295b2d3caa1b5f8a16d9127de2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(244, 'Popescu', 'Adriana', 'adrianaapopescuu@gmail.com', NULL, NULL, NULL, '0728425121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '280b93091446b161bb706881ed532663', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(245, 'Oprea', 'Dragos Adrian', 'adrianoprea1986@yahoo.com', NULL, NULL, NULL, '0745751757', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'dc6d21306a491b3bfb0abe3fca5fbe73', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(246, 'Radu ', 'Alexandra', 'alexandra.radu4595@gmail.com', NULL, NULL, NULL, '0735447949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'f6866a8ef267ba6414dcc6b5282852a0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(247, 'Secheli', 'Alexandru', 'alexandru.secheli@gmail.com', NULL, NULL, NULL, '0721388790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'bc22ecef2788fe5f68dfc981a444bcca', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(248, 'Cazan', 'Alexandra', 'alexutza.1993@yahoo.com', NULL, NULL, NULL, '0773372175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '3ba5db15d3a1584aa9332f5e14c01c14', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(249, 'Alexandra', 'Aldea', 'alexxandra.aldea@gmail.com', NULL, NULL, NULL, '0767343851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '2fbd326dba990d9c3c987db9d82ef0cd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(250, 'Stanciu', 'Alis Alexandra', 'alis.stanciu@gmail.com', NULL, NULL, NULL, '0726138031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b93870384a5de73884693bb155089b94', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(251, 'Marinescu', 'Andreea', 'Amarinescu109@gmail.com', NULL, NULL, NULL, '0759083666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'a2254dfc90e2cf6362fcecb4c91f9b6b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(252, 'Amironesei', 'Ancuta', 'amironeseianka@yahoo.com', NULL, NULL, NULL, '0757098015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'f593bb48117da5fc14ad9edff7dd7cb0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(253, 'Pohrib', 'Marina ', 'ampohrib@gmail.com', NULL, NULL, NULL, '0751226506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '920f984de01829ce9909c28da3b5952c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(254, 'Mitroi', 'Ana-Maria', 'ana.maria0201@yahoo.com', NULL, NULL, NULL, '0763246689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'ca58cd97163d37b21f18285cc8ef7d4c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(255, 'Creasta ', 'Ana Maria ', 'anamariacreasta@yahoo.com', NULL, NULL, NULL, '0725792135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'e51e00a5f8e4d7f8a1529d9191b2def5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(256, 'Amironesei ', 'Ancuta', 'anca06anca@gmail.com', NULL, NULL, NULL, '0757098015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '64acd5215bf47324f095280708555c07', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(257, 'Andrada', 'Tucaevici', 'andrada@academiatestarii.ro', NULL, NULL, NULL, '0745202244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '15ffc94152ac90f71b14ca27a5d0e92e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(258, 'Bica', 'Andrei Florin', 'andrei.bica.florin@gmail.com', NULL, NULL, NULL, '0787892522', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'ef90c4eabbaae577155b3f5c371f3b8c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(259, 'Galusca', 'Andrei', 'andrei.galusca91@gmail.com', NULL, NULL, NULL, '0799352231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '98b910dff5664405778df6bc0387aee2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(260, 'Naita', 'Andrei', 'andrei.naita@yahoo.com', NULL, NULL, NULL, '0723549251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '6fa5805b161c416d14e95d1e26c07494', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(261, 'Petre', 'Ana Maria', 'ane_mari96@yahoo.com', NULL, NULL, NULL, '0746830020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '28c35ed69d1e326c5f8b73767eb216f0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(262, 'Andries', 'Danuta Elen', 'anghel.danuta@yahoo.com', NULL, NULL, NULL, '0741626808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'cb1bcd3fd396e185850d426ca095cdf8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(263, 'Anghel ', 'Florentina Magdalena ', 'anghelmagdalena@yahoo.com', NULL, NULL, NULL, '0746357302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '1545b3775bbfe8fa14f80d39c77f3385', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(264, 'Gindea', 'Aura', 'aura.gindea@gmail.com', NULL, NULL, NULL, '0725439410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '87ccf15fb5ac068da7fa990ce65655bf', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(265, 'Avram', 'Ciprian', 'avramciprian18@yahoo.com', NULL, NULL, NULL, '0729296865', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '5610f7958d4c97e9dc251d1fb57906aa', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(266, 'Bratu', 'Alexandru', 'bratu_alex_cosmin@yahoo.com', NULL, NULL, NULL, '0746090723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '061473aa09da2140d1c0e0aa947fccbb', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(267, 'Butiseaca', 'Giorgiana', 'butiseaca.giorgiana@yahoo.com', NULL, 'Administrative Officer', 'ING Bank', '0744336367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aleea Mozaicului 1', 'Bucuresti', NULL, '2020-04-07 11:17:49', 'bfd5ed6278cd57e32e9ee08cd14bae36', NULL, NULL, '2020-06-15 19:28:21', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(268, 'Dumitru', 'Stefan Catalin', 'cata10101991@yahoo.com', NULL, NULL, NULL, '0728259886', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'c261abf69e8c8a82d0155aa70bb07f48', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(270, 'Rogozea', 'Silviu Catalin', 'catalin.rogozea@gmail.com', NULL, NULL, NULL, '0720448327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'f27cf3054b50731decbe1f1611411507', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(392, 'Varga', 'Mihai', 'mihai.varga@reinified.com', '1992-06-22', '', NULL, '0728776432', '', 'Avansat', '', 'Avansat', 'Mediu', NULL, NULL, 'Str. Drumul Gura Fagetului nr 132-135', 'Bucuresti', 'Sector 3', '2020-06-11 13:38:47', '3176f6edc2ba3061b2efc5359bd069c9', NULL, NULL, '2020-06-11 16:39:32', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(273, 'Constantin', 'Mihai Alin', 'constantin.mihai.alin@gmail.com', NULL, NULL, NULL, '0720516910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'ed64da175aafbbd36b265e9ee480e011', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(274, 'Nastase', 'Corina', 'corina.nastase2014@gmail.com', NULL, NULL, NULL, '0742983736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '73cc690fd57a2ab79c4882a8d774a560', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(275, 'Nicolae', 'Elena Cristina', 'crissa822003@yahoo.com', NULL, NULL, NULL, '0745123410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b0b2f409985ea1daf76bcae88d989e6d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(276, 'birzan', 'ana', 'cristina.m.birzan@gmail.com', NULL, NULL, NULL, '0799777854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '3fcad15fa5e54fddf1dd277f6c1ee8de', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(277, 'Caciulan', 'Dana Sorina', 'danasorina2001@gmail.com', NULL, NULL, NULL, '0761739790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'c7f5b346d6523a756d564e8abd073f8f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(278, 'IRIS', 'Daniel Adrian', 'daniel.iris@siveco.ro', NULL, NULL, NULL, '0731707594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'ce71924fcfbdaca38c0a1b6fbfcfa153', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(279, 'Petrea', 'Daniela', 'danielapetreav@gmail.com', NULL, NULL, NULL, '0729902966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '1f2307059179a2c743db12deb42cf62d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(280, 'bebe', 'bebe', 'dany_leonard@gmail.com', NULL, NULL, NULL, '0763575781', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '06d6ed37c67294eff5f56a9f6d1a6ddd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(281, 'Vlad ', 'Diana Alexandra', 'dianaalexandravlad@gmail.com', NULL, NULL, NULL, '0724919847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '7a267f5d7875b43cb3fe3e3e323994ef', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(282, 'Davidoglu', 'Andrei', 'diandrei@gmail.com', NULL, NULL, NULL, '0722506787', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b63ade3aa77347f8d0af144d49e84491', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(283, ' BIRHALA', 'DORU', 'doru.birhala@gmail.com', NULL, NULL, NULL, '0730044226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'eed22210a3f67f662c2824cb50db7879', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(284, 'Dragomir', 'Alexandra ', 'dragomiralexandramaria@gmail.com', NULL, NULL, NULL, '0784125628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '21d85890b882f8856d852f0aeee45aab', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(285, 'Dumitrescu', 'Laura', 'dumitrescu.lauramaria@yahoo.com', NULL, NULL, NULL, '0734697797', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'e3d2e74a170b1bce95dbb25e8a7bfa9e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(286, 'Ivascu', 'Elena', 'edda.ivascu@yahoo.com', NULL, NULL, NULL, '0735673435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '29bd80db5efdcfdad7e1ad6d3277504b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(287, 'fierbinteanu', 'adrian ', 'fierbinteanu.adrian@gmail.com', NULL, NULL, NULL, '0761545201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '9e0e0c4c3b28ec5a797822f15e19ac3f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(288, 'adam', 'flavius', 'flavius_adam@yahoo.com', NULL, NULL, NULL, '0757118892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'db1cdd3f6556753e7adc7c7140727a2b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(289, 'Bla', 'Bla', 'georgy22@gmail.com', NULL, NULL, NULL, '0745000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'fc892234269409e8c9b350da4f323268', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(290, 'Raveanu', 'Ioana Alexandra', 'ioana.raveanu@outlook.com', NULL, NULL, NULL, '0725527738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '28699b19bd911329149b0c3f7d377ff9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(291, 'Mihai', 'Ionela', 'ionela_mihai03@yahoo.com', NULL, NULL, NULL, '0746348848', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b675f038264d2bf4bd2946785cd7b689', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(292, 'Nicolescu', 'Irina', 'irina.nicolescu17@yahoo.com', NULL, NULL, NULL, '0736421594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '93607fc04b4d41cc931540ec01963c94', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(293, 'Ghinea', 'Iuliana', 'iulianaghinea07@gmail.com', NULL, NULL, NULL, '0767260485', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '206e4fe18e55c7f736dcc8b76034068b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(294, 'Carpovici', 'Victor', 'karino_week@yahoo.com', NULL, NULL, NULL, '0726970831', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b95fc66b98ede08157d6fde9ce8c6785', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(295, 'DUMITRU', 'Florinel Leonard', 'leonard.dumitru@yahoo.com', NULL, NULL, NULL, '0752991133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b10a27797b7b9cad6548cf7061daf2f5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(296, 'Bivol', 'Raluca', 'lrb_80@yahoo.com', NULL, NULL, NULL, '0742534400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'a4727063e53aa4b58da4de6e91520a7b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(297, 'Manciu', 'Claudia Mihaela', 'manciuclaudia@yahoo.com', NULL, NULL, NULL, '0762639020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '728df351a589fc33fd18d7c3910ac7ef', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(371, 'Enache', 'Iulia', 'iuliaenache78@gmail.com', '1996-11-09', 'IT Recruiter', '', '0730956279', 'Student Master', 'Mediu', '', 'Mediu', 'Incepător', NULL, NULL, 'Str. Cupolei 2, Bl. 105, Sc. B, Ap. 42', 'Bucuresti', 'Sector 6', '2020-05-15 10:16:32', 'c38e30fd71ec9ac91a116c1d14ed6d65', NULL, NULL, '2020-05-25 16:27:50', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(299, 'Bucur', 'Marian', 'marianbucur88@gmail.com', NULL, NULL, NULL, '0745368591', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'bfc38953d4216852cc2370fb15b97149', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(300, 'Moldovan', 'Marius Ioan', 'marius_mako@yahoo.com', NULL, NULL, NULL, '0759115763', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'ee513325437f5179cdbc9e8b5797966e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(301, 'Matei', 'Adina', 'matei.adina.iuliana@gmail.com', NULL, NULL, NULL, '0762675877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '08b6501c4e64c8f71c51592d561fb391', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(302, 'Matei', 'Marcel', 'matei.marcelino@gmail.com', NULL, NULL, NULL, '0769634237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '50e1f3926e23d818d35c62f07dee353b', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(303, 'stanciu', 'mihai adrian', 'mihai_adrian_stanciu@yahoo.com', NULL, NULL, NULL, '0724820266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b26820e82d8fd9a5dd15e7f64efb6d5d', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(304, 'IOFCIU', 'MIRABELA', 'mirabela.iofciu@gmail.com', NULL, NULL, NULL, '0785379330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'daa5aecb3b90f2c1de7b51114ec40b86', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(305, 'Mogosiu', 'Mircea', 'mircea.mogosiu@gmail.com', NULL, NULL, NULL, '0740695259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'ecfd6d3c0d9062e5d0e9b6305c7bb6dd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(306, 'Stroe', 'Mirela', 'mirela-florentina.stroe@db.com', NULL, NULL, NULL, '0761863804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '9523f669d4372c4cdb962fee97a6232f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(307, 'Frangulea', 'Mirela', 'mirelafrangulea@yahoo.com', NULL, NULL, NULL, '0722928137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'df2ea3169f78cb67c77cfb7dd0861733', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(308, 'Mitru', 'Ana Maria Isabela', 'mitru.anamaria@yahoo.com', NULL, NULL, NULL, '0769959316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '9886fd0747de6c2cb9fa897e599015ca', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(309, 'Neacsu', 'Melania', 'neacsumelania@gmail.com', NULL, NULL, NULL, '0723150406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '0c9132b2f856cac2e8bf37d76a4e7063', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(310, 'STANCU', 'NICOLAE', 'nicolae.stancu@db.com', NULL, NULL, NULL, '0763665236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '0e6472604510bb31b07b36c2d7c30f39', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(311, 'Nicula', 'Florentina', 'niculaflorentina@ymail.com', NULL, NULL, NULL, '0724094170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '2fa8498fe6a9efe5d3ce07dd98aa0a40', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(312, 'Niculita', 'Crsitian', 'niculita.cristi@gmail.com', NULL, NULL, NULL, '0745863179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '5347b48362f9346ab31a4199f8e4d9ab', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(313, 'Pauna', 'Oana', 'oana_pauna88@yahoo.com', NULL, NULL, NULL, '0727246750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '402d2982a260d4e9f07c5e54fb4e1f84', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(314, 'dima', 'george', 'orita.florin@yahoo.com', NULL, NULL, NULL, '0235652124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '57767e7892a05e93f268bf69b880cc67', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(315, 'Marin', 'Oana', 'pasat.m.oana@gmail.com', NULL, NULL, NULL, '0733742044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '368d373389c86143c3acd0b278989b1a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(316, 'Preda', 'Anna Maria', 'preda.anna.m@gmail.com', NULL, NULL, NULL, '0722396485', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'e64ddd266e68bb9a07e73565765ee469', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(317, 'Marin', 'Radu', 'radu.marin85@gmail.com', NULL, NULL, NULL, '0763809645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'f71987cc1aa49e37c7629e4a958e0bd7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(318, 'Galchin', 'Raluca', 'ralucagalchin@gmail.com', NULL, NULL, NULL, '0743522535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '795e1123bd390a2869f7d35082035583', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(319, 'Rauta', 'Diana', 'rauta.diana@yahoo.ro', NULL, NULL, NULL, '0744446926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'e3a2ef5224f2ee18a46deba6c6d112be', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(320, 'OLARU', 'RAZVAN', 'razvanolaru@yahoo.com', NULL, NULL, NULL, '0721481275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '61d0dadb38c4bcc0566d4bfbfd099ac7', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(391, 'Stancu', 'Valentina', 'stancu343@gmail.com', '1993-12-03', 'QA Manager', '', '0728353671', 'Universitatea din Bucuresti, Facultatea de Matematica-Informatica', 'Avansat', 'Nu', 'Mediu', 'Avansat', NULL, NULL, 'Strada Biruintei 49', 'Popesti-Leordeni', 'Ilfov', '2020-06-11 10:00:12', '22fba2aee396249b94f0e73c905489ca', NULL, NULL, '2020-06-22 10:37:38', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(322, 'Fratila', 'Romeo', 'romeofratila74@yahoo.fr', NULL, NULL, NULL, '0771535610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'e3e5c377b83012f71d53011632a041e3', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(323, 'Chiriac', 'Roxana', 'Roxanachiriac05@gmail.com', NULL, NULL, NULL, '0726315073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '01f82c3c13b07d5dc1309c4b569dabf9', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(324, 'Anghel', 'Roxana', 'roxxana.anghel@gmail.com', NULL, NULL, NULL, '0725635159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '01f30ee37fddfe9713cac89709850a20', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(325, 'Pastia', 'Ruxandra', 'ruxandra.baran@outlook.com', NULL, NULL, NULL, '0722566918', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'c4dc82fce24b9d42bf367153117f403a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(326, 'Sarbu', 'Georgiana', 'sarbu.georgiana1988@gmail.com', NULL, NULL, NULL, '0724827178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '728da927083a309f197b082d9b020120', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(327, 'Selaru', 'Simona Valentina', 'simona.selaru@yahoo.com', NULL, NULL, NULL, '0729435472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'dafc2ac82db458e18b35bd8a5351475c', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(328, 'Andrei', 'Sorin Adrian', 'sorinadrian.andrei@yahoo.com', NULL, NULL, NULL, '0726059792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '1580e499d819cd3cef4a4692ad0b6435', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(329, 'Alexe', 'Mihai Sorin', 'sorinalexe12@gmail.com', NULL, NULL, NULL, '0767206343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'c3fa1c56c1b670853c5d7ece497985e5', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(330, 'Badita', 'Stefan', 'stefbadita@gmail.com', NULL, NULL, NULL, '0722505589', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '5e86a3d32369ef43613b81807ab5ea0a', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(331, 'Tatu', 'Alexandra', 'tatu.alexandra91@gmail.com', NULL, NULL, NULL, '0766573537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'b1016750b5e4588996eeac85ef4af4cc', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(332, 'TEODORA', 'OLTEAN', 'teodoraoltean92@yahoo.com', NULL, NULL, NULL, '0745333082', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'adde9201f1bed98742f641545b1179f0', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(333, 'Silviu', 'Silvan', 'themirceavalcu@gmail.com', NULL, NULL, NULL, '0744476363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '43d5f18276e5607e1b30c08f3c818ae4', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(334, 'Tica', 'Eugen Gabriel', 'ticaeugengabriel@gmail.com', NULL, NULL, NULL, '0773722590', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'a29b23bda2ead0bd5be73ab8d451b32f', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(335, 'Trepca', 'Adrian', 'trepca_adrian@yahoo.com', NULL, NULL, NULL, '0743861580', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '22a0a39da28b3fecfc3f52f1806e7b99', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(336, 'david', 'tudor', 'tudor.david@ing.ro', NULL, NULL, NULL, '0747060669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', '78cdbf83ed3aa58790d812691b671e72', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(337, 'Rodica', 'Ciobanu', 'unspe@ymail.com', NULL, NULL, NULL, '0771529281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-07 11:17:49', 'f0ba1074add4b5570d5a40a635cb6420', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(339, 'Stoica', 'Marius', 'stoicamarius.mail@gmail.com', '1979-10-11', 'Web Designer', NULL, '0731568199', 'Facultate', 'Avansat', '', 'Avansat', 'Avansat', NULL, NULL, 'Str. Sibiu nr. 12, Bl. Z32, Ap. 41, Sector 6', 'Bucuresti', 'Bucuresti', '2020-04-27 08:29:28', '55deb25221afd878ebc3c6a7e13fbd98', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(341, 'Florin', 'Manolovici', 'manolescuflorinandrei@gmail.com', '1983-04-27', 'nu', NULL, '+40726215388', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'Calea Grivitei, nr 206, bl K, sc D, ap 23', 'Bucharest', 'Bucuresti', '2020-04-27 13:35:12', '4eefed873d7f9dac7e0498786a1d26cd', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(370, 'Suican', 'Alin', 'alin.suican@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-12 12:11:01', 'eeecd1e65104366ba85751d1fb4443cf', 'TmkaHTBvxYwo', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(344, 'Tudor ', 'Emanuel ', 'emmanuel.tudor@gmail.com', '1983-05-10', '', NULL, '0740530115', 'Universitatea din București, Facultatea de Litere ', 'Mediu', '', 'Mediu', 'Incepător', NULL, NULL, 'Str Tudorilor nr 329 ', 'Sat:Lăzărești ; com: Schitu- Golești ', 'Argeș ', '2020-04-29 12:56:01', '3f2b5fac35d6c6ae70505c6f784b982e', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(369, 'test', 'test', 'test5@gmail.com', '1979-01-01', '', NULL, '0729005689', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'kjdsnksdng;lkv', 'sdgdfgfd', 'dfgdgfd', '2020-05-10 13:34:48', 'eb4d34ba69a45e1085a8f9af5602c37e', 'wjvw5BikfJLS', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(368, 'test', 'test', 'test4@gmail.com', '1979-01-01', '', NULL, '0729005689', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'tetststssafd', 'testete', 'etetsts', '2020-05-10 13:31:22', '403689a9711f35cf9e344d9014e10bab', 's4bCxaA8aQe0', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(348, 'Stan', 'George', 'MrCrosy@gmail.com', '1986-06-12', 'Tester', 'Academia Testarii', '0734540913', 'Politehnica', 'Mediu', 'Franceza Incepator', 'Incepător', 'Avansat', NULL, NULL, 'Str. Patriotilor, Nr. 1, Bl. PM16, Sc. B, Et. 5, Ap. 60', 'Bucuresti', 'Bucuresti', '2020-05-05 12:05:23', 'be232386250c65d2ea9436d47ebe6f57', NULL, NULL, '2020-05-07 15:01:54', NULL, 1, 1, 0, 0, NULL, NULL, NULL),
(367, 'Stefan', 'Claudiu Daniel', 'claudiudanielstefan02@gmail.com', NULL, 'QA Engineer', 'Raiffeisen', '0746666093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Strada Principele Ferdinand, 81', 'Bucuresti', NULL, '2020-05-09 10:39:26', '53dd2efe7915086bb9d062726133c2f2', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(366, 'Balanescu', 'Remus', 'remusxbalanescu@gmail.com', NULL, NULL, NULL, '0727922110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 10:38:52', '79aae531757a16722805b1c56317cdc8', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(365, 'Morariu', 'Catalin', 'catalin.morariu@metrosystems.net', NULL, NULL, NULL, '0747771495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 10:38:08', '04fbf7f8801ff0884bb6b3b2f7f31694', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(360, 'Felicia', 'Percec', 'feliciapercec88@gmail.com', NULL, NULL, NULL, '0735551456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 10:33:48', '42b5197bb0d0f7b58a4979486f0ef171', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(361, 'Bejan', 'Cristina', 'cristina.oana.bejan@gmail.com', NULL, NULL, NULL, '0762637688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 10:35:10', '121853c7e369db4cca6db43f7466fb10', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(362, 'Aceleanu', 'Maria-Claudia', 'claudia.aceleanu@gmail.com', NULL, NULL, NULL, '0727703106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 10:36:08', '60b70c9e1b7db3f75d15373d715e11fb', NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(364, 'Dinca', 'Diana Alexandra', 'diana.dinca05@yahoo.com', NULL, NULL, NULL, '0760397005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 10:37:26', 'b5aa0ce07197393d1ff0d8c11b00c9d0', NULL, '08RQDVgFyuNY', NULL, '2020-06-08 11:01:49', 1, 1, 1, 1, NULL, NULL, NULL),
(372, 'Filip', 'Radu', 'radu_bfilip@yahoo.com', '1980-07-14', 'Designer interior', '', '0726225419', 'Snspa', 'Avansat', 'Franceza', 'Mediu', 'Mediu', NULL, NULL, 'Ion Mihalache 126', 'Bucuresti', 'Bucuresti', '2020-05-15 14:24:29', '2769c72fdf363d8341ef8008b4188f5e', NULL, NULL, '2020-05-15 17:25:29', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(373, 'Diana', 'Teut', 'diana.teut@yahoo.com', '1989-06-13', 'Farmacist', '', '0762627057', 'Facultate', 'Mediu', '', 'Incepător', 'Incepător', NULL, NULL, '51, Croxley Road', 'London', 'London', '2020-05-18 12:48:07', '2137b1c88ea409bb2014e695c5c31350', NULL, NULL, '2020-05-23 19:19:12', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(374, 'BOTICA', 'RALUCA', 'raluca.botica@gmail.com', '1985-05-07', 'Trainer aplicatii ERP', NULL, '0766728296', 'Univ UPB', 'Avansat', 'Spaniola', 'Avansat', 'Avansat', NULL, NULL, 'Calea Bucuresti157D', 'Bacu, com. Joita', 'Giurgiu', '2020-05-18 13:45:44', 'd2071656693b38a42a210ec8451fd9c0', '8WvJ1J9XXT4v', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(375, 'test', 'test', 'test@gmail.com', '1979-01-01', '', NULL, '0729005689', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'testdskjdfgkjdfhg', 'fgdgflkjh', 'dsgkjhgf', '2020-05-22 09:47:55', 'a7e81c3ef88090845a1ac79c41d13f9b', '1Q3gqtmpJHFw', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(376, 'goal', 'goal', 'goal@gmail.com', '1979-01-01', '', NULL, '0729005689', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'dfsdfgdfgfdfgh', 'hgfhgfhgfhg', 'fghfghfghgf', '2020-05-24 09:40:32', '44f52a148195c217a8cbf4f01c137165', 'T3PoMIqxtohM', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(377, 'Gigi', 'Ion', 'gigi_rerou@gmail.com', '1992-05-04', '', NULL, '0768909875', '', 'Incepător', 'Nu', 'Incepător', 'Incepător', NULL, NULL, 'Strada vesela, Afumati', 'Afumati', 'Ilfov', '2020-05-24 16:43:12', '1b75cb59e8381736ea70d0b0b6665ea9', 'mwBcUOi7tHld', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(378, 'Colcher', 'Casian', 'casiancolcher@gmail.com', '1988-04-14', 'Software Quality Assurance', '', '0727655428', 'Master', 'Avansat', 'Germana', 'Mediu', 'Mediu', NULL, NULL, 'Str. Aleea Trandafirilor, Bl.10,Ap.12', 'Bocsa', 'Caras-Severin', '2020-05-25 07:35:58', '26eb07ab7dd33302d38a984bac6b24e5', NULL, NULL, '2020-08-10 20:44:51', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(379, 'Coltiadis', 'Alina', 'alina.necula@gmail.com', '1983-05-19', 'Economist', NULL, '0745800814', 'ASE', 'Avansat', '', 'fără', 'fără', NULL, NULL, 'Fantanii 5b', 'Busteni', 'Prahova', '2020-05-26 01:47:02', '56242a96634b0cbc799c0114a4a00060', 'RACibuuIgTOJ', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(380, 'Bedreag', 'Florin', 'florinbcristian@gmail.com', '1982-12-26', 'Tehnician Dentar', NULL, '0741002405', 'Colegiu', 'Mediu', 'Nu', 'Mediu', 'Mediu', NULL, NULL, 'Rudeni 10 ', 'Chitila', 'Ilfov', '2020-05-26 06:45:37', '45bec0ccc2cebe9d25563752c0fba8e1', 'KCkTNmAhOKXa', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(381, 'test', 'tester', 'test@test.test', '2020-05-14', 'om', NULL, '1123456456', 'dadadada', 'Incepător', 'test', 'Incepător', 'Incepător', NULL, NULL, 'testesteteeste', 'test', 'teste', '2020-05-28 06:21:04', 'efd71930b9abe54d7af3079409d6ed04', 'mPjiiADBmkWA', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(382, 'Ungureanu', 'Diana', 'ungueanudiana06@gmail.com', '1983-09-06', 'agent de turism', NULL, '0724219169', 'studii superioare + master', 'Avansat', 'franceza', 'Mediu', 'Mediu', NULL, NULL, 'Strada Perlei nr 11, bl. C3, ap 4, parter, Constanta', 'constanta', 'Constanta', '2020-05-28 14:16:47', '25dbca7352489e2e8230ddacae463ec5', 'e3UK59w4Dkoa', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(383, 'Ungureanu', 'Diana', 'ungureanudiana06@gmail.com', '1983-09-06', 'agent turism', '', '0724219169', 'facultate + master', 'Avansat', 'franceza', 'Avansat', 'Avansat', NULL, NULL, 'Strada Perlei nr 11, bl. C3, ap 4, parter, Constanta', 'constanta', 'Constanta', '2020-05-28 14:49:47', '6f02451c3ef7dd78abfac92d7837f9b4', NULL, NULL, '2020-07-22 12:29:28', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(384, 'test', 'test', 'stan_george@ymail.com', '2000-11-11', '', NULL, '0734540913', 'asdsadas', 'fără', '', 'fără', 'fără', NULL, NULL, 'cevacevaceva', 'ceva', 'ceva', '2020-05-29 09:55:40', '8f391a501080cb350907b7573860ba1f', 'HyPRs3IBf3qo', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(385, 'test', 'tester', 'test@test.ro', '2000-08-08', 'tester', NULL, '123123123123', 'tester', 'Avansat', 'teste', 'Mediu', 'Mediu', NULL, NULL, 'acasaacasa', 'acasa', 'teste', '2020-06-03 14:13:30', 'c48b8a1d7d50aaff2350193844af32e6', 'a50fvHg2GP4W', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(386, 'stoica', 'daniela', 'danuta.stoica94@yahoo.com', '1994-06-23', 'senior analyst', 'WNS Global Romania', '0761583002', 'Universitatea Politehnica Bucuresti', 'Avansat', 'franceza, spaniola', 'Mediu', 'Incepător', NULL, NULL, 'Dogarilor  nr 19A', 'Urziceni', 'ialomita', '2020-06-03 15:53:12', '0eadeddb85785d6c97850d4504f74505', NULL, NULL, '2020-06-12 20:58:01', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(387, 'Hura', 'Irina-Stefania', 'stefyapostol@yahoo.com', '1982-12-27', 'Economist', NULL, '0724560216', 'Postuniversitare', 'Mediu', 'Franceza', 'Mediu', 'Mediu', NULL, NULL, 'Str. Alexandru Obregia, nr.21', 'Sector 4', 'Bucuresti', '2020-06-04 04:14:23', 'cd4a22a47ffe4be5d0ec06574398996e', NULL, NULL, '2020-06-14 12:24:17', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(388, 'Crisan', 'Alexandru-Cristinel', 'alexwebdeveloper01@gmail.com', '1994-04-01', '', '', '0730701506', '', 'Avansat', 'Italiana', 'Avansat', 'Avansat', NULL, NULL, 'Str. Mestecanis nr.2, ap.2', 'Brasov', 'Brasov', '2020-06-04 21:47:51', '8e0efdb6c94181f4c26b90a1e4581310', NULL, NULL, '2020-06-17 15:52:14', NULL, 1, 1, 1, 1, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `last_name`, `first_name`, `email`, `date_of_birth`, `job_title`, `company`, `phone`, `education`, `english`, `other_language`, `ms_office`, `web`, `photo`, `cnp`, `address`, `city`, `county`, `registration_date`, `password`, `confirmation_code`, `reset_code`, `activity`, `reset`, `is_active`, `notifications`, `promotions`, `newsletter`, `user_id`, `created_at`, `updated_at`) VALUES
(389, 'Radu', 'Andreea', 'radu.andreea@rocketmail.com', NULL, 'Tester manual', '', '0744669927', 'Administratie publica - Politehnica Timisoara', 'Mediu', '', 'Incepător', 'Incepător', NULL, NULL, 'Strada Aida, Nr. 7, Ap. 14', 'Timisoara', 'Timis', '2020-06-05 10:15:48', 'fd4a2e0c09f0dc9c26956b82f2654c5c', NULL, NULL, '2020-09-03 21:08:47', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(390, 'Bahaciu', 'Doru Emanuel', 'bahaciud@gmail.com', '1981-04-24', 'Curier', '', '0740978668', 'Facultate', 'Mediu', '', 'Incepător', 'fără', NULL, NULL, 'Șos Chitilei 333-335', 'Bucharest', 'Sectorul 1', '2020-06-09 14:23:13', '0eec2b70656fb770fe4105339e54698f', NULL, NULL, '2020-06-13 09:27:33', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(423, 'Paste', 'Marius', 'paste_marius22@yahoo.com', '1983-10-11', 'Inginer', NULL, '0727661818', 'Master', 'Avansat', 'Franceza', 'Mediu', 'Incepător', NULL, NULL, 'Str Prevederii, nr 24, bl G4-G5, sc B, ap 46', 'Bucuresti', 'Bucuresti', '2020-09-28 14:44:11', '413acf7fa87d966eeb4a07746b0ad253', NULL, NULL, '2020-09-28 20:40:40', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(393, 'absopsy', 'absopsyka', 'absopsy@parkll.xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-16 22:29:04', 'eb43cefbb54cf078211d6ee6f62ad752', 'awhypyuybso8', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(394, 'Amza ', 'Andrei Sergiu', 'amza.sergiu@gmail.com', '1988-05-25', 'JUrist', NULL, '0756879224', 'Facultatea de drept', 'Mediu', '', 'Incepător', 'Incepător', NULL, NULL, 'Blvd-ul Ferdinand nr.94', 'constanta', 'Constanta', '2020-06-21 13:38:27', '032e1942c3f42de414da1fb79a2497eb', NULL, NULL, '2020-09-07 18:24:52', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(395, 'Hintiu', 'Diana-Florina', 'dianahintiu@gmail.com', '1996-03-05', 'Java Developer', '1 & 1 Internet Development', '0758905162', 'Licenta CTI - facultatea de Automatica si Calculatoare, UPB', 'Mediu', 'Germana', 'Incepător', 'Mediu', NULL, NULL, 'Strada Borsa 4', 'Bucuresti', 'Bucuresti', '2020-06-22 09:04:54', '1051f20c1d59e5888dbff56ca005d2e2', NULL, NULL, '2020-10-30 14:09:44', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(396, 'Ghitman ', 'Viorica ', 'ghitman1989@gmail.com', '1989-09-10', 'Office manager ', NULL, '0759854885 ', 'Licențiat ', 'Mediu', 'Rusa', 'Mediu', 'Incepător', NULL, NULL, 'Drumul Binelui 15-17 ', 'București ', 'București ', '2020-06-28 07:52:04', '8e886a25a0f0b4f43bd81454afe6a902', NULL, NULL, '2020-08-29 14:00:56', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(397, 'Iaba', 'Iuliana', 'iuliana.iaba@gmail.com', '1983-08-11', 'Economist', NULL, '0723174901', 'Master ', 'Avansat', 'Franceza, Spaniola', 'Avansat', 'fără', NULL, NULL, 'Strada Amurgului, nr 39 O', 'Popesti-Leordeni', 'Ilfov', '2020-07-08 11:19:56', '4b9e2ea63171a27a4370574e43406180', NULL, NULL, '2020-08-29 10:52:56', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(398, 'Rusu', 'Cristian', 'rusucristian.mail@gmail.com', '1977-04-21', '', NULL, '0744473790', 'masterat', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'str. Muncii nr.7 ap.11', 'Targu Mures', 'Mures', '2020-07-15 13:13:28', '89a71a3f6145a0e5419a3d456d5912d0', 'd8ERmauFtUR9', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(399, 'LanceRop', 'LanceRopQU', 'lalitanaboka@yandex.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 16:51:32', 'c838b1c9e44cfed8bad642e1c0b8fd34', 'zt3FZJS7IoSo', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(400, 'OTP', 'Bank', 'otpbank@academiatestarii.ro', '1999-12-12', 'OTPBANK', NULL, '0755.000.482', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'OTPBANK test', 'Bucuresti', 'Bucuresti', '2020-07-27 10:47:37', '659962e56163115c561935ce1a1175c3', 'KCYuBWgRzMZR', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(401, 'Apa Nova', 'Veolia', 'apanova@acadtest.ro', '1999-12-12', '', NULL, '0752313733', '', 'Mediu', '', 'fără', 'fără', NULL, NULL, 'Apa nova123', 'Bucuresti', 'Bucuresti', '2020-07-28 09:59:00', '7bccc5c36cb33ee7ff5b9014de928207', 'QwjgDUG7gWjO', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(402, 'Matache', 'Paul', 'matache.paul@gmail.com', '1982-06-23', 'Project Manager', NULL, '0766243800', 'Academia de Studii Economice', 'Avansat', '', 'Avansat', 'Incepător', NULL, NULL, 'Str. Bucovina nr. 7', 'Bucuresti', 'Bucuresti', '2020-07-28 10:00:41', 'f14a0fccd4fe8b1d343a22a0d1c58c04', NULL, NULL, '2020-07-31 10:18:41', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(403, 'Carstea', 'Oana', 'oana_i_carstea@yahoo.com', '1985-09-24', 'Analist Servicii Client', NULL, '0740564036', 'Master', 'Avansat', '', 'Mediu', 'Mediu', NULL, NULL, 'Al. Fuiorului nr 2, bl Y3B, sc 4, ap 185', 'Bucuresti', 'Bucuresti', '2020-07-28 13:47:42', 'dbb26c9c72176d6d068a712f4ebd295b', '3ORb0K7AbQj5', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(404, 'Vieru', 'Adriana-Claudia', 'vieru.adrianaclaudia@yahoo.com', '1985-12-08', 'QA Tester', 'Co-Factor', '0734971170', 'Liceu ', 'Avansat', '', 'Mediu', 'Mediu', NULL, NULL, 'Soldat Iosif Ion nr 4 bl 7A1 scara 1 ap 3 sector 3', 'Bucuresti', 'Bucuresti', '2020-08-04 14:05:57', '67a902e94e979e95433af9188d7cf123', NULL, NULL, '2020-08-04 17:12:02', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(405, 'Nita', 'Alexandru-Rafael', 'nitarafael@gmail.com', NULL, 'home', NULL, '0723737591', 'Studii Universitare ', 'Avansat', '', 'Avansat', 'Avansat', NULL, NULL, 'Cal. Bucuresti nr. 94', 'Saftica', 'Ilfov', '2020-08-04 19:14:25', '7f276d1babc15fd67ebde5f4179d39f3', 'YcPAlrnl1DZU', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(406, 'Adrian', 'Alexandrescu', 'alexandrescuadrian890@yahoo.com', '1990-07-08', 'Fotograf', NULL, '0745285218', 'Facultate', 'Avansat', '', 'Incepător', 'Incepător', NULL, NULL, 'Cercetătorilor no.6, bl.29, ap.90', 'Bucuresti', 'București ', '2020-08-11 17:11:29', '970e91f3c79012278eba71e7c7d2ab4e', NULL, NULL, '2020-08-11 20:12:34', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(407, 'Zimbila - Secheli', 'Stefania', 'stefania.zimbila@gmail.com', '1989-03-02', 'Sales Manager', NULL, '0734387734', 'Studii Superioare', 'Mediu', 'Spaniola', 'Mediu', 'Incepător', NULL, NULL, 'Bd. Uverturii 89, sc.B, bl. P16, et.5, ap. 51', 'Bucuresti', 'Bucuresti', '2020-08-12 10:53:55', 'c3e585fe1717f0c4e61b107a419b47de', 'jApty1x2Yk7h', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(408, 'Radu', 'Florentin-Adrian', 'florentinradu772@gmail.com', '1988-09-14', '', NULL, '0773336921', 'Absolvent al facultatii de Istorie Universitatea Crestina Dimitrie Cantemir', 'Avansat', '', 'Incepător', 'fără', NULL, NULL, 'Constantin Brancoveanu nr 113 bloc v6 ap 2', 'Bucuresti', 'Sector 4', '2020-08-19 11:44:22', 'f6558b5ae8579c95e9c3136b5e2047c7', NULL, NULL, '2020-08-19 15:36:51', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(409, 'Doroftei', 'Eliza-Maria', 'dorofteielizamaria@gmail.com', '1993-10-03', 'Inginer', NULL, '0742047705', 'Politehnica', 'Mediu', '', 'Avansat', 'Mediu', NULL, NULL, 'Aleea Florin Ciungan 9', 'Bucuresti', 'Bucuresti', '2020-08-19 11:53:23', 'dd3dc1d219c912d28c1db76d9f68fd3c', NULL, NULL, '2020-08-25 11:07:04', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(410, 'Stefan', 'Marcian Valentin', 'marcian.stefan91@gmail.com', '1991-06-04', 'kinetoterapeut', NULL, '0767469338', 'Licență', 'Mediu', 'spaniola', 'Mediu', 'Mediu', NULL, NULL, 'mihai viteazul 13', 'slanic', 'prahova', '2020-08-24 20:10:53', '514e173577518e081cff0a9eeee6cbbf', NULL, NULL, '2020-08-26 12:44:09', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(411, 'CBN', 'x 2', 'cbn@academiatestarii.ro', '1999-11-11', '', NULL, '0734540913', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'CBN cbn cbn', 'cbn cbn', 'cbn cbn', '2020-08-25 09:05:58', '0aa470a38bfa00e9ea5402a3f532c8f9', 'McTq0hVGlD4I', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(412, 'CBN', 'x 1', 'cbn2@acadtest.ro', '1999-11-11', '', NULL, '0734540913', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'cbn cbn cbn', 'cbn cbn', 'cbn ', '2020-08-25 09:06:38', '9c2cc6149fec7cd9d3b342d4da038c5a', 'Ds31A99YGUZM', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(413, 'CBN ', 'x 2', 'cbn3@acadtest.ro', '1999-11-11', '', NULL, '0734540913', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'cbn cbn cbn', 'cbn cbn', 'cbn', '2020-08-25 09:07:17', '8045f23db35de0a8db94fd1f0f767082', 'i7fWxH78k2gJ', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(414, 'Danuta', 'Andreea-Alina', 'andreea.alina91@yahoo.com', '1991-08-28', 'Inginer', NULL, '0724151382', 'Universitatea Tehnica din Cluj-Napoca', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'Bulevardul Banul Manta, Nr. 22, Bloc 29, Ap. 80', 'Bucuresti', 'Bucuresti', '2020-08-26 12:18:08', '3c79285d22317d0fd26dd3780f8c5d97', NULL, NULL, '2020-09-03 11:30:41', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(415, 'Udroiu', 'Alexandra', 'alexandra.udroiu24@gmail.com', '1996-01-24', 'Information Security Analyst', NULL, '0723841262', 'Studii Post-universtitare', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'Solstitiului 2H, AP.14, ET.2', 'Popesti Leordeni', 'Ilfov', '2020-08-27 12:52:06', 'c60ae49464bee9438fbb239c2d1a287d', '8jkJK1y1711Q', NULL, '2020-11-06 20:46:39', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(416, 'Mitroi', 'Mariana Cristina', 'cristinamitroi32@gmail.com', '1981-06-08', 'Farmacist', NULL, '0767457846', 'Studii universitare ', 'Mediu', 'Italiana', 'Incepător', 'Incepător', NULL, NULL, 'Piata Mihai Viteazu Nr 1 Bl 26 C parter, 1', 'Ploiești', 'Prahova', '2020-09-08 16:41:10', 'b0f0ae1bb249d21faa57646e2396898c', NULL, NULL, '2020-09-11 13:43:17', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(417, 'Lungu', 'Raluca Florentina ', 'l.raluka@gmail.com', '1982-09-25', 'Asistent medical de farmacie ', NULL, '0728819403', 'Liceu,Scoala Postliceala', 'Incepător', '', 'Incepător', 'Incepător', NULL, NULL, 'Str Sergent Mateescu nr 5bl 20 sc B ap 37 etj 4', 'Ploiesti ', 'Prahova ', '2020-09-09 12:44:09', '1bbd8ff85d5e552d6e6f9433223b1138', 'Cp7zEJNsCTi9', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(418, 'Adrian', 'Petrut', 'adi.petrut@gmail.com', '1985-09-12', '', NULL, '+32466437038', 'Universitate ', 'Mediu', 'Franceza', 'Incepător', 'Incepător', NULL, NULL, 'Unirii 6/7', 'Petrosani', 'HUNEDOARA ', '2020-09-16 07:57:31', '18b6800dbea60c6be0c219c3ad825113', 'htIn6Ihm6cm8', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(419, 'Dinu', 'Alina', 'alinadinu.ad@gmail.com', '1977-08-26', 'Quality Assurance Engineer', 'Société Générale EBS', '0721788448', 'ISTQB Foundation Level', 'Mediu', 'Franceza ', 'Mediu', 'Mediu', NULL, NULL, 'Viorele nr 4, Bloc 22, Scara A, ap 23, etaj 5, Sector 4', 'Bucuresti', 'Bucuresti', '2020-09-22 09:15:19', '4cba06da1eb2511e30f40a42ac89b2ae', NULL, NULL, '2020-09-24 12:20:45', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(420, 'Vilcu', 'Violeta', 'violeta.grigore1@yahoo.com', '1989-08-01', '', NULL, '0737386853', '', 'Incepător', 'Engleza', 'fără', 'Mediu', NULL, NULL, 'Strada Danubiu, nr 10, bl 6D1', 'Bucureşti ', 'Sector 3', '2020-09-23 06:58:30', 'a762286b0f879efd07a3d5acfddc4b37', NULL, NULL, '2020-09-28 15:00:41', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(421, 'Turlacu', 'Mihai', 'mihai.turlacu@cst.ro', '1986-03-13', 'Analist', NULL, '0725879669', 'Studii Superioare', 'Avansat', 'nu', 'Mediu', 'Mediu', NULL, NULL, 'Bd. Iluliu Maniu nr. 7-11', 'Bucuresti', 'Bucuresti', '2020-09-23 09:20:19', 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, '2020-09-23 12:21:15', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(422, 'Bunea', 'Andrei Octavian', 'buneaandrei@yahoo.com', '2000-11-30', '', NULL, '0732653628', 'Liceu', 'Avansat', 'Franceza', 'fără', 'fără', NULL, NULL, 'Aleea Lunca Siretului Nr 2 ', 'Bucuresti', 'Sector 6', '2020-09-23 19:48:32', '7ea79f746e07d53f7c626528fefe87ca', NULL, NULL, '2020-09-23 22:49:44', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(424, 'Avramescu', 'Simona-Georgiana', 'Simona-Georgiana.Ciucasu@ing.com', '1991-05-16', 'Feature Engineer', '', '0748217494', 'Facultatea de Automatica si Calculatoare', 'Mediu', 'Franceza- Incepator', 'Mediu', 'Mediu', NULL, NULL, 'Strada George Mihai Zamfirescu nr 50, bl 19A, sc A, ap 95, sector 6 , Bucuresti', 'Bucuresti', 'Bucuresti', '2020-10-02 08:01:49', 'c2402e812645c61b9d73fea473a71f6f', NULL, NULL, '2020-11-13 16:26:57', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(425, 'Suican ', 'Alin', 'alin_suican@yahoo.com', '1993-04-14', 'Specialist tehnic distributie', NULL, '0765920149', 'MASTER', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'str.George Calboreanu nr.7, bl.126, sc.2, et.2, ap.64', 'Bucuresti', 'Bucuresti', '2020-10-06 08:25:09', 'eeecd1e65104366ba85751d1fb4443cf', NULL, NULL, '2020-11-04 13:35:20', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(426, 'Gherca ', 'Cristian ', 'cristiangherca@yahoo.com', '1983-03-27', 'Front office manager', NULL, '0726290039', '', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'Str. Hatisului,  nr. 10, bl. H8, ap. 28', 'BUCURESTI', 'Sector 2', '2020-10-06 11:02:06', 'e2f02e1f878eb6996f3b7e93516f6e08', NULL, NULL, '2020-10-07 09:39:44', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(427, 'Dumitru', 'Cristina', 'crss2001c@yahoo.com', '1989-01-14', 'somer', NULL, '0760838850', 'Liceu', 'Mediu', 'italiana,franceza', 'Incepător', 'Incepător', NULL, NULL, 'sos Bucuresti-Targoviste 65', 'Buftea', 'Ilfov', '2020-10-06 13:58:30', '52dda59fcc7328c3ddf1309461549aaa', NULL, NULL, '2020-11-04 09:37:31', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(428, 'Cristina', 'Dumitriu', 'cristina.dumitriu.91@gmail.com', '1991-12-05', 'Front Office', NULL, '0720080640', 'Sociologie si comunicare', 'Mediu', 'Nu', 'Mediu', 'Incepător', NULL, NULL, 'George Calboreanu nr.7, bloc 126, sc 2, et.2, ap.61', 'Bucuresti', 'Sector 6', '2020-10-07 06:54:15', 'a68b70d126931caa776a83ae42cf6539', NULL, NULL, '2020-10-07 23:58:37', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(429, 'Vlad', 'Elena Valentina', 'elenavladvalentina@gmail.com', '1991-09-05', 'Resurse Umane', NULL, '0730308142', 'Liceul', 'Mediu', 'Engleza, Spaniola', 'Mediu', 'Mediu', NULL, NULL, 'elenavladvalentina@gmail.com', '23 August', 'Constanta', '2020-10-07 07:01:32', '5ac0d70c08cd1c2019ec5198bb68a2d2', 'vqtAkEJZz0xE', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(430, 'Popa', 'Alexandra', 'popa.alexandra781@gmail.com', '1989-04-06', 'Intermediar asigurari (broker)', NULL, '0727488477', 'Licenta', 'Mediu', 'Franceza incepator', 'Mediu', 'Mediu', NULL, NULL, 'Str Frumusani nr 14 bl 99 ap 45', 'Bucuresti', 'Bucuresti', '2020-10-10 10:32:50', '57b49aaedf2f2c91a3bda4fb2e82353c', 'bkWp9s1wfS0c', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(431, 'Gavrila ', 'Angela', 'angelagavrila@gmail.com', '1983-06-23', 'Hr', NULL, '0733600067', 'Studii Superioare', 'Avansat', 'Spaniola', 'Avansat', 'fără', NULL, NULL, 'Prelungirea Ghencea, 45', 'Bragadiru', 'Ilfov', '2020-10-13 09:53:30', '709ea3de06f0ce03fcc1fefa0f387097', 'nW0opJchHlm2', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(432, '123', '123', '123@wed.co', '2020-10-16', 'asasa', NULL, 'assasasasa', '', 'fără', 'as', 'Incepător', 'Incepător', NULL, NULL, '1233456789', '123', '232', '2020-10-13 14:46:27', '9eccefaecb5f7319401ece2fc7ba210c', 'pG0Cx0BJqRr7', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(433, 'Tifigiu', 'Paul', 'tifigiu.hp@gmail.com', '1992-06-09', '', NULL, '0728040094', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'Str. Marasesti nr 9', 'Campina', 'Prahova', '2020-10-13 19:36:16', '7b9de6ed6308c75ec76ad401e8b17e8b', 'DnAbnR41Rkol', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(434, 'Andreea Catalina', 'Cristescu', 'andreea.catalina.cristescu@gmail.com', '1993-11-29', 'Analist', NULL, '0760968356', 'Post universitara', 'Avansat', 'Franceza-incepator', 'Avansat', 'Mediu', NULL, NULL, 'Libertatii nr 7, Bloc GA8D, Scara A, Etaj 6, Apartament 26', 'Slatina', 'Olt', '2020-10-14 08:54:51', '7dc95ad4bb55b28fb16f8b6a5ed12b10', 'ejQgb6GPniA5', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(435, 'Calin', 'Ingrid', 'ingrid.calin@digidemat.ro', '2020-10-18', '', NULL, ']\']\']\']\']~`', '', 'fără', '', 'fără', 'fără', NULL, NULL, '1234567833', '+++', '][/', '2020-10-14 10:49:09', NULL, NULL, NULL, '2020-10-14 14:09:17', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(436, 'Macari', 'Adelina', 'macari.adeline@gmail.com', '1991-04-26', 'Asistenta departament', NULL, '0732735523', 'Master in Gestiune si Audit Financiar', 'Mediu', 'Rusa', 'Mediu', 'Mediu', NULL, NULL, 'Str. Grigore C. Moisil, nr.8, bl.9, sc.B, ap. 98', 'Bucuresti, Sector 2', 'Bucuresti', '2020-10-14 12:53:38', 'd8b904ac18b3c67b31a2108a8c7cbb68', NULL, NULL, '2020-11-06 15:10:15', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(437, 'rigsbug', 'rigsbugVQ', 'andrew709@mix-mail.online\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-14 18:36:15', '992167a413bc89cb69d51f7ed6b91de3', 'v16pqg3ZKJ8o', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(438, 'Ionescu', 'Laura', 'lauramonica.ionescu@gmail.com', '1987-05-06', 'IT recruiter', '', '0723835438', 'diploma de master', 'Avansat', 'nu', 'Mediu', 'Mediu', NULL, NULL, 'str Avionului 35', 'Bucuresti', 'sector 1', '2020-10-19 08:17:29', '85d68b990c850fdd81ba85cc8b2eef72', NULL, NULL, '2020-10-20 11:02:41', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(439, 'Buga', 'Loredana Mihaela ', 'neacsuloredana84@gmail.com', '1984-06-08', 'Customer care ', NULL, '0787253725 ', 'Studii universitare ', 'Avansat', '', 'Mediu', 'Incepător', NULL, NULL, 'Strada sperantei nr 24', 'Berceni ', 'Ilfov ', '2020-10-21 08:36:40', 'f1c237e6e7b93c34cb2250ccf9e9a334', 'xuFy3UGxBQKw', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(440, 'Popovici', 'Alexandru', 'alexandru2882@gmail.com', '1982-09-28', 'Designer', NULL, '0728772882', 'Master', 'Avansat', '', 'Mediu', 'Mediu', NULL, NULL, 'Fainari 20', 'Bucuresti', 'Bucuresti', '2020-10-22 16:31:49', '758b72ddd9f8848885c829ca2cdc303c', NULL, NULL, '2020-10-22 19:33:46', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(441, 'Ipate', 'Carmen Maria', 'carmen.ipate1982@gmail.com', '1982-01-21', 'Amazon operator ', NULL, '0735528203', 'Universitate Inginerie mecanica', 'Avansat', 'Franceza, italiana, germana', 'Mediu', 'fără', NULL, NULL, 'Aleea Biruintei nr 7 sc D, ap M1', 'Sibiu', 'Sibiu', '2020-10-31 12:00:24', '0627ffe6b87d643ce1cd8bb88220ac54', '8JRLGzMCgR5x', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(442, 'ramboalind', 'ramboalindFP', 'weleklaushoff@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 16:54:08', '88ef98a6042e47f9a5ef009aacc00460', 'dcMw179YDbXn', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(443, 'Cristea', 'Diana', 'cristeadiana1997@yahoo.com', '1997-05-13', 'Inginer de aviație', NULL, '0768062153', 'Studii de licență', 'Avansat', '', 'Mediu', 'Mediu', NULL, NULL, ' Bd. Iuliu Maniu nr. 69, bl 5P, sc. 2, et 8, ap 77', 'București', 'sector 6', '2020-11-03 09:19:02', 'ded629181b53cc415ee7ab7b44ef1074', NULL, NULL, '2020-11-12 01:45:07', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(444, 'Enache', 'Bogdan', 'enache.bogdan93@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:12:11', 'ea03e760b1001686e8b964eaae218fd5', NULL, NULL, '2020-11-04 12:13:34', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(445, 'Iordache', 'Madalina', 'madalina.necula@ymail.com', '1993-10-13', 'Inginer', NULL, '0730684382', '', 'Avansat', 'Spaniola', 'Avansat', 'Mediu', NULL, NULL, 'Strada Horia, Cloșca și Crișan', 'Arges', 'arges', '2020-11-08 19:31:21', '4e56aa9d9bfb88c09d63bdb38755d9cc', NULL, NULL, '2020-11-09 14:33:43', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(446, 'Constantin', 'Andreea Valentina', 'andreea_dav88@yahoo.com', '1988-06-14', 'Specialist relatii publice', NULL, '0721582735', 'Facultate', 'Mediu', 'Spaniola', 'Incepător', 'Incepător', NULL, NULL, 'Str. Zboina Neagra nr. 7', 'Bucuresti', 'Sector 6', '2020-11-11 10:47:34', 'e10899c3dd357cb795007795f8eea3b2', NULL, NULL, '2020-11-13 10:13:50', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(447, 'Viorel', 'Sabo', 'ceva@academiatestarii.ro', '1986-12-12', '', NULL, '123123123123', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaa', '2020-11-12 11:51:30', 'c3e272c9945977fb373cff6ecc9f9f17', 'Yu6VvD6kZseq', NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(448, 'Marius', 'Baltoi', 'ceva2@academiatestarii.ro', '1986-12-12', '', NULL, '12312321321', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'asdasdasdsada', 'asdasdasdsada', 'asdasdasdsada', '2020-11-12 11:52:08', 'cbb4149e88e48aaea26054e04da66806', 'dgDHYzGzMEhf', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(449, 'Marcarov - Rosca', 'Ioan - Alexandru', 'marcarovalexandru@gmail.com', '2005-08-19', 'Elev', NULL, '0775376100', 'Liceu', 'Mediu', '', 'Mediu', 'fără', NULL, NULL, 'Str. Uioara nr 3, Bl M2, Sc 3, Etj 4, Ap 95', 'Bucuresti', 'Bucuresti', '2020-11-14 14:23:35', 'e4c394a43d57c14cfc873105e3ee024c', 'hsDWyj9015gj', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(450, 'Oancea', 'Cristina ', 'Cristina_poenaru86@yahoo.com', '1986-09-14', 'Somer', NULL, '0734036630', 'Facultatea de Litere și Științe, profil Administrație Publica', 'Avansat', 'Franceza - mediu', 'Mediu', 'Mediu', NULL, NULL, 'Str. Scurtesti nr. 144', 'Stefesti', 'Prahova ', '2020-11-16 07:51:39', '215b417cd12aca4e280e387c57e94c61', '5BsKZtYltWtZ', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(451, 'David', 'Aurelian', 'aureliandavidd@gmail.com', '1997-03-25', 'Electrician', 'General Robotica Manpower SRL', '0769591964', 'Colegiul Economic Mangalia', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'Ion heliade radulescu nr 15, Constanța', 'Mangalia', 'Constanța', '2020-11-16 08:06:37', 'b51b6ca7c05aaf47e0eeb6e589ec53da', NULL, NULL, '2020-11-16 10:09:52', NULL, 1, 1, 1, 0, NULL, NULL, NULL),
(452, 'Cernamoret', 'Catalin', 'blackc27@gmail.com', '1979-10-04', 'Operator Suport Tehnic', NULL, '0766752210', 'Superioare', 'Mediu', '', 'Mediu', 'fără', NULL, NULL, 'Str Pitar Mos 29,,sect 1', 'Bucuresti', 'Bucuresti', '2020-11-16 17:41:01', '1c361f967590221ec3a84dd3f0557414', NULL, NULL, '2020-11-16 19:46:06', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(453, 'Calin', 'Alexandra', 'maildeverificat2@gmail.com', '2020-09-19', '', NULL, '0721796926', '', 'Incepător', '', 'Incepător', 'Incepător', NULL, NULL, 'str pajurei nr.9', 'bucuresti', 'Bucuresti', '2020-11-19 14:09:38', 'a3b003c23a1a2e1415ed5456a344e2ff', NULL, NULL, '2020-11-19 16:12:24', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(454, 'Alexandra', 'Alexandra', 'maildeverificare3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 14:15:51', '2e3dd0e2d859ee25864b8d0594c80449', NULL, NULL, '2020-11-19 16:16:54', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(455, 'Moinea ', 'Maria Diana ', 'moineadiana@gmail.com', '1994-02-19', 'Audioprotezist ', NULL, '0760621039 ', 'Master Imagistica Medicala Avansata ', 'Incepător', '-', 'Incepător', 'Incepător', NULL, NULL, 'Strada drumul taberei 19 bloc 2s14 SC. A AP. 113 SECTOR 6', 'Sector 6', 'București ', '2020-11-20 09:05:20', '695bad98a56233a5d7fbb8a601814819', 'o7PeGc3JYi6z', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(456, 'Kalman', 'Robert', 'roobert.kalman@gmail.com', '1986-09-22', '', NULL, '0722245512', 'Universitatea din Petrosani', 'Mediu', '', 'Mediu', 'Mediu', NULL, NULL, 'Str. Independentei bl. 41, sc. 1, ap. 1', 'Petrosani', 'Hunedoara', '2020-11-20 13:54:00', 'aa7807ee7a05d54daddb62e5ccab8add', NULL, NULL, '2020-11-25 13:08:57', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(457, 'Pipirigeanu', 'Georgiana', 'georgiana.pipirigeanu@gmail.com', '1987-03-09', 'Inginer', NULL, '+40747574819', 'UPB Bucuresti', 'Avansat', '', 'Avansat', 'Avansat', NULL, NULL, 'str. Octav Doicescu, nr.', 'Braila', 'Braila', '2020-11-20 16:30:44', '70ff2f8ce671b43beb5a0677abdf88ed', '9m9gTRghJYwV', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL),
(458, 'Dan', 'asdasd', 'dan.naciu@glovoapp.com', '2019-03-12', '', NULL, '0769373079', '', 'Incepător', '', 'fără', 'fără', NULL, NULL, 'Dunarii 50 l5 Building, 2nd entrance 2nd floor ap 9', 'rosiorii de vede', 'asdasd', '2020-11-24 19:26:18', 'f73e824857813f84fb0709fe93b5586c', 'bUpsKiKPnGj6', NULL, '2020-11-24 21:29:56', NULL, 1, 1, 1, 1, NULL, NULL, NULL),
(459, 'asda', 'sada', 'cevarandomrau@mailinator.com', '1986-12-12', '', NULL, '534543534543543', '', 'fără', '', 'fără', 'fără', NULL, NULL, 'asdasdsadsadsa', 'asdsadasdsadsa', 'dasdadasdsadas', '2020-11-25 14:39:36', 'f82f4c9fbe72fc65558c8d34aed66e83', '9VZW4laZ2AvE', NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcontent`
--

CREATE TABLE `subcontent` (
  `id` int(6) NOT NULL,
  `content_id` int(6) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcontent`
--

INSERT INTO `subcontent` (`id`, `content_id`, `title`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'Cursuri', '<p>Oferim licențiere și sprinjin &icirc;n implimentare pentru cele mai cunoscute tool-uri folosite &icirc;n testarea software - JIRA, SOAP UI, Confluence, Bitbucket.</p>', NULL, NULL, NULL),
(2, 3, 'Workshopuri', '<p>La fel ca esențele tari păstrate &icirc;n sticluțe mici, sunt anumite subiecte din testare care se asimilează corect doar dacă sunt livrate &icirc;n mod concentrat.</p>', NULL, NULL, NULL),
(3, 3, 'Coaching', '<p>Pentru că viaţa bate filmul, &icirc;ți oferim ședinţe 1:1 despre ce te chinuie &icirc;n testarea software. Cazuri concrete pe care le &icirc;nt&acirc;mpini, &icirc;n viața de zi cu zi.</p>', NULL, NULL, NULL),
(4, 4, 'Audit si analiza', '<ul>\r\n	<li>Evaluăm problemele semnalate de client, prin prisma bunelor practici și a standardelor din profesie</li>\r\n	<li>Identificăm și clasificăm riscurile ce pot impacta calitatea produselor</li>\r\n	<li>Propunem măsuri de mitigare și corecție a riscurilor identificate.</li>\r\n</ul>', NULL, NULL, NULL),
(5, 4, 'Cursuri', '<p>Acoperim o gamă largă de cursuri din domeniul software: Testing, Development, Soft Skills sau Delivery.</p>\r\n\r\n<p>Toate sunt adaptate cerinţelor şi nevoii de business a clientului și pot &icirc;mbrăca forma unor:</p>\r\n\r\n<ul>\r\n	<li>Cursuri on-demand sau one-time training</li>\r\n	<li>Planuri complexe de career development</li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.academiatestarii.ro/documente/2020_AT_Curricula_Overveiw.pdf\" target=\"_blank\"><strong>Vezi aici curicula de cursuri pentru 2020!</strong></a></p>', NULL, NULL, NULL),
(6, 2, 'Cursuri de iniţiere şi specializare în Software Testing, consultanţă şi resourcing.', '<ul>\r\n	<li><strong>Hands-On Training</strong><br />\r\n	Cursuri cuprinzătoare, axate pe aplicabilitatea testării. Te pregătim şi &icirc;nvaţăm să adopţi o abordare profesională și structurată a testării.</li>\r\n	<li><strong>Suport excelent</strong><br />\r\n	Vei putea &icirc;ncepe o carieră &icirc;n domeniu, pentru a asigura calitatea sistemelor informatice și tehnologice din cadrul organizațiilor.</li>\r\n</ul>\r\n', 'despre1.jpg', NULL, NULL),
(7, 2, 'Industria IT este una dintre cele mai provocatoare şi performante industrii de astăzi.', '<ul>\r\n	<li><strong>Cerere mare, salariu mare.</strong> &Icirc;n Rom&acirc;nia, cu precădere, mai contează și faptul că piața are mai multe joburi dec&acirc;t candidați</li>\r\n	<li><strong>Varietate. </strong>Profesioniștii IT lucrează &icirc;n medicină, agricultură, transport, energie, divertisment și chiar in domenii bancare și financiare.</li>\r\n	<li><strong>Locul cercetării, dezvoltării și inovării.</strong> Dacă tinzi &icirc;nspre zona de dezvoltare continuă, e posibil să nu existe o industrie mai bună.</li>\r\n</ul>\r\n', 'despre2.jpg', NULL, NULL),
(8, 2, 'Dacă vrei să evoluezi la fel de tare cum ne dorim şi noi, ai deja cel mai bun motiv.', '<ul>\r\n	<li><strong>Hands-On Training</strong><br />\r\n	Cursuri cuprinzătoare, axate pe aplicabilitatea testării. Te pregătim şi &icirc;nvaţăm să adopţi o abordare profesională și structurată a testării.</li>\r\n	<li><strong>Suport excelent</strong><br />\r\n	Vei putea &icirc;ncepe o carieră &icirc;n domeniu, pentru a asigura calitatea sistemelor informatice și tehnologice din cadrul organizațiilor.</li>\r\n</ul>\r\n', 'despre3.jpg', NULL, NULL),
(9, 4, 'Testarea dedicata', '<p>&Icirc;n contextul digitalizării tot mai pronunțate, venim &icirc;n ajutorul clienților care nu au o echipă de testare dedicată:</p>\r\n\r\n<p>&Icirc;ți testăm website-ul &icirc;n detaliu și &icirc;ți oferim un raport de testare cuprinzător, la un cost foarte atractiv.</p>', NULL, NULL, NULL),
(10, 4, 'Definire procese (Consultanta)', '<ul>\r\n	<li><strong>Identific</strong><strong>ă</strong><strong>m</strong> și clasificăm &icirc;mbunătățirile ce pot crește calitatea livrabilelor</li>\r\n	<li><strong>Definim</strong> măsuri operaționale pentru a susține &icirc;mbunătățirile urmărite</li>\r\n	<li><strong>Implement</strong><strong>ă</strong><strong>m</strong> măsurile aprobate la nivel individual, de echipă sau organizațional</li>\r\n</ul>', NULL, NULL, NULL),
(11, 4, 'Servicii testare', '<p>Ajutăm companiile să &icirc;și testeze produsele software.</p>\r\n\r\n<p>Oferim specialiști cu diverse grade de senioritate și competențe - at&acirc;t la client, c&acirc;t și remote.</p>', NULL, NULL, NULL),
(12, 4, 'Tools', '<p>Oferim licențiere și sprinjin &icirc;n implimentare pentru cele mai cunoscute tool-uri folosite &icirc;n testarea software - JIRA, SOAP UI, Confluence, Bitbucket.</p>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `testimonial` text DEFAULT NULL,
  `class` int(6) UNSIGNED DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `testimonial`, `class`, `created_on`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adriana Popescu, absolventă Iniţiere în Software Testing', 'Junior Software Tester', '														<p>Am făcut reconversie profesională în mai puțin de un an de la terminarea cursurilor. Am început cursul în 2017, când încă lucram în recrutare.</p><p>A reprezentat o fundație importantă pentru ceea ce fac astăzi.</p>                                                ', 1, '2020-01-17 11:50:23', 1, NULL, NULL, NULL),
(2, 'Simona, absolventă Iniţiere în Software Testing', 'Project Manager', '<p>După curs, am lucrat șase luni ca Software Tester pentru aplicațiile dezvoltate in-house.</p>\r\n\r\n<p>Acum sunt manager de proiect, lucrez cu doi developeri și avem o mulțime de proiecte interesante &icirc;n lucru.</p>\r\n', 1, '2020-01-17 11:50:23', 1, NULL, NULL, NULL),
(3, 'Radu, absolvent Iniţiere în Software Testing', 'Junior Software Tester', '<p>M-am angajat la o lună de la terminarea cursului, având ca experienţă anterioară doar anii lucraţi în bancă. Mi-au dat un test, m-au chemat la interviu şi în trei zile m-au anunţat că încep.</p>', 1, '2020-01-17 11:50:23', 1, NULL, NULL, NULL),
(4, 'Alexandra, absolventă Iniţiere în Software Testing', 'Software Tester', '<p>Am venit la curs imediat după ce mi-am dat licenţa. În facultate n-am luat contact cu testarea, ci numai cu programarea, aşa că aveam mare nevoie de cineva care să-mi explice cum stau lucrurile în domeniu.</p><p>Am reuşit să învăţ foarte multe lucruri şi am fost capabilă să-mi găsesc, mai apoi, un job în domeniu.</p>                        ', 1, '2020-01-17 11:50:23', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `picture` varchar(256) DEFAULT NULL,
  `is_staff` int(1) UNSIGNED DEFAULT 0,
  `trainer_provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `name`, `phone`, `email`, `linkedin`, `title`, `bio`, `picture`, `is_staff`, `trainer_provider_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Daniel Chivescu', NULL, NULL, NULL, 'Trainer Advanced Test Automation | QA Lead @GoPro', '																																			<p>Are o experiență de peste 7 ani în automatizare şi, surpinzător sau nu, încă iubește fiecare clipă petrecută în domeniu… chiar dacă e într-o „relaţie complicată” cu JavaScript.</p>\r\n<p>Îi place să ţină cursuri şi talk-uri despre Selenium / WebdriverIO. Asta combină două dintre lucruri lui preferate: automatizarea și prezentările.</p>                                                                                                                        ', 'daniel-chivulescu.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(2, 'Florin Manolescu', '0799005004', 'florin@academiatestarii.ro', 'https://www.linkedin.com/in/manolescu-florin-andrei-68794935/', 'Founder & Managing Partner', '<p>Experienced QA &amp; Test Manager with a demonstrated history of working in numerous industries. Passionate about quality and a driver for best practices adoption.<br />\r\nGood knowledge of Agile &amp; Waterfall methodologies with practical applications through tailored test strategies defined at each project level.</p>\r\n\r\n<p>Trainer and coach for testing topics with a keen interest in promoting the software testing profession.</p>\r\n', 'florin.jpg', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'George Stan', '0734540913', 'george@academiatestarii.ro', 'https://www.linkedin.com/in/george-stan-48628b35/', 'Founder & Managing Partner', '<p>George &icirc;şi &icirc;ncepe cei 8 ani de carieră &icirc;n Game Testing. Evoluează rapid şi &icirc;ntr-un an trece la următorul nivel, Software Testing, unde progreseză de la o pozitie de junior la, SCRUM Master şi Technical Team Lead.</p>\r\n\r\n<p>&Icirc;şi păstrează cursul ascendent şi &icirc;şi dezvoltă competenţele de testare manuală şi automată, unde aplică procese SDLC şi practici Agile. Abilitatea de a vedea lucrurile &icirc;n ansamblu şi de a identifica nevoile de business, &icirc;i conduc interesul către client side testing (web testing cu Selenium) şi server side testing (Rest/Soap API testing).</p>\r\n', 'george.jpg', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Andrada Tuca', '0745202244', 'andrada@academiatestarii.ro', 'https://www.linkedin.com/in/andrada-tuca/', 'Marketing & PR', '', 'andrada.jpg', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'Marius Tablet', '', '', 'https://www.linkedin.com/in/marius-tăbleț-a88aa072', 'Performance testing consultant', '<p>Inginer IT cu o experienta de mai bine de 6 ani in domeniul testarii automate de performanta si. In&nbsp;prezent lucreaza ca si consultant extern in testarea de performanta.&nbsp;</p>\r\n\r\n<p>In cea mai mare parte in timpul liber, ii place sa se dezvolte, sa citeasca si sa petreaca timpul cu prietenii apropiati. Este&nbsp;pasionat de sport: volei, alergat si fitness. Spiritul de echipa este foarte important pentru el.</p>\r\n', 'marius-tablet.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(6, 'Roman Leca', '', '', 'https://www.linkedin.com/in/roman-leca-a7b49b6a/', 'QA Automation Lead', '<p>Profesionist IT cu peste 12 ani de experiență &icirc;n domeniul tehnologiei informației, cu precădere &icirc;n zona testării produselor software.</p>\r\n', 'roman-leca.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(7, 'Dan Neciu', '', '', 'https://www.linkedin.com/in/dan-neciu-38810964/', 'Trainer Web Development', '<p>Software Engineer la o firma e-commerce din New York, cu peste 8 ani de experienta, a inceput intai cu framework-ul Wordpress. Acum isi petrece timpul dezvoltand aplicatii&nbsp; enterprise folosind Angular si React. Dar ca Freelancer inca dezvolta platforme online si woocomerce folosind Wordpress.</p>\r\n', 'Dan-Neciu.jpg', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainer_providers`
--

CREATE TABLE `trainer_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainer_providers`
--

INSERT INTO `trainer_providers` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Academia Testarii', 1, '2020-11-24 17:21:32', '2020-11-24 17:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` text DEFAULT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `payment_method` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`id`, `email`, `status`, `payment_method`, `class_id`) VALUES
(1, 'balasaalexandra1993@gmail.com', 2, 2, 39),
(2, 'ionita.alexandru.mihai@gmail.com', 1, 2, 39),
(3, 'ionut.stanculea@gmail.com', 2, 2, 39),
(4, 'anca1189@yahoo.com', 2, 2, 39),
(5, 'ciurcanu_oana@yahoo.com', 2, 2, 39),
(6, 'ischeul@yahoo.com', 2, 2, 39),
(7, 'maria.dobra91@gmail.com', 1, 2, 39),
(8, 'hincu.emi@gmail.com', 2, 2, 39),
(9, 'Enachepommer.ana@gmail.com', 1, 2, 39),
(10, 'andreea_cristina_dinu@yahoo.com', 2, 2, 39),
(11, 'alexandrasimion583@yahoo.com', 2, 2, 39),
(12, 'rouageorge@gmail.com', 2, 2, 39),
(13, 'catalin.afrim@gmail.com', 1, 2, 39),
(14, 'nycoleta.petru@gmail.com', 0, 2, 39),
(15, 'daniela.musat6@gmail.com', 0, 2, 39),
(16, 'tudor_alina_nicoleta@yahoo.com', 0, 2, 28),
(17, 'cutieru_mihai@yahoo.com', 2, 2, 28),
(18, 'tudorache.stefan@gmail.com', 2, 2, 28),
(19, 'alexandra.iacobuta@gmail.com', 2, 2, 28),
(20, 'danalache.fabian@gmail.com', 2, 2, 28),
(21, 'dumitrica_cosmin@yahoo.com', 1, 2, 28),
(22, 'ghera.george@gmail.com', 2, 2, 52),
(23, 'katana_wrath@yahoo.com', 2, 2, 52),
(24, 'raluk.lungu@gmail.com', 2, 1, 52),
(25, 'lungucris@gmail.com', 2, 2, 52),
(26, 'andrei.senseutchi@gmail.com', 2, 2, 52),
(27, 'iuliaelena.cozma@gmail.com', 1, 1, 52),
(28, 'george.pascu89@yahoo.com', 2, 1, 52),
(29, 'lavinia_trandafir@yahoo.com', 2, 2, 52),
(30, 'ruxandra.simion87@gmail.com', 2, 2, 52),
(31, 'ramona.maxinese@yahoo.com', 2, 2, 52),
(32, 'alecsandra.ecard@gmail.com', 1, 1, 52),
(33, 'chiritoiumirela@gmail.com', 2, 1, 52),
(34, 'andreeaavasiloaie15@gmail.com', 1, 1, 52),
(35, 'mihai1lazar@yahoo.com', 2, 2, 52),
(36, 'dana.musetescu@yahoo.com', 0, 2, 52),
(37, 'cartealba@mailinator.com', 0, 1, 52),
(38, 'pantadiana@gmail.com', 0, 2, 52),
(39, 'dianaprigoreanu9525@gmail.com', 0, 2, 52),
(40, 'creciundumitru@gmail.com', 2, 2, 38),
(41, 'ile.andreescu@gmail.com', 1, 2, 38),
(42, 'danielcrangasu@gmail.com', 1, 2, 38),
(43, 'radu1691@gmail.com', 1, 2, 38),
(44, 'alexandru.oncete@gmail.com', 2, 2, 38),
(45, 'chelaru.iulian15@gmail.com', 2, 2, 38),
(46, 'rusumadalinna@yahoo.com', 2, 2, 38),
(47, 'nicoaraionutdragos@gmail.com', 0, 2, 38),
(48, 'alexandru.cretan@gmail.com', 0, 2, 38),
(49, 'mihtud@yahoo.com', 1, 2, 38),
(50, 'grod1490@gmail.com', 0, 2, 38),
(51, 'elena@agavriloaei.ro', 2, 2, 38),
(52, 'ppetru.alexandru@gmail.com', 2, 2, 38),
(53, 'Voica.maria@gmail.com', 1, 2, 38),
(54, 'cst2989@gmail.com', 0, 2, 38),
(55, 'cst29892@gmail.com', 2, 2, 38),
(56, 'ioanacristiana2005@yahoo.com', 0, 2, 38),
(57, 'rox.chesaru@gmail.com', 0, 2, 38),
(58, 'cst2989@gmail.com', 0, 2, 35),
(59, 'e_raluca_p@yahoo.com', 0, 2, 34),
(60, 'loredana.chitaru@gmail.com', 2, 1, 34),
(61, 'claudiadinicica@gmail.com', 2, 1, 34),
(62, 'oana.cismaseanu@mail.com', 2, 1, 34),
(63, 'alekverban@gmail.com', 0, 1, 34),
(64, 'roxanaliliana.c@gmail.com', 2, 1, 34),
(65, 'mirela_cocanu@yahoo.com', 0, 1, 34),
(66, 'oana.enache13@gmail.com', 0, 2, 34),
(67, 'mihaelaste88@gmail.com', 2, 1, 34),
(68, 'marinescutatianamalina@yahoo.com', 0, 1, 34),
(69, 'andrei.raicu111@gmail.com', 0, 1, 34),
(70, 'alexandru_fundaneanu@yahoo.com', 2, 2, 36),
(71, 'tifigiu_hp@yahoo.com', 2, 2, 36),
(72, 'comanalexandru07@gmail.com', 2, 2, 36),
(73, 'brendea.alexandru@yahoo.com', 0, 2, 5),
(74, 'angelagavrila@gmail.com', 0, 2, 5),
(75, 'corina_marin25@yahoo.com', 0, 2, 5),
(76, 'gabi21stoicescu@yahoo.com', 0, 2, 5),
(77, 'andreea.stefania_tudor@yahoo.com', 0, 2, 5),
(78, 'laura_dulcik88@yahoo.com', 0, 2, 5),
(79, 'mcburcea@gmail.com', 0, 2, 5),
(80, 'anton_claudiu92@yahoo.com', 3, 2, 37),
(81, 'gabinegoita@yahoo.com', 2, 2, 37),
(82, 'dragos.olteanu@axessoftware.ro', 2, 2, 37),
(83, 'mirunaolivia@gmail.com', 0, 2, 37),
(84, 'oanapintilie17@gmail.com', 2, 2, 37),
(85, 'andreuta44@gmail.com', 0, 2, 37),
(86, 'catalin.anghel85@yahoo.com', 2, 1, 32),
(87, 'alinadiaconescu_18@yahoo.com', 2, 1, 32),
(88, 'daniel.ristea84@yahoo.com', 2, 1, 32),
(89, 'carmen.mihaela.lis@gmail.com', 2, 1, 32),
(90, 'ana.meciu@gmail.com', 1, 1, 32),
(91, 'suzanapeichea@yahoo.fr', 2, 1, 32),
(92, 'mariana_jora@yahoo.com', 2, 2, 32),
(93, 'andraa2301@gmail.com', 2, 2, 32),
(94, 'branzan.elena@gmail.com', 2, 2, 32),
(95, 'bog.avram@yahoo.com', 2, 2, 32),
(96, 'ciprian.schiopu@gmail.com', 2, 1, 32),
(97, 'alexandru_mn@yahoo.com', 2, 2, 32),
(98, 'domnisanandrei@gmail.com', 2, 1, 32),
(99, 'alexandraavram87@yahoo.ro', 2, 1, 32),
(100, 'gaita_octavian@yahoo.com', 2, 1, 32),
(101, 'corina.carpovici@db.com', 2, 1, 33),
(102, 'neacsa.george@yahoo.com', 2, 1, 33),
(103, 'Cristian.eugen.stoica@gmail.com', 2, 1, 33),
(104, 'zlotea.adriann@gmail.com', 2, 1, 33),
(105, 'albertina.iliescu@gmail.com', 2, 2, 33),
(106, 'mihaelatopala1@gmail.com', 2, 2, 33),
(107, 'Raisavm@yahoo.com', 2, 2, 33),
(108, 'octavian2092@gmail.com', 2, 1, 33),
(109, 'lucian.dinu93@yahoo.com', 2, 1, 33),
(110, 'maria22011957@gmail.com', 2, 2, 33),
(111, 'alina_irina_b@yahoo.com', 1, 1, 29),
(112, 'dragomir.eugen@yahoo.com', 0, 2, 29),
(113, 'miha_baci@yahoo.com', 2, 2, 29),
(114, 'gogescuadrian@gmail.com', 1, 1, 29),
(115, 'alexandra.radu@rbc.com.ro', 1, 2, 29),
(116, 'ghila777@yahoo.com', 2, 1, 29),
(117, 'dragosstudio@gmail.com', 1, 2, 29),
(118, 'isirbu@cbn.ro', 2, 2, 29),
(119, 'rebirth90@gmail.com', 2, 2, 29),
(120, 'gcalin@cbn.ro', 2, 2, 29),
(121, 'cristian.gonciulea@yahoo.com', 1, 2, 29),
(122, 'laurarecea@gmail.com', 2, 2, 29),
(123, 'vieriu.madalina@gmail.com', 0, 1, 29),
(124, 'cristian.gonciulea@gmail.com', 0, 1, 29),
(125, 'ghila777@yahoo.com', 0, 2, 43),
(126, 'catamorariu@icloud.com', 0, 2, 42),
(127, 'alexandru.zamfir@allevo.ro', 2, 2, 41),
(128, 'antohi.veraarev@gmail.com', 0, 2, 41),
(129, 'diaconu7@gmail.com', 3, 2, 41),
(130, 'klaudiumail@yahoo.com', 2, 2, 41),
(131, 'chelaru.mirela@gmail.com', 1, 2, 41),
(132, 'elena.grigore22@gmail.com', 1, 2, 41),
(133, 'vsabo@cbn.ro', 2, 2, 41),
(134, 'coryna_odo@yahoo.com', 2, 2, 41),
(135, 'n.cosmin05@gmail.com', 1, 2, 41),
(136, 'loredana.chitaru@gmail.com', 2, 2, 40),
(137, 'alexaman20@yahoo.com', 2, 2, 40),
(138, 'mihaelatopala1@gmail.com', 3, 2, 40),
(139, 'adelina.florea7@gmail.com', 2, 2, 40),
(140, 'parsolea_alex@yahoo.com', 2, 2, 40),
(141, 'mihaela_florea91@yahoo.ro', 2, 1, 53),
(142, 'mariusbaltoi@gmail.com', 2, 2, 53),
(143, 'cristi.dimian@gmail.com', 2, 2, 53),
(144, 'ionelalajea@gmail.com', 2, 2, 53),
(145, 'razvan852@gmail.com', 2, 2, 53),
(146, 'costinolteanu@yahoo.com', 2, 1, 53),
(147, 'aura.gandea@gmail.com', 2, 2, 53),
(148, 'munteanupetre19@gmail.com', 2, 1, 53),
(149, 'bogdan388@gmail.com', 2, 1, 53),
(150, 'claudiu.tamas@punct.ro', 2, 2, 53),
(151, 'domenicodiconza@punct.ro', 2, 2, 53),
(152, 'ramona.maxinese@yahoo.com', 2, 2, 53),
(153, 'mihatesting@gmail.com', 0, 2, 53),
(154, 'alin.fuioaga@icloud.com', 1, 2, 46),
(155, 'ma3x_ul@yahoo.com', 0, 2, 46),
(156, 'ametadler@yahoo.com', 2, 2, 46),
(157, 'maria.salceanu@trendconsult.eu', 2, 2, 46),
(158, 'stroe.adelina.alexandra@gmail.com', 2, 2, 46),
(159, 'stefan.else@gmail.com', 0, 2, 46),
(160, 'ciuica_bogdan@yahoo.com', 0, 2, 46),
(161, 'dianaprigoreanu@yahoo.com', 1, 2, 7),
(162, 'durangeorgiana@yahoo.com', 2, 2, 7),
(163, 'ionita.andrei2010@gmail.com', 1, 2, 7),
(164, 'cst2989@gmail.com', 0, 2, 7),
(165, 'andreea.patras@gmail.com', 1, 2, 7),
(166, 'voin3a_florin@yahoo.com', 0, 2, 7),
(167, 'trashlord72@gmail.com', 1, 2, 7),
(168, 'dem24cat@yahoo.com', 2, 2, 7),
(169, 'palcau_maria@yahoo.com', 2, 2, 7),
(170, 'alexzamoravvv@gmail.com', 1, 2, 7),
(171, 'ziulik@yahoo.co.uk', 1, 2, 7),
(172, 'Francumihaelatatiana@yahoo.com', 1, 2, 7),
(173, 'caliningridd@gmail.com', 1, 2, 7),
(174, 'daniel.stefan.t@gmail.com', 0, 2, 7),
(175, 'ramboi.alexandru@gmail.com', 1, 2, 7),
(176, 'alexandru_srn@yahoo.com', 2, 2, 44),
(177, 'ungureanubogdan92@gmail.com', 1, 2, 44),
(178, 'iuliana.ungureanu07@gmail.com', 2, 2, 44),
(179, 'maryuscl@yahoo.com', 2, 2, 44),
(180, 'andreibibuu@gmail.com', 1, 2, 44),
(181, 'ciprian88m@gmail.com', 2, 2, 44),
(182, 'dumitru.baluta@gmail.com', 2, 2, 44),
(183, 'cosmin_b96@yahoo.com', 2, 2, 44),
(184, 'laurentiu.dinu1007@gmail.com', 2, 2, 44),
(185, 'andreea.rusu03@yahoo.com', 2, 2, 44),
(186, 'andraahmed@gmail.com', 2, 2, 44),
(187, 'o.g.adamescu@gmail.com', 3, 2, 30),
(188, 'yonela_tennis@yahoo.com', 2, 2, 30),
(189, 'razvanxd66@yahoo.com', 1, 2, 30),
(190, 'alexandru_srn@yahoo.com', 0, 2, 30),
(191, 'cristinam.sanchez.rincon@gmail.com', 3, 2, 45),
(192, 'alinafilimon817@gmail.com', 2, 2, 45),
(193, 'catalin.raven@gmail.com', 3, 2, 45),
(194, 'tzugurela@gmail.com', 3, 2, 45),
(195, 'laura.dogeanu@gmail.com', 2, 2, 45),
(196, 'vasilica.nutu@gmail.com', 3, 2, 45),
(197, 'viorelpetrescu@yahoo.com', 1, 2, 45),
(198, 'ana.luntraru@gmail.com', 1, 2, 47),
(199, 'stanculet.cosmin@gmail.com', 2, 2, 47),
(200, 'iulia.corbu.cristiana@gmail.com', 1, 2, 47),
(201, 'catalin_thk@yahoo.com', 0, 2, 47),
(202, 'mihaela_bgh@yahoo.com', 1, 2, 47),
(203, 'i.andreeatatiana@gmail.com', 0, 2, 47),
(204, 'creciundumitru@gmail.com', 0, 2, 47),
(205, 'danisandu59@gmail.com', 2, 2, 48),
(206, 'daniela.musat6@gmail.com', 0, 2, 48),
(207, 'andreeachiriac3@yahoo.com', 2, 2, 48),
(208, 'mahmood.muheb@gmail.com', 2, 2, 48),
(209, 'pantadiana@gmail.com', 2, 2, 48),
(210, 'crosy_2pac@yahoo.com', 0, 2, 48),
(211, 'radutimohi@yahoo.com', 0, 2, 48),
(212, 'raluca_buraga@yahoo.com', 2, 2, 48),
(213, 'radu.martinas@ymail.com', 1, 2, 48),
(214, 'razvancostin.ilie@gmail.com', 1, 2, 48),
(215, 'ban.dumitru@gmail.com', 1, 2, 48),
(216, 'ema_gbrl@yahoo.com', 0, 2, 48),
(217, 'andreea.martinas88@yahoo.com', 1, 2, 48),
(218, 'diana.f.zaharia@gmail.com', 2, 2, 48),
(219, 'bercuconstantinbogdan@yahoo.com', 1, 2, 48),
(220, 'cst2989@gmail.com', 2, 2, 48),
(221, 'serban.roxana.elena.01@gmail.com', 0, 2, 6),
(222, 'andreea.dolete@yahoo.com', 1, 2, 50),
(223, 'viviannesim.sl@gmail.com', 2, 2, 50),
(224, 'pmariuspredescu@gmail.com', 1, 2, 50),
(225, 'trewalex@yahoo.com', 0, 2, 50),
(226, 'raulciunt@yahoo.com', 2, 2, 51),
(227, 'oanazamfir@gmail.com', 2, 2, 51),
(228, 'alexandru.oncete@gmail.com', 2, 2, 51),
(229, 'alexandru.cretan@gmail.com', 2, 2, 51),
(230, 'cgurgu@internetmarketingcompany.biz', 2, 2, 51),
(231, 'danielcrangasu@gmail.com', 1, 2, 49),
(232, 'cristian_romanoschi@yahoo.com', 1, 2, 49),
(233, 'zlotea.oana@yahoo.com', 1, 2, 49),
(234, 'bmona@yahoo.com', 1, 2, 49),
(235, 'deea_cosmina@yahoo.com', 1, 2, 49),
(236, 'alexandra.cioroianu@gmail.com', 1, 2, 49),
(237, 'alexandru.oncete@gmail.com', 2, 2, 49),
(238, 'andreea_cristina_dinu@yahoo.com', 2, 2, 49),
(239, 'stanicaas95@gmail.com', 0, 2, 49),
(240, 'adrian.matei.am@gmail.com', 1, 2, 49),
(241, 'cst2989@gmail.com', 0, 2, 49),
(242, 'mrcrosy@gmail.com', 0, 2, 49),
(243, 'Raisavm@yahoo.com', 2, 2, 54),
(244, 'adivlaicu72@gmail.com', 2, 2, 54),
(245, 'pop.v.victor@gmail.com', 1, 2, 54),
(246, 'ramona.cojocaru@softeh.ro', 0, 2, 54),
(247, 'roxana.modreanu@softeh.ro', 0, 2, 54),
(248, 'sorin.tunsu@gmail.com', 0, 2, 54),
(249, 'cst2989@gmail.com', 2, 2, 31),
(250, 'tzugurela@gmail.com', 0, 2, 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'academiatestarii', 'florin@academiatestarii.ro', NULL, '$2y$10$9bbyB502u1nfL/3j9exRauG8ZzqgPZ9OF6ZuECtDtOiO9UNGcSCFe', NULL, '2020-11-24 17:20:45', '2020-11-24 17:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `users_signed_up`
--

CREATE TABLE `users_signed_up` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `period` text NOT NULL,
  `status` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_signed_up`
--

INSERT INTO `users_signed_up` (`id`, `email`, `period`, `status`, `module`, `payment_method`) VALUES
(43, 'ghera.george@gmail.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(17, 'katana_wrath@yahoo.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(3, 'raluk.lungu@gmail.com', '15 Ian – 21 Feb 2018', 2, 254, 1),
(4, 'lungucris@gmail.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(63, 'catalin.anghel85@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(7, 'andrei.senseutchi@gmail.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(18, 'iuliaelena.cozma@gmail.com', '15 Ian – 21 Feb 2018', 1, 254, 1),
(41, 'george.pascu89@yahoo.com', '15 Ian – 21 Feb 2018', 2, 254, 1),
(15, 'lavinia_trandafir@yahoo.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(16, 'ruxandra.simion87@gmail.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(14, 'ramona.maxinese@yahoo.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(20, 'alecsandra.ecard@gmail.com', '15 Ian – 21 Feb 2018', 1, 254, 1),
(21, 'alinadiaconescu_18@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(59, 'mihaela_florea91@yahoo.ro', '5 Mar – 18 Apr 2018', 2, 261, 1),
(25, 'chiritoiumirela@gmail.com', '15 Ian – 21 Feb 2018', 2, 254, 1),
(26, 'stefan.hacman@gmail.com', '15 Ian  – 28 Feb 2018', 2, 649, 1),
(27, 'mariusbaltoi@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 2),
(28, 'cristi.dimian@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 2),
(29, 'andreeaavasiloaie15@gmail.com', '15 Ian – 21 Feb 2018', 1, 254, 1),
(30, 'mihai1lazar@yahoo.com', '15 Ian – 21 Feb 2018', 2, 254, 2),
(31, 'alina_irina_b@yahoo.com', '11 Iun – 25 Iul 2018', 1, 261, 1),
(62, 'corina.carpovici@db.com', '7 Mai – 13 Iun 2018', 2, 254, 1),
(60, 'ionelalajea@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 2),
(46, 'daniel.ristea84@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(66, 'razvan852@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 2),
(49, 'carmen.mihaela.lis@gmail.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(50, 'ana.meciu@gmail.com', '5 Mar – 11 Apr 2018', 1, 254, 1),
(51, 'suzanapeichea@yahoo.fr', '5 Mar – 11 Apr 2018', 2, 254, 1),
(61, 'costinolteanu@yahoo.com', '5 Mar – 18 Apr 2018', 2, 261, 1),
(53, 'mariana_jora@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 2),
(54, 'andraa2301@gmail.com', '5 Mar – 11 Apr 2018', 2, 254, 2),
(55, 'branzan.elena@gmail.com', '5 Mar – 11 Apr 2018', 2, 254, 2),
(56, 'aura.gandea@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 2),
(64, 'bog.avram@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 2),
(65, 'ciprian.schiopu@gmail.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(67, 'alexandru_mn@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 2),
(68, 'munteanupetre19@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 1),
(69, 'bogdan388@gmail.com', '5 Mar – 18 Apr 2018', 2, 261, 1),
(70, 'claudiu.tamas@punct.ro', '5 Mar – 18 Apr 2018', 2, 261, 2),
(71, 'domenicodiconza@punct.ro', '5 Mar – 18 Apr 2018', 2, 261, 2),
(72, 'domnisanandrei@gmail.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(73, 'alexandraavram87@yahoo.ro', '5 Mar – 11 Apr 2018', 2, 254, 1),
(74, 'ramona.maxinese@yahoo.com', '5 Mar – 18 Apr 2018', 2, 261, 2),
(75, 'gaita_octavian@yahoo.com', '5 Mar – 11 Apr 2018', 2, 254, 1),
(81, 'neacsa.george@yahoo.com', '7 Mai – 13 Iun 2018', 2, 254, 1),
(77, 'dragomir.eugen@yahoo.com', '11 Iun – 25 Iul 2018', 0, 261, 2),
(93, 'Cristian.eugen.stoica@gmail.com', '7 Mai – 13 Iun 2018', 2, 254, 1),
(79, 'zlotea.adriann@gmail.com', '7 Mai – 13 Iun 2018', 2, 254, 1),
(80, 'albertina.iliescu@gmail.com', '7 Mai – 13 Iun 2018', 2, 254, 2),
(82, 'miha_baci@yahoo.com', '11 Iun – 25 Iul 2018', 2, 261, 2),
(85, 'e_raluca_p@yahoo.com', '25 Iun – 1 Aug 2018', 0, 254, 2),
(84, 'mihaelatopala1@gmail.com', '7 Mai – 13 Iun 2018', 2, 254, 2),
(90, 'Raisavm@yahoo.com', '7 Mai – 13 Iun 2018', 2, 254, 2),
(91, 'loredana.chitaru@gmail.com', '25 Iun – 1 Aug 2018', 2, 254, 1),
(92, 'octavian2092@gmail.com', '7 Mai – 13 Iun 2018', 2, 254, 1),
(95, 'lucian.dinu93@yahoo.com', '7 Mai – 13 Iun 2018', 2, 254, 1),
(96, 'claudiadinicica@gmail.com', '25 Iun – 1 Aug 2018', 2, 254, 1),
(97, 'gogescuadrian@gmail.com', '11 Iun – 25 Iul 2018', 1, 261, 1),
(98, 'oana.cismaseanu@mail.com', '25 Iun – 1 Aug 2018', 2, 254, 1),
(99, 'alexandra.radu@rbc.com.ro', '11 Iun – 25 Iul 2018', 1, 261, 2),
(103, 'alekverban@gmail.com', '25 Iun – 1 Aug 2018', 0, 254, 1),
(101, 'roxanaliliana.c@gmail.com', '25 Iun – 1 Aug 2018', 2, 254, 1),
(102, 'maria22011957@gmail.com', '7 Mai – 13 Iun 2018', 2, 254, 2),
(104, 'mirela_cocanu@yahoo.com', '25 Iun – 1 Aug 2018', 0, 254, 1),
(105, 'ghila777@yahoo.com', '11 Iun – 25 Iul 2018', 2, 261, 1),
(106, 'dragosstudio@gmail.com', '11 Iun – 25 Iul 2018', 1, 261, 2),
(107, 'isirbu@cbn.ro', '11 Iun – 25 Iul 2018', 2, 261, 2),
(108, 'oana.enache13@gmail.com', '25 Iun – 1 Aug 2018', 0, 254, 2),
(109, 'rebirth90@gmail.com', '11 Iun – 25 Iul 2018', 2, 261, 2),
(110, 'gcalin@cbn.ro', '11 Iun – 25 Iul 2018', 2, 261, 2),
(111, 'cristian.gonciulea@yahoo.com', '11 Iun – 25 Iul 2018', 1, 261, 2),
(112, 'laurarecea@gmail.com', '11 Iun – 25 Iul 2018', 2, 261, 2),
(113, 'mihaelaste88@gmail.com', '25 Iun – 1 Aug 2018', 2, 254, 1),
(114, 'vieriu.madalina@gmail.com', '11 Iun – 25 Iul 2018', 0, 261, 1),
(115, 'marinescutatianamalina@yahoo.com', '25 Iun – 1 Aug 2018', 0, 254, 1),
(116, 'cristian.gonciulea@gmail.com', '11 Iun – 25 Iul 2018', 0, 261, 1),
(117, 'andrei.raicu111@gmail.com', '25 Iun – 1 Aug 2018', 0, 254, 1),
(118, 'mihatesting@gmail.com', '5 Mar – 18 Apr 2018', 0, 261, 2),
(119, 'loredana.chitaru@gmail.com', '3 Sep - 17 Oct 2018', 2, 261, 2),
(120, 'alexaman20@yahoo.com', '3 Sep - 17 Oct 2018', 2, 261, 2),
(121, 'mihaelatopala1@gmail.com', '3 Sep - 17 Oct 2018', 3, 261, 2),
(122, 'adelina.florea7@gmail.com', '3 Sep - 17 Oct 2018', 2, 261, 2),
(148, 'alexandru_srn@yahoo.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(123, 'cst2989@gmail.com', '20 Aug - 5 Sep 2018', 0, 254, 2),
(124, 'cst2989@gmail.com', '9 Nov - 18 Nov 2018', 2, 1061, 2),
(157, 'alexandru.zamfir@allevo.ro', '29 Oct - 12 Dec 2018', 2, 261, 2),
(127, 'alexandru_fundaneanu@yahoo.com', '3 Sep - 19 Sep 2018', 2, 254, 2),
(145, 'antohi.veraarev@gmail.com', '29 Oct - 12 Dec 2018', 0, 261, 2),
(142, 'o.g.adamescu@gmail.com', '22 Sep - 30 Sep 2018', 3, 700, 2),
(151, 'ungureanubogdan92@gmail.com', '10 Noi - 18 Noi 2018', 1, 700, 2),
(134, 'tifigiu_hp@yahoo.com', '3 Sep - 19 Sep 2018', 2, 254, 2),
(137, 'parsolea_alex@yahoo.com', '3 Sep - 17 Oct 2018', 2, 261, 2),
(138, 'comanalexandru07@gmail.com', '3 Sep - 19 Sep 2018', 2, 254, 2),
(139, 'yonela_tennis@yahoo.com', '22 Sep - 30 Sep 2018', 2, 700, 2),
(140, 'razvanxd66@yahoo.com', '22 Sep - 30 Sep 2018', 1, 700, 2),
(146, 'diaconu7@gmail.com', '29 Oct - 12 Dec 2018', 3, 261, 2),
(154, 'klaudiumail@yahoo.com', '29 Oct - 12 Dec 2018', 2, 261, 2),
(150, 'iuliana.ungureanu07@gmail.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(159, 'maryuscl@yahoo.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(153, 'andreibibuu@gmail.com', '10 Noi - 18 Noi 2018', 1, 700, 2),
(155, 'ciprian88m@gmail.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(158, 'chelaru.mirela@gmail.com', '29 Oct - 12 Dec 2018', 1, 261, 2),
(160, 'elena.grigore22@gmail.com', '29 Oct - 12 Dec 2018', 1, 261, 2),
(161, 'dumitru.baluta@gmail.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(162, 'vsabo@cbn.ro', '29 Oct - 12 Dec 2018', 2, 261, 2),
(163, 'coryna_odo@yahoo.com', '29 Oct - 12 Dec 2018', 2, 261, 2),
(164, 'cosmin_b96@yahoo.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(165, 'n.cosmin05@gmail.com', '29 Oct - 12 Dec 2018', 1, 261, 2),
(166, 'laurentiu.dinu1007@gmail.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(168, 'andreea.rusu03@yahoo.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(169, 'andraahmed@gmail.com', '10 Noi - 18 Noi 2018', 2, 700, 2),
(174, 'cristinam.sanchez.rincon@gmail.com', '26 Ian – 3 Feb 2019', 3, 700, 2),
(171, 'alexandru_srn@yahoo.com', '22 Sep - 30 Sep 2018', 0, 700, 2),
(172, 'andreea.dolete@yahoo.com', '18 Februarie - 3 Aprilie 2019', 1, 1061, 2),
(190, 'anton_claudiu92@yahoo.com', '4 – 20 Martie 2019', 3, 254, 2),
(180, 'alinafilimon817@gmail.com', '26 Ian – 3 Feb 2019', 2, 700, 2),
(186, 'viviannesim.sl@gmail.com', '18 Februarie - 3 Aprilie 2019', 2, 1061, 2),
(177, 'catalin.raven@gmail.com', '26 Ian – 3 Feb 2019', 3, 700, 2),
(179, 'catamorariu@icloud.com', '26 Feb – 10 Apr 2019', 0, 261, 2),
(182, 'tzugurela@gmail.com', '26 Ian – 3 Feb 2019', 3, 700, 2),
(183, 'laura.dogeanu@gmail.com', '26 Ian – 3 Feb 2019', 2, 700, 2),
(184, 'vasilica.nutu@gmail.com', '26 Ian – 3 Feb 2019', 3, 700, 2),
(187, 'viorelpetrescu@yahoo.com', '26 Ian – 3 Feb 2019', 1, 700, 2),
(196, 'gabinegoita@yahoo.com', '4 – 20 Martie 2019', 2, 254, 2),
(193, 'dragos.olteanu@axessoftware.ro', '4 – 20 Martie 2019', 2, 254, 2),
(189, 'pmariuspredescu@gmail.com', '18 Februarie - 3 Aprilie 2019', 1, 1061, 2),
(194, 'dvsn23@outlook.com', ' 3 Iunie – 17 Iulie', 0, 1061, 2),
(197, 'alin.fuioaga@icloud.com', ' 11 - 19 Mai 2019', 1, 700, 2),
(198, 'ghila777@yahoo.com', '25 Mar - 16 Mai 2019', 0, 261, 2),
(199, 'mirunaolivia@gmail.com', '4 – 20 Martie 2019', 0, 254, 2),
(214, 'ana.luntraru@gmail.com', '6 - 14 Iulie 2019', 1, 700, 2),
(201, 'oanapintilie17@gmail.com', '4 – 20 Martie 2019', 2, 254, 2),
(202, 'trewalex@yahoo.com', '18 Februarie - 3 Aprilie 2019', 0, 1061, 2),
(203, 'ma3x_ul@yahoo.com', ' 11 - 19 Mai 2019', 0, 700, 2),
(204, 'andreuta44@gmail.com', '4 – 20 Martie 2019', 0, 254, 2),
(208, 'ametadler@yahoo.com', ' 11 - 19 Mai 2019', 2, 700, 2),
(211, 'Raisavm@yahoo.com', '3 Iunie – 17 Iulie 2019', 2, 1061, 2),
(209, 'maria.salceanu@trendconsult.eu', ' 11 - 19 Mai 2019', 2, 700, 2),
(210, 'adivlaicu72@gmail.com', '3 Iunie – 17 Iulie 2019', 2, 1061, 2),
(212, 'stroe.adelina.alexandra@gmail.com', ' 11 - 19 Mai 2019', 2, 700, 2),
(226, 'stanculet.cosmin@gmail.com', '6 - 14 Iulie 2019', 2, 700, 2),
(215, 'pop.v.victor@gmail.com', '3 Iunie – 17 Iulie 2019', 1, 1061, 2),
(216, 'stefan.else@gmail.com', ' 11 - 19 Mai 2019', 0, 700, 2),
(217, 'ciuica_bogdan@yahoo.com', ' 11 - 19 Mai 2019', 0, 700, 2),
(223, 'iulia.corbu.cristiana@gmail.com', '6 - 14 Iulie 2019', 1, 700, 2),
(220, 'ramona.cojocaru@softeh.ro', '3 Iunie – 17 Iulie 2019', 0, 1061, 2),
(221, 'roxana.modreanu@softeh.ro', '3 Iunie – 17 Iulie 2019', 0, 1061, 2),
(222, 'sorin.tunsu@gmail.com', '3 Iunie – 17 Iulie 2019', 0, 1061, 2),
(224, 'catalin_thk@yahoo.com', '6 - 14 Iulie 2019', 0, 700, 2),
(225, 'mihaela_bgh@yahoo.com', '6 - 14 Iulie 2019', 1, 700, 2),
(227, 'i.andreeatatiana@gmail.com', '6 - 14 Iulie 2019', 0, 700, 2),
(228, 'creciundumitru@gmail.com', '2 Sep - 18 Sep 2019', 2, 254, 2),
(229, 'creciundumitru@gmail.com', '6 - 14 Iulie 2019', 0, 700, 2),
(230, 'dana.musetescu@yahoo.com', '15 Ian – 21 Feb 2018', 0, 254, 2),
(231, 'cartealba@mailinator.com', '15 Ian – 21 Feb 2018', 0, 254, 1),
(232, 'pantadiana@gmail.com', '15 Ian – 21 Feb 2018', 0, 254, 2),
(233, 'rox.chesaru@gmail.com', '2 Sep - 18 Sep 2019; 11 Noi - 27 Noi 2019', 0, 254, 2),
(234, 'ile.andreescu@gmail.com', '2 Sep - 18 Sep 2019', 1, 254, 2),
(235, 'danielcrangasu@gmail.com', '2 Sep - 18 Sep 2019', 1, 254, 2),
(237, 'radu1691@gmail.com', '2 Sep - 18 Sep 2019', 1, 254, 2),
(238, 'raulciunt@yahoo.com', '23 Sep - 6 Noi 2019', 2, 1061, 2),
(239, 'alexandru.oncete@gmail.com', '2 Sep - 18 Sep 2019', 2, 254, 2),
(240, 'chelaru.iulian15@gmail.com', '2 Sep - 18 Sep 2019', 2, 254, 2),
(241, 'rusumadalinna@yahoo.com', '2 Sep - 18 Sep 2019', 2, 254, 2),
(242, 'nicoaraionutdragos@gmail.com', '2 Sep - 18 Sep 2019', 0, 254, 2),
(243, 'alexandru.cretan@gmail.com', '2 Sep - 18 Sep 2019', 0, 254, 2),
(244, 'mihtud@yahoo.com', '2 Sep - 18 Sep 2019', 1, 254, 2),
(245, 'grod1490@gmail.com', '2 Sep - 18 Sep 2019', 0, 254, 2),
(246, 'elena@agavriloaei.ro', '2 Sep - 18 Sep 2019', 2, 254, 2),
(286, 'danisandu59@gmail.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(248, 'ppetru.alexandru@gmail.com', '2 Sep - 18 Sep 2019', 2, 254, 2),
(249, 'Voica.maria@gmail.com', '2 Sep - 18 Sep 2019', 1, 254, 2),
(250, 'cst2989@gmail.com', '2 Sep - 18 Sep 2019', 0, 254, 2),
(251, 'cst29892@gmail.com', '2 Sep - 18 Sep 2019', 2, 254, 2),
(301, 'daniela.musat6@gmail.com', '7 Dec - 15 Dec 2019', 0, 700, 2),
(254, 'ioanacristiana2005@yahoo.com', '2 Sep - 18 Sep 2019', 0, 254, 2),
(255, 'balasaalexandra1993@gmail.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(256, 'ionita.alexandru.mihai@gmail.com', '11 Noi - 27 Noi 2019', 1, 254, 2),
(289, 'andreeachiriac3@yahoo.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(258, 'mahmood.muheb@gmail.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(259, 'oanazamfir@gmail.com', '23 Sep - 6 Noi 2019', 2, 1061, 2),
(260, 'alexandru.oncete@gmail.com', '23 Sep - 6 Noi 2019', 2, 1061, 2),
(261, 'ionut.stanculea@gmail.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(262, 'pantadiana@gmail.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(290, 'anca1189@yahoo.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(267, 'alexandru.cretan@gmail.com', '23 Sep - 6 Noi 2019', 2, 1061, 2),
(268, 'cgurgu@internetmarketingcompany.biz', '23 Sep - 6 Noi 2019', 2, 1061, 2),
(269, 'ciurcanu_oana@yahoo.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(270, 'ischeul@yahoo.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(305, 'crosy_2pac@yahoo.com', '7 Dec - 15 Dec 2019', 0, 700, 2),
(272, 'maria.dobra91@gmail.com', '11 Noi - 27 Noi 2019', 1, 254, 2),
(304, 'radutimohi@yahoo.com', '7 Dec - 15 Dec 2019', 0, 700, 2),
(274, 'hincu.emi@gmail.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(275, 'Enachepommer.ana@gmail.com', '11 Noi - 27 Noi 2019', 1, 254, 2),
(276, 'danielcrangasu@gmail.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(277, 'andreea_cristina_dinu@yahoo.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(278, 'raluca_buraga@yahoo.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(291, 'radu.martinas@ymail.com', '7 Dec - 15 Dec 2019', 1, 700, 2),
(280, 'alexandrasimion583@yahoo.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(281, 'rouageorge@gmail.com', '11 Noi - 27 Noi 2019', 2, 254, 2),
(282, 'catalin.afrim@gmail.com', '11 Noi - 27 Noi 2019', 1, 254, 2),
(283, 'razvancostin.ilie@gmail.com', '7 Dec - 15 Dec 2019', 1, 700, 2),
(284, 'nycoleta.petru@gmail.com', '11 Noi - 27 Noi 2019', 0, 254, 2),
(285, 'ban.dumitru@gmail.com', '7 Dec - 15 Dec 2019', 1, 700, 2),
(287, 'ema_gbrl@yahoo.com', '7 Dec - 15 Dec 2019', 0, 700, 2),
(292, 'andreea.martinas88@yahoo.com', '7 Dec - 15 Dec 2019', 1, 700, 2),
(293, 'diana.f.zaharia@gmail.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(294, 'bercuconstantinbogdan@yahoo.com', '7 Dec - 15 Dec 2019', 1, 700, 2),
(295, 'cristian_romanoschi@yahoo.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(296, 'dianaprigoreanu@yahoo.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(297, 'tudor_alina_nicoleta@yahoo.com', '13 - 29 Ianuarie 2019', 0, 254, 2),
(298, 'durangeorgiana@yahoo.com', '1 Feb - 9 Feb 2020', 2, 700, 2),
(299, 'daniela.musat6@gmail.com', '11 Noi - 27 Noi 2019', 0, 254, 2),
(303, 'cst2989@gmail.com', '7 Dec - 15 Dec 2019', 2, 700, 2),
(307, 'cutieru_mihai@yahoo.com', '13 - 29 Ianuarie 2019', 2, 254, 2),
(308, 'ionita.andrei2010@gmail.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(309, 'zlotea.oana@yahoo.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(331, 'cst2989@gmail.com', '1 Feb - 9 Feb 2020', 0, 700, 2),
(311, 'tudorache.stefan@gmail.com', '13 - 29 Ianuarie 2019', 2, 254, 2),
(312, 'andreea.patras@gmail.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(313, 'bmona@yahoo.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(339, 'voin3a_florin@yahoo.com', '1 Feb - 9 Feb 2020', 0, 700, 2),
(315, 'trashlord72@gmail.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(316, 'dem24cat@yahoo.com', '1 Feb - 9 Feb 2020', 2, 700, 2),
(317, 'palcau_maria@yahoo.com', '1 Feb - 9 Feb 2020', 2, 700, 2),
(318, 'deea_cosmina@yahoo.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(319, 'alexandra.cioroianu@gmail.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(320, 'alexandru.oncete@gmail.com', '3 Febr - 18 Martie 2019', 2, 1061, 2),
(321, 'alexandra.iacobuta@gmail.com', '13 - 29 Ianuarie 2019', 2, 254, 2),
(322, 'danalache.fabian@gmail.com', '13 - 29 Ianuarie 2019', 2, 254, 2),
(323, 'alexzamoravvv@gmail.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(324, 'dumitrica_cosmin@yahoo.com', '13 - 29 Ianuarie 2019', 1, 254, 2),
(325, 'ziulik@yahoo.co.uk', '1 Feb - 9 Feb 2020', 1, 700, 2),
(326, 'andreea_cristina_dinu@yahoo.com', '3 Febr - 18 Martie 2019', 2, 1061, 2),
(328, 'brendea.alexandru@yahoo.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2),
(329, 'Francumihaelatatiana@yahoo.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(330, 'angelagavrila@gmail.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2),
(332, 'caliningridd@gmail.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(333, 'daniel.stefan.t@gmail.com', '1 Feb - 9 Feb 2020', 0, 700, 2),
(334, 'ramboi.alexandru@gmail.com', '1 Feb - 9 Feb 2020', 1, 700, 2),
(335, 'corina_marin25@yahoo.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2),
(336, 'stanicaas95@gmail.com', '3 Febr - 18 Martie 2019', 0, 1061, 2),
(337, 'adrian.matei.am@gmail.com', '3 Febr - 18 Martie 2019', 1, 1061, 2),
(343, 'gabi21stoicescu@yahoo.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2),
(340, 'cst2989@gmail.com', '3 Febr - 18 Martie 2019', 0, 1061, 2),
(341, 'mrcrosy@gmail.com', '3 Febr - 18 Martie 2019', 0, 1061, 2),
(342, 'vaidamihai@gmail.com', '10 Februarie - 20 Martie 2020', 1, 1435, 2),
(344, 'andreea.stefania_tudor@yahoo.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2),
(345, 'serban.roxana.elena.01@gmail.com', '9 - 17 Mai 2020', 0, 700, 2),
(346, 'dianaprigoreanu9525@gmail.com', '15 Ian – 21 Feb 2018', 0, 254, 2),
(347, 'laura_dulcik88@yahoo.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2),
(348, 'tzugurela@gmail.com', '17 Februarie - 27 Martie 2020', 0, 1435, 2),
(349, 'mcburcea@gmail.com', '30 Martie - 15 Aprilie 2020', 0, 254, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_name` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `phone` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_title` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `period` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`id`, `last_name`, `first_name`, `email`, `phone`, `post_title`, `period`) VALUES
(2, 'Popescu', 'Adriana', 'adrianaapopescuu@gmail.com', '0728425121', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(3, 'Manolescu ', 'Florin', 'manolescuflorinandrei@gmail.com', '0726215388', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(4, 'adam', 'flavius', 'flavius_adam@yahoo.com', '0757118892', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(5, 'Marin', 'Radu', 'radu.marin85@gmail.com', '0763809645', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(6, 'Vlad ', 'Diana Alexandra', 'dianaalexandravlad@gmail.com', '0724919847', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(7, 'STANCU', 'NICOLAE', 'nicolae.stancu@db.com', '0763665236', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(8, 'Chetrone', 'Mirela', 'chiritoiumirela@gmail.com', '0768258334', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(9, 'Stroe', 'Mirela', 'mirela-florentina.stroe@db.com', '0761863804', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(10, 'Manciu', 'Claudia Mihaela', 'manciuclaudia@yahoo.com', '0762639020', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(11, 'Constantin', 'Mihai Alin', 'constantin.mihai.alin@gmail.com', '0720516910', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(12, 'Selaru', 'Simona Valentina', 'simona.selaru@yahoo.com', '0729435472', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(13, 'Dumitrescu', 'Laura', 'dumitrescu.lauramaria@yahoo.com', '0734697797', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(14, 'Pastia', 'Ruxandra', 'ruxandra.baran@outlook.com', '0722566918', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(15, 'Radu ', 'Alexandra', 'alexandra.radu4595@gmail.com', '0735447949', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(16, 'Davidoglu', 'Andrei', 'diandrei@gmail.com', '0722506787', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(17, 'Petrea', 'Daniela', 'danielapetreav@gmail.com', '0729902966', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(18, 'Chiriac', 'Roxana', 'Roxanachiriac05@gmail.com', '0726315073', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(19, 'Stanciu', 'Alis Alexandra', 'alis.stanciu@gmail.com', '0726138031', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(20, 'IOFCIU', 'MIRABELA', 'mirabela.iofciu@gmail.com', '0785379330', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(21, 'Caciulan', 'Dana Sorina', 'danasorina2001@gmail.com', '0761739790', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(22, 'Raveanu', 'Ioana Alexandra', 'ioana.raveanu@outlook.com', '0725527738', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(23, 'Alexandra', 'Aldea', 'alexxandra.aldea@gmail.com', '0767343851', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(24, 'Munteanu', 'Petre', 'munteanupetre19@gmail.com', '0733938894', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(25, 'Fratila', 'Romeo', 'romeofratila74@yahoo.fr', '0771535610', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(26, 'Bucur', 'Marian', 'marianbucur88@gmail.com', '0745368591', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(27, 'IOFCIU', 'MIRABELA', 'mirabela.iofciu@gmail.com', '0785379330', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(28, 'Petre', 'Ana Maria', 'ane_mari96@yahoo.com', '0746830020', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(29, 'Caciulan', 'Dana Sorina', 'danasorina2001@gmail.com', '0761739790', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(30, 'Pirvu', 'Adriana', 'adriana.ledezeu@yahoo.com', '0765634244', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(31, 'Naita', 'Andrei', 'andrei.naita@yahoo.com', '0723549251', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(32, ' BIRHALA', 'DORU', 'doru.birhala@gmail.com', '0730044226', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(33, 'NECULA', 'ALEXANDRA', 'alexaman20@yahoo.com', '0761149548', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(34, 'Cazan', 'Alexandra', 'alexutza.1993@yahoo.com', '0773372175', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(35, 'Preda', 'Anna Maria', 'preda.anna.m@gmail.com', '0722396485', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(36, 'Nicula', 'Florentina', 'niculaflorentina@ymail.com', '0724094170', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(37, 'ROSU', 'ADELUTA', 'adelina.rosu@ymail.com', '0768427803', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(38, 'Tica', 'Eugen Gabriel', 'ticaeugengabriel@gmail.com', '0773722590', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(39, 'Mogosiu', 'Mircea', 'mircea.mogosiu@gmail.com', '0740695259', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(40, 'Secheli', 'Alexandru', 'alexandru.secheli@gmail.com', '0721388790', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(41, 'Dimian', 'Dan Cristian', 'cristi.dimian@gmail.com', '0724058806', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(42, 'Baltoi', 'Marius Nicolae', 'mariusbaltoi@gmail.com', '0727282185', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(43, 'Ghera', 'George', 'ghera.george@gmail.com', '0766399499', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(44, 'Simion', 'Ruxandra', 'ruxandra.simion87@gmail.com', '0728071018', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(45, 'Raluca', 'Lungu', 'raluk.lungu@gmail.com', '0741143860', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(46, ' BIRHALA', 'DORU', 'doru.birhala@gmail.com', '0730044226', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(47, 'Lungu', 'Cristian', 'lungucris@gmail.com', '0722630996', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(48, 'stanciu', 'mihai adrian', 'mihai_adrian_stanciu@yahoo.com', '0724820266', 'Iniţiere în Software Testing (3 săptămâni)', '1'),
(49, 'Nicolae', 'Elena Cristina', 'crissa822003@yahoo.com', '0745123410', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(50, 'Badita', 'Stefan', 'stefbadita@gmail.com', '0722505589', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(51, 'Senseutchi', 'Andrei', 'andrei.senseutchi@gmail.com', '0734398629', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(53, 'Anghel', 'Roxana', 'roxxana.anghel@gmail.com', '0725635159', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(54, 'Marinescu', 'Andreea', 'Amarinescu109@gmail.com', '0759083666', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(55, 'Moldovan', 'Marius Ioan', 'marius_mako@yahoo.com', '0759115763', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(56, 'Tanase', 'Lavinia', 'lavinia_trandafir@yahoo.com', '0766938630', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(57, 'Maxinese ', 'Ramona', 'ramona.maxinese@yahoo.com', '0766524945', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(58, 'Tocica', 'Cristian', 'katana_wrath@yahoo.com', '0751076169', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(59, 'Elena-Iulia', 'Ciufu', 'iuliaelena.cozma@gmail.com', '0766338480', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(60, 'Diaconescu', 'Alina Maria', 'alinadiaconescu_18@yahoo.com', '0763674968', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(61, 'Ecard', 'Alecsandra', 'alecsandra.ecard@gmail.com', '0724935536', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(62, 'Diaconescu', 'Alina', 'alinadiaconescu_18@yahoo.com', '0763674968', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(64, 'CHETRONE', 'MIRELA', 'chiritoiumirela@gmail.com', '0768258334', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(65, 'BALTOI', 'Marius Nicolae', 'mariusbaltoi@gmail.com', '0727282185', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(66, 'Dimian', 'Dan-Cristian', 'cristi.dimian@gmail.com', '0724058806', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(67, 'Avasiloaie', 'Andreea', 'andreeaavasiloaie15@gmail.com', '0755947432', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(68, 'Lazar', 'Mihai', 'mihai1lazar@yahoo.com', '0745065106', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(69, 'david', 'tudor', 'tudor.david@ing.ro', '0747060669', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(76, 'Florin', 'Manolescu', 'florin@academiatestarii.ro', '0788888997', 'Iniţiere în Software Testing (3 săptămâni)', '11 Iun – 18 Iul 2018'),
(77, 'Pascu', 'George', 'george.pascu89@yahoo.com', '0737152877', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(78, 'Butiseaca', 'Giorgiana', 'butiseaca.giorgiana@yahoo.com', '0744336367', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(79, 'Gindea', 'Aura', 'aura.gindea@gmail.com', '0725439410', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(80, 'Dumitru', 'Stefan Catalin', 'cata10101991@yahoo.com', '0728259886', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(81, 'Ristea', 'Daniel', 'daniel.ristea84@yahoo.com', '0727528528', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(82, 'Andrei', 'Sorin Adrian', 'sorinadrian.andrei@yahoo.com', '0726059792', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(83, 'Matei', 'Adina', 'matei.adina.iuliana@gmail.com', '0762675877', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(84, 'Dimian', 'Carmen Mihaela', 'carmen.mihaela.lis@gmail.com', '0765434698', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(85, 'Muraru', 'Suzana', 'ana.meciu@gmail.com', '0769654511', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(86, 'meciu ', 'ana', 'suzanapeichea@yahoo.fr', '0784801335', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(87, 'Galchin', 'Raluca', 'ralucagalchin@gmail.com', '0743522535', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(88, 'Maria', 'Jora', 'mariana_jora@yahoo.com', '0731293329', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(89, 'Apostol', 'Alexandra', 'andraa2301@gmail.com', '0735319342', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(90, 'Elena', 'Elena', 'branzan.elena@gmail.com', '0766224989', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(91, 'Gindea', 'Aura', 'aura.gandea@gmail.com', '0725439410', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(92, 'Vatamanu', 'Raisa Miruna', 'Raisavm@yahoo.com', '0767896373', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(93, 'Patrascu ', 'Raluca Elena ', 'e_raluca_p@yahoo.com', '0727736468', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(94, 'Florea', 'Mihaela', 'mihaela_florea91@yahoo.ro', '0755868295', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(95, 'Lajea', 'Ionela', 'ionelalajea@gmail.com', '0768892663', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(96, 'Olteanu', 'Costin', 'costinolteanu@yahoo.com', '0753878697', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(97, 'Carpovici', 'Victor', 'corina.carpovici@db.com', '0726970831', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(98, 'Anghel', 'Catalin Nicolae', 'catalin.anghel85@yahoo.com', '0726684384', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(99, 'Avram', 'Bogdan', 'bog.avram@yahoo.com', '0721949606', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(100, 'Schiopu', 'Ciprian-Mihai', 'ciprian.schiopu@gmail.com', '0742933981', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(101, 'Corjos', 'Razvan Daniel', 'razvan852@gmail.com', '0752291024', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(102, 'Minza', 'Alexandru', 'alexandru_mn@yahoo.com', '0722307448', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(103, 'Munteanu', 'Petre', 'munteanupetre19@gmail.com', '0733938894', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(104, 'Iordache', 'Bogdan', 'bogdan388@gmail.com', '0720271812', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(105, 'Tamas', 'Claudiu', 'claudiu.tamas@punct.ro', '0732779578', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(106, 'Di Conza', 'Domenico', 'domenicodiconza@punct.ro', '0721719122', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(107, 'Domnisan', 'Andrei Alexandru Silvestru', 'domnisanandrei@gmail.com', '0741273989', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(108, 'Avram', 'Alexandra', 'alexandraavram87@yahoo.ro', '0748822304', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(109, 'Maxinese', 'Ramona Giorgiana', 'ramona.maxinese@yahoo.com', '0766524945', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(110, 'Gaita', 'Octavian', 'gaita_octavian@yahoo.com', '0768841805', 'Iniţiere în Software Testing (3 săptămâni)', '5 Mar – 11 Apr 2018'),
(111, 'Balaban', 'Alina', 'alina_irina_b@yahoo.com', '0740303193', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(112, 'Dragomir', 'Eugen', 'dragomir.eugen@yahoo.com', '0732487591', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(114, 'Zlotea', 'Adrian Petrisor', 'zlotea.adriann@gmail.com', '0766246782', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(115, 'Iliescu', 'Albertina', 'albertina.iliescu@gmail.com', '0767354479', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(116, 'Neacsa', 'George', 'neacsa.george@yahoo.com', '0748147265', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(117, 'Mestes', 'Mihaela', 'miha_baci@yahoo.com', '0766237694', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(118, 'GG', 'Stanica', 'george@academiatestarii.ro', '0734540913', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(119, 'topala', 'mihaela', 'mihaelatopala1@gmail.com', '0765516850', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(120, 'Patrascu ', 'Raluca Elena', 'e_raluca_p@yahoo.com', '0727736468', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(121, 'Carpovici', 'Victor', 'karino_week@yahoo.com', '0726970831', 'Iniţiere în Software Testing (3 săptămâni)', '11 Iun – 18 Iul 2018'),
(122, 'Mestes', 'Mihaela', 'miha_baci@yahoo.com', '0766237694', 'Iniţiere în Software Testing (2 weekend-uri)', '6 Iun - 24 Iun'),
(123, 'Bla', 'Bla', 'georgy22@gmail.com', '0745000000', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(124, 'Apreutesei', 'Georgy', 'georgy22@gmail.com', '0745647705', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(125, 'Vatamanu', 'Raisa', 'Raisavm@yahoo.com', '0767896373', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(126, 'Chitaru', 'Loredana', 'loredana.chitaru@gmail.com', '0722400147', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(127, 'Mocanu', 'Octavian Aurelian', 'octavian2092@gmail.com', '0765766919', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(128, 'Stoica', 'Cristian', 'Cristian.eugen.stoica@gmail.com', '0727053153', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(129, 'anabananaskjhldhlahjhldahfihhhh', 'ana', 'cristina.m.birzan@gmail.com', '0799777854', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(130, 'Dinu', 'Lucian', 'lucian.dinu93@yahoo.com', '0720588615', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(131, 'Dinicica', 'Claudia', 'claudiadinicica@gmail.com', '0767832074', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(132, 'Gogescu', 'Adrian Marius', 'gogescuadrian@gmail.com', '0724844935', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(133, 'Cismaseanu', 'Oana', 'oana.cismaseanu@mail.com', '0722593977', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(134, 'Radu', 'Alexandra', 'alexandra.radu@rbc.com.ro', '0735447949', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(135, 'Carjan', 'Roxana', 'roxanaliliana.c@gmail.com', '0766687722', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(136, 'Cârjan', 'Roxana ', 'roxanaliliana.c@gmail.com', '0766687722', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(137, 'Munteanu', 'Maria', 'maria22011957@gmail.com', '0764727578', 'Iniţiere în Software Testing (3 săptămâni)', '7 Mai – 13 Iun 2018'),
(138, 'Verban', 'Alexandra', 'alekverban@gmail.com', '0770549231', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(139, 'Cocanu', 'Mirela', 'mirela_cocanu@yahoo.com', '0722638498', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(140, 'Ghilenschi ', 'Mihai Alexandru', 'ghila777@yahoo.com', '0722313789', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(141, 'Avadanei', 'Dragos', 'dragosstudio@gmail.com', '0722609283', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(142, 'IULIAN', 'SIRBU', 'isirbu@cbn.ro', '0768236768', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(143, 'Enache', 'Oana Alexandra', 'oana.enache13@gmail.com', '0724355723', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(144, 'Butnariu', 'Codrut-Razvan', 'rebirth90@gmail.com', '0737052587', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(145, 'Calin', 'Georgian Ionut', 'gcalin@cbn.ro', '0745016835', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(146, 'Cristian', 'Gonciulea', 'cristian.gonciulea@yahoo.com', '0772095203', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(147, 'Laura', 'Recea', 'laurarecea@gmail.com', '0784150882', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(148, 'Stefancu', 'Mihaela', 'mihaelaste88@gmail.com', '0729322200', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(149, 'Agheorghicesei', 'Madalina', 'vieriu.madalina@gmail.com', '0742099795', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(150, 'Marinescu', 'Tatiana Malina', 'marinescutatianamalina@yahoo.com', '0723755009', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(151, 'Cristian', 'Gonciulea', 'cristian.gonciulea@gmail.com', '0772095203', 'Advanced Test Automation (7 săptămâni)', '11 Iun – 25 Iul 2018'),
(152, 'Raicu', 'Andrei', 'andrei.raicu111@gmail.com', '0758795668', 'Iniţiere în Software Testing (3 săptămâni)', '25 Iun – 1 Aug 2018'),
(153, 'Matache', 'Mihaela', 'mihatesting@gmail.com', '0722452795', 'Advanced Test Automation (7 săptămâni)', '5 Mar – 18 Apr 2018'),
(154, 'Chitaru', 'Loredana', 'loredana.chitaru@gmail.com', '0722400147', 'Advanced Test Automation (7 săptămâni)', '3 Sep - 17 Oct'),
(155, 'Necula', 'Alexandra', 'alexaman20@yahoo.com', '0761149548', 'Advanced Test Automation (7 săptămâni)', '3 Sep - 17 Oct'),
(156, 'topala', 'mihaela', 'mihaelatopala1@gmail.com', '0765516850', 'Advanced Test Automation (7 săptămâni)', '3 Sep - 17 Oct'),
(157, 'Florea', 'Maria Adelina', 'adelina.florea7@gmail.com', '0721297845', 'Advanced Test Automation (7 săptămâni)', '3 Sep - 17 Oct'),
(160, 'Ivascu', 'Elena', 'edda.ivascu@yahoo.com', '0735673435', 'Iniţiere în Software Testing (3 săptămâni)', '5 Noi – 21 Noi'),
(161, 'P?trascu ', 'Raluca Elena', 'e_raluca_p@yahoo.com', '0727736468', 'Iniţiere în Software Testing (3 săptămâni)', '5 Noi – 21 Noi'),
(162, 'Fundaneanu', 'Alexandru', 'alexandru_fundaneanu@yahoo.com', '0765455342', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(163, 'Bivol', 'Raluca', 'lrb_80@yahoo.com', '0742534400', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(164, 'Andries', 'Danuta Elen', 'anghel.danuta@yahoo.com', '0741626808', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(165, 'TEODORA', 'OLTEAN', 'teodoraoltean92@yahoo.com', '0745333082', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(166, 'Bica', 'Andrei Florin', 'andrei.bica.florin@gmail.com', '0787892522', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(167, 'Bratu', 'Alexandru', 'bratu_alex_cosmin@yahoo.com', '0746090723', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(168, 'Parsolea', 'Alexandru', 'parsolea_alex@yahoo.com', '0731179982', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '9 Nov - 18 Nov 2018'),
(169, 'Tifigiu', 'Horatiu Paul', 'tifigiu_hp@yahoo.com', '0728040094', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(170, 'Rogozea', 'Silviu Catalin', 'catalin.rogozea@gmail.com', '0720448327', 'Iniţiere în Software Testing (3 săptămâni)', '5 Noi – 21 Noi'),
(171, 'DUMITRU', 'Florinel Leonard', 'leonard.dumitru@yahoo.com', '0752991133', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(172, 'Parsolea', 'Alexandru', 'parsolea_alex@yahoo.com', '0731179982', 'Advanced Test Automation (7 săptămâni)', '3 Sep - 17 Oct'),
(173, 'Coman', 'Alexandru', 'comanalexandru07@gmail.com', '0753481914', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(174, 'Muntean', 'Ionela', 'yonela_tennis@yahoo.com', '0743211155', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(175, 'Danaila', 'Razvan-Florin', 'razvanxd66@yahoo.com', '0724128500', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(176, 'Nicolescu', 'Irina', 'irina.nicolescu17@yahoo.com', '0736421594', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(177, 'Adamescu', 'Octav George', 'o.g.adamescu@gmail.com', '0749114957', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(180, 'Antohi', 'Veronica', 'antohi.veraarev@gmail.com', '0724148786', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(181, 'Diaconu', 'Florin', 'diaconu7@gmail.com', '0727946834', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(182, 'Cozma-Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', '0721602051', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(183, 'Cozma Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', '0721602051', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(184, 'Rodica', 'Ciobanu', 'unspe@ymail.com', '0771529281', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(185, 'Ungureanu', 'Iuliana', 'iuliana.ungureanu07@gmail.com', '0726882005', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(186, 'Ungureanu', 'Bogdan', 'ungureanubogdan92@gmail.com', '0733217539', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(187, 'Ghinea', 'Iuliana', 'iulianaghinea07@gmail.com', '0767260485', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '9 Nov - 18 Nov 2018'),
(188, 'Bibu', 'Andrei Cristian', 'andreibibuu@gmail.com', '0737017899', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(189, 'Gherghina ', 'Silviu Claudiu ', 'klaudiumail@yahoo.com', '0723312708', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(190, 'Munteanu', 'Ciprian', 'ciprian88m@gmail.com', '0769698933', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(191, 'dima', 'george', 'orita.florin@yahoo.com', '0235652124', 'Iniţiere în Software Testing (3 săptămâni)', '3 Sep - 19 Sep'),
(192, 'Zamfir', 'Alexandre', 'alexandru.zamfir@allevo.ro', '0748044806', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(193, 'Chelaru', 'Mirela', 'chelaru.mirela@gmail.com', '0754972810', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(194, 'Dragomir', 'Marius', 'maryuscl@yahoo.com', '0729742265', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(195, 'Grigore', 'Elena', 'elena.grigore22@gmail.com', '0745797123', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(196, 'Baluta', 'Dumitru', 'dumitru.baluta@gmail.com', '0769276357', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(197, 'Sabo', 'Viorel', 'vsabo@cbn.ro', '0722508555', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(198, 'Nistor', 'Corina-Mihaela', 'coryna_odo@yahoo.com', '0752546513', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(199, 'Banulescu ', 'Cosmin', 'cosmin_b96@yahoo.com', '0762921185', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(200, 'Niculae', 'Cosmin', 'n.cosmin05@gmail.com', '0721338903', 'Advanced Test Automation (7 săptămâni)', '29 Oct - 12 Dec 2018'),
(201, 'Dinu', 'Laurentiu', 'laurentiu.dinu1007@gmail.com', '0786411119', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(202, 'bebe', 'bebe', 'dany_leonard@gmail.com', '0763575781', 'Advanced Test Automation (7 săptămâni)', '3 Sep - 17 Oct'),
(203, 'Rusu', 'Andreea', 'andreea.rusu03@yahoo.com', '0727921623', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(204, 'AHMED', 'ANDRA', 'andraahmed@gmail.com', '0722651333', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(205, 'Amironesei ', 'Ancuta', 'anca06anca@gmail.com', '0757098015', 'Iniţiere în Software Testing (2 weekend-uri)', '10 Noi - 18 Noi 2018'),
(206, 'Cozma-Alexandru', 'Sorin', 'alexandru_srn@yahoo.com', '0721602051', 'Iniţiere în Software Testing (2 weekend-uri)', '22 Sep - 30 Sep 2018'),
(207, 'Filimon', 'Alina', 'alinafilimon817@gmail.com', '0753334467', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(208, 'Amironesei', 'Ancuta', 'amironeseianka@yahoo.com', '0757098015', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(210, 'Sanchez', 'Cristina', 'cristinam.sanchez.rincon@gmail.com', '0758036028', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(211, 'dolete', 'andreea', 'andreea.dolete@yahoo.com', '0723639589', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '18 Februarie - 3 Aprilie'),
(212, 'Marin', 'Oana', 'pasat.m.oana@gmail.com', '0733742044', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(213, 'Andrei', 'Catalin-Constantin ', 'catalin.raven@gmail.com', '0722966332', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(214, 'Alexe', 'Mihai Sorin', 'sorinalexe12@gmail.com', '0767206343', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '18 Februarie - 3 Aprilie'),
(215, 'Morariu', 'Catalin', 'catamorariu@icloud.com', '0747771495', 'Advanced Test Automation (7 săptămâni)', '26 Feb – 10 Apr'),
(216, 'Tanasescu', 'Anca', 'tzugurela@gmail.com', '0726519774', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(217, 'Dogeanu', 'Laura Violeta', 'laura.dogeanu@gmail.com', '0724222572', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(218, 'Pirvu', 'Vasilica', 'vasilica.nutu@gmail.com', '0746637302', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(219, 'fierbinteanu', 'adrian ', 'fierbinteanu.adrian@gmail.com', '0761545201', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(220, 'Luca', 'Simona', 'viviannesim.sl@gmail.com', '0773895744', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '18 Februarie - 3 Aprilie'),
(221, 'Petrescu', 'Ioan Viorel', 'viorelpetrescu@yahoo.com', '0723195144', 'Iniţiere în Software Testing (2 weekend-uri)', '26 Ian – 3 Feb'),
(222, 'Andrada', 'Tucaevici', 'andrada@academiatestarii.ro', '0745202244', 'Iniţiere în Software Testing (3 săptămâni)', ' 18 Iunie – 3 Iulie '),
(223, 'Predescu', 'Marius', 'pmariuspredescu@gmail.com', '0721281911', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '18 Februarie - 3 Aprilie'),
(224, 'Anton', 'Claudiu', 'anton_claudiu92@yahoo.com', '0753638224', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(225, 'Silviu', 'Silvan', 'themirceavalcu@gmail.com', '0744476363', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '18 Februarie - 3 Aprilie'),
(226, 'Silviu', 'Silvan', 'themirceavalcu@gmail.com', '0744476363', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(227, 'Olteanu', 'Dragos', 'dragos.olteanu@axessoftware.ro', '0726719456', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(228, 'Visan', 'Daniel-Stefan', 'dvsn23@outlook.com', '0746503281', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', ' 3 Iunie – 17 Iulie'),
(230, 'Negoi??', 'Gabi R?zvan', 'gabinegoita@yahoo.com', '0764525669', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(231, 'Fuioaga', 'Alin', 'alin.fuioaga@icloud.com', '0745651130', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(232, 'Ghilenschi ', 'Mihai', 'ghila777@yahoo.com', '0722313789', 'Advanced Test Automation (7 săptămâni)', '25 Mar - 16 Mai'),
(233, 'Armulescu', 'Miruna Olivia', 'mirunaolivia@gmail.com', '0749268760', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(234, 'Anghel ', 'Florentina Magdalena ', 'anghelmagdalena@yahoo.com', '0746357302', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(235, 'Pintilie', 'Oana', 'oanapintilie17@gmail.com', '0743492862', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(236, 'Popescu', 'Alexandra', 'trewalex@yahoo.com', '0767545315', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '18 Februarie - 3 Aprilie'),
(237, 'Paun', 'Florin', 'ma3x_ul@yahoo.com', '0728863265', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(238, 'andreea', 'militaru', 'andreuta44@gmail.com', '0799744371', 'Iniţiere în Software Testing (3 săptămâni)', '4 – 20 Martie'),
(240, 'Rauta', 'Diana', 'rauta.diana@yahoo.ro', '0744446926', 'Iniţiere în Software Testing (3 săptămâni)', '18 Iunie – 3 Iulie '),
(241, 'Foltica', 'Alexandra', 'alexandra.cioroianu@gmail.com', '0753138181', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(242, 'Amet', 'Adler', 'ametadler@yahoo.com', '0747868313', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(243, 'Salceanu', 'Maria', 'maria.salceanu@trendconsult.eu', '0744441456', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(244, 'Vlaicu', 'Adrian Romulus', 'adivlaicu72@gmail.com', '0724779289', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(245, 'Vatamanu', 'Raisa  Miruna', 'Raisavm@yahoo.com', '0767896373', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(246, 'STROE', 'ADELINA ALEXANDRA', 'stroe.adelina.alexandra@gmail.com', '0724580801', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(247, 'Trepca', 'Adrian', 'trepca_adrian@yahoo.com', '0743861580', 'Iniţiere în Software Testing (3 săptămâni)', '18 Iunie – 3 Iulie '),
(248, 'Lumtraru', 'Madalina', 'ana.luntraru@gmail.com', '0725537257', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(249, 'Pop', 'Victor', 'pop.v.victor@gmail.com', '0745981931', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(250, 'Stefan', 'Craia', 'stefan.else@gmail.com', '0770715636', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(251, 'Ciuica', 'Bogdan', 'ciuica_bogdan@yahoo.com', '0763604136', 'Iniţiere în Software Testing (2 weekend-uri)', ' 11 – 19 Mai'),
(252, 'Raicu', 'Andrei', 'andrei.raicu111@gmail.com', '0758795668', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(253, 'Pauna', 'Oana', 'oana_pauna88@yahoo.com', '0727246750', 'Iniţiere în Software Testing (3 săptămâni)', '18 Iunie – 3 Iulie '),
(254, 'Cojocaru', 'Maria Ramona', 'ramona.cojocaru@softeh.ro', '0762543711', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(255, 'Mihalcea', 'Roxana', 'roxana.modreanu@softeh.ro', '0765656639', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(256, 'Tunsu', 'Sorin', 'sorin.tunsu@gmail.com', '0730688901', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Iunie – 17 Iulie'),
(257, 'Corbu', 'Iulia', 'iulia.corbu.cristiana@gmail.com', '0723559117', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(258, 'Golea ', 'Catalin', 'catalin_thk@yahoo.com', '0730563009', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(259, 'Matache', 'Mihaela', 'mihaela_bgh@yahoo.com', '0722452795', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(260, 'Stanculet', 'Cosmin Claudiu', 'stanculet.cosmin@gmail.com', '0767038408', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(261, 'Ionita ', 'Andreea Tatiana', 'i.andreeatatiana@gmail.com', '0730119012', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(262, 'Creciun', 'Dumitru', 'creciundumitru@gmail.com', '0732066905', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(263, 'Creciun', 'Dumitru', 'creciundumitru@gmail.com', '0732066905', 'Iniţiere în Software Testing (2 weekend-uri)', '6 - 14 Iulie '),
(264, 'Musetescu', 'Daniela', 'dana.musetescu@yahoo.com', '0722447636', 'Iniţiere în Software Testing (3 săptămâni)', 'In curând'),
(265, 'Anghel', 'Maria Diana', 'pantadiana@gmail.com', '0766358893', 'Iniţiere în Software Testing (3 săptămâni)', 'In curând'),
(266, 'CHESARU', 'ROXANA - NICOLETA', 'rox.chesaru@gmail.com', '0732260383', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep; 11 Noi - 27 Noi'),
(267, 'Andreescu', 'Ileana', 'ile.andreescu@gmail.com', '0724663123', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(268, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', '0722912206', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(269, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', '0722912206', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(270, 'Sava', 'Radu', 'radu1691@gmail.com', '0721438543', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(271, 'Ciunt', 'Raul', 'raulciunt@yahoo.com', '0753821600', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(272, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', '0722532193', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(273, 'Chelaru', 'Iulian-Robert', 'chelaru.iulian15@gmail.com', '0755976002', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(274, 'Rusu', 'Madalina', 'rusumadalinna@yahoo.com', '0754683925', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(275, 'Nicoara', 'Drago?', 'nicoaraionutdragos@gmail.com', '0766674693', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(276, 'Cretan', 'Ioan-Alexandru', 'alexandru.cretan@gmail.com', '0799338379', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(277, 'Mihai', 'Tudose', 'mihtud@yahoo.com', '0728143318', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(278, 'Soare', 'Ionut Bogdan', 'grod1490@gmail.com', '0721645311', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(279, 'Agavriloaei', 'Elena', 'elena@agavriloaei.ro', '0735435393', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(280, 'Dragomir', 'Alexandra ', 'dragomiralexandramaria@gmail.com', '0784125628', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(281, 'Pântrjel ', 'Petru-Alexandru', 'ppetru.alexandru@gmail.com', '0726885804', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(282, 'Voica', 'Maria-Gabriela ', 'Voica.maria@gmail.com', '0747252507', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(285, 'IRIS', 'Daniel Adrian', 'daniel.iris@siveco.ro', '0731707594', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(286, 'Mitroi', 'Ana-Maria', 'ana.maria0201@yahoo.com', '0763246689', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(287, 'Ioana', 'Cristina', 'ioanacristiana2005@yahoo.com', '0761687447', 'Iniţiere în Software Testing (3 săptămâni)', '2 Sep - 18 Sep'),
(288, 'Balasa', 'Alexandra', 'balasaalexandra1993@gmail.com', '0743522420', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(289, 'Ionita', 'Mihai Alexandru', 'ionita.alexandru.mihai@gmail.com', '0734190743', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(290, 'Qanairy', 'Qanairy', 'crosy_2pac@yahoo.com', '0734540913', 'Advanced Test Automation (7 săptămâni)', 'In curând'),
(291, 'Mahmood', 'Muheb', 'mahmood.muheb@gmail.com', '0720312746', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(292, 'Zamfir', 'Oana', 'oanazamfir@gmail.com', '0724749036', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(293, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', '0722532193', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(294, 'Ionut', 'Stancuea', 'ionut.stanculea@gmail.com', '0775547311', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(295, 'Anghel', 'Maria Diana', 'pantadiana@gmail.com', '0766358893', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(296, 'Pohrib', 'Marina ', 'ampohrib@gmail.com', '0751226506', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(300, 'Cretan', 'Alexandru', 'alexandru.cretan@gmail.com', '0799338379', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(301, 'Gurgu', 'Ciprian', 'cgurgu@internetmarketingcompany.biz', '0735787364', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '23 Sep - 6 Noi'),
(302, 'Ciurcanu', 'Oana', 'ciurcanu_oana@yahoo.com', '0747437345', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(303, 'Anton', 'Iulia Ioana', 'ischeul@yahoo.com', '0744341064', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(304, 'Mitru', 'Ana Maria Isabela', 'mitru.anamaria@yahoo.com', '0769959316', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(305, 'Dobra', 'Maria', 'maria.dobra91@gmail.com', '0753982547', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(306, 'Sarbu', 'Georgiana', 'sarbu.georgiana1988@gmail.com', '0724827178', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(307, 'Hincu', 'Alina-Emilia', 'hincu.emi@gmail.com', '0762270788', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(308, 'Enache-Pommer', 'Ana', 'Enachepommer.ana@gmail.com', '0727794155', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(309, 'Daniel', 'Crangasu', 'danielcrangasu@gmail.com', '0722912206', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(310, 'Dinu', 'Andreea Cristina', 'andreea_cristina_dinu@yahoo.com', '0727505301', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(311, 'Buraga', 'Raluca', 'raluca_buraga@yahoo.com', '0724047140', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(312, 'Nastase', 'Corina', 'corina.nastase2014@gmail.com', '0742983736', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(313, 'Rou?-Simion', 'Alexandra-Maria ', 'alexandrasimion583@yahoo.com', '0770311306', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(314, 'Roua', 'George', 'rouageorge@gmail.com', '0775606958', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(315, 'Afrim', 'Catalin', 'catalin.afrim@gmail.com', '0752675768', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(316, 'ILIE', 'RAZVAN', 'razvancostin.ilie@gmail.com', '0746112231', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(317, 'Petru', 'Nicoleta', 'nycoleta.petru@gmail.com', '0728085030', 'Iniţiere în Software Testing (3 săptămâni)', ''),
(318, 'Ban', 'Dumitru', 'ban.dumitru@gmail.com', '0766421553', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(319, 'Sandu', 'Ionut Daniel', 'danisandu59@gmail.com', '0735083268', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(320, 'Ciuciu-Toader', 'Emilia-Gabriela', 'ema_gbrl@yahoo.com', '0745040267', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(321, 'Creasta ', 'Ana Maria ', 'anamariacreasta@yahoo.com', '0725792135', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(322, 'Chiriac', 'Andreea-Adriana', 'andreeachiriac3@yahoo.com', '0748424754', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(323, 'Dinu', 'Anca Georgiana', 'anca1189@yahoo.com', '0768153153', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(324, 'Martinas', 'Radu', 'radu.martinas@ymail.com', '0724290943', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(325, 'Martinas', 'Andreea', 'andreea.martinas88@yahoo.com', '0724623752', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(326, 'Zaharia', 'Diana ', 'diana.f.zaharia@gmail.com', '0752125171', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(327, 'Bercu', 'Constantin', 'bercuconstantinbogdan@yahoo.com', '0740569465', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(328, 'Cristian ', 'Romanoschi', 'cristian_romanoschi@yahoo.com', '0723584812', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(329, 'Prigoreanu', 'Elena Diana', 'dianaprigoreanu@yahoo.com', '0732678111', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(330, 'Tudor', 'Alina Nicoleta ', 'tudor_alina_nicoleta@yahoo.com', '0731669713', 'Iniţiere în Software Testing (3 săptămâni)', '13 - 29 Ianuarie 2019'),
(331, 'Duran', 'Georgiana', 'durangeorgiana@yahoo.com', '0767091610', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(332, 'Musat', 'Daniela', 'daniela.musat6@gmail.com', '0738004107', 'Iniţiere în Software Testing (3 săptămâni)', '11 Noi - 27 Noi'),
(333, 'Negoesteanu', 'Alexandru', 'alexzamoravvv@gmail.com', '0732874370', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(334, 'Musat', 'Daniela', 'daniela.musat6@gmail.com', '0738004107', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(335, 'Avram', 'Ciprian', 'avramciprian18@yahoo.com', '0729296865', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(337, 'MIHAI', 'Tudor', 'radutimohi@yahoo.com', '0734433052', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(338, 'Doar 14', 'Persoane', 'crosy_2pac@yahoo.com', '0734540913', 'Iniţiere în Software Testing (2 weekend-uri)', '7 Dec - 15 Dec'),
(339, 'BAN', 'DUMITRU', 'ban.dumitru@gmail.com', '0766421553', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(340, 'Cutieru ', 'Mihai-Petrisor ', 'cutieru_mihai@yahoo.com', '0728198930', 'Iniţiere în Software Testing (3 săptămâni)', '13 - 29 Ianuarie 2019'),
(341, 'IONITA-ANDREI', 'CRISTIAN-GEORGE', 'ionita.andrei2010@gmail.com', '0723181363', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(342, 'Zlotea', 'Oana', 'zlotea.oana@yahoo.com', '0724901921', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(343, 'Niculita', 'Crsitian', 'niculita.cristi@gmail.com', '0745863179', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(344, 'Tudorache', 'Stefan', 'tudorache.stefan@gmail.com', '0753601824', 'Iniţiere în Software Testing (3 săptămâni)', '13 - 29 Ianuarie 2019'),
(345, 'Patras ', 'Andreea Georgiana', 'andreea.patras@gmail.com', '0768860960', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(346, 'Bratu', 'Simona', 'bmona@yahoo.com', '0744441175', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(347, 'Tatu', 'Alexandra', 'tatu.alexandra91@gmail.com', '0766573537', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(348, 'Zaharache', 'Stefan', 'trashlord72@gmail.com', '0770976351', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(349, 'Alecsandru', 'Dan', 'dem24cat@yahoo.com', '0722492426', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(350, 'Palcau', 'Maria', 'palcau_maria@yahoo.com', '0757063651', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(351, 'Plopeanu', 'Andreea', 'deea_cosmina@yahoo.com', '0733044911', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(352, 'Foltica', 'Alexandra', 'alexandra.cioroianu@gmail.com', '0753138181', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(353, 'Oncete', 'Alexandru', 'alexandru.oncete@gmail.com', '0722532193', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(354, 'Nita', 'Alexandra', 'alexandra.iacobuta@gmail.com', '0745012851', 'Iniţiere în Software Testing (3 săptămâni)', '13 - 29 Ianuarie 2019'),
(355, 'Danalache', 'Fabian', 'danalache.fabian@gmail.com', '0735590310', 'Iniţiere în Software Testing (3 săptămâni)', '13 - 29 Ianuarie 2019'),
(356, 'Dumitrica', 'Cosmin', 'dumitrica_cosmin@yahoo.com', '0726385834', 'Iniţiere în Software Testing (3 săptămâni)', '13 - 29 Ianuarie 2019'),
(357, 'Tudose ', 'Daniela-Iulia', 'ziulik@yahoo.co.uk', '0762357106', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(358, 'Dinu', 'Andreea Cristina', 'andreea_cristina_dinu@yahoo.com', '0727505301', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(359, 'BRENDEA', 'ALEXANDRU-IULIAN', 'brendea.alexandru@yahoo.com', '0735656944', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(360, 'Manole Mihaela', 'Mihaela', 'Francumihaelatatiana@yahoo.com', '0723725766', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(361, 'Gavrila', 'Angela', 'angelagavrila@gmail.com', '0733600067', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(363, 'Calin', 'Ingrid', 'caliningridd@gmail.com', '0721796926', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(364, 'Daniel-Stefan', 'Tirscoveanu', 'daniel.stefan.t@gmail.com', '0758558921', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(365, 'Râmboi', 'Alexandru ', 'ramboi.alexandru@gmail.com', '0756644825', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(366, 'Marin', 'Corina', 'corina_marin25@yahoo.com', '0757321907', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(367, 'Stanica', 'Simona', 'stanicaas95@gmail.com', '0732370327', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(368, 'Matei', 'Adrian', 'adrian.matei.am@gmail.com', '0723017610', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '3 Febr - 18 Martie'),
(369, 'Voinea', 'Florin', 'voin3a_florin@yahoo.com', '0741218552', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(370, 'Voinea', ' Florin', 'voin3a_florin@yahoo.com', '0741218552', 'Iniţiere în Software Testing (2 weekend-uri)', '1 Feb - 9 Feb 2020'),
(373, 'Vaida', 'Mihai', 'vaidamihai@gmail.com', '0726290527', 'Advanced Software Testing', '10 Februarie - 20 Martie 2020'),
(374, 'Stoicescu', 'Gabriel', 'gabi21stoicescu@yahoo.com', '0760337330', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(375, 'Tudor', 'Andreea Stefania', 'andreea.stefania_tudor@yahoo.com', '0747011327', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(376, '?erban', 'Roxana- Elena', 'serban.roxana.elena.01@gmail.com', '0729409345', 'Iniţiere în Software Testing (2 weekend-uri)', '9 - 17 Mai 2020'),
(377, 'a', 'Diana ', 'dianaprigoreanu9525@gmail.com', '0732678111', 'Iniţiere în Software Testing (3 săptămâni)', '15 Ian – 21 Feb 2018'),
(378, 'Popa ', 'Laura', 'laura_dulcik88@yahoo.com', '0744176517', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(379, 'Tanasescu', 'Anca', 'tzugurela@gmail.com', '0726519774', 'Advanced Software Testing', '17 Februarie - 27 Martie 2020'),
(380, 'Burcea', 'Marius-Cristian', 'mcburcea@gmail.com', '0732154844', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(381, 'Balanescu', 'Remus', 'remusxbalanescu@gmail.com', '0727922110', 'Iniţiere în Testarea de Performanță', '26 Mai - 2 Iulie 2020'),
(382, 'Stefan', 'Claudiu Daniel', 'claudiudanielstefan02@gmail.com', '0746666093', 'Iniţiere în Testarea de Performanță', '26 Mai - 2 Iulie 2020'),
(383, 'Galusca', 'Andrei', 'andrei.galusca91@gmail.com', '0799352231', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(384, 'Morariu', 'Catalin', 'catamorariu@icloud.com', '0747771495', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '22 Aprilie - 3 Iunie 2020'),
(385, 'Savin', 'Adrian-Florin ', 'adrian-florin.savin@outlook.com', '0754395842', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(386, 'Matei', 'Marcel', 'matei.marcelino@gmail.com', '0769634237', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(387, 'OLARU', 'RAZVAN', 'razvanolaru@yahoo.com', '0721481275', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(388, 'Mihai', 'Ionela', 'ionela_mihai03@yahoo.com', '0746348848', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(389, 'Catalin', 'Morariu', 'catalin.morariu@metrosystems.net', '0747771495', 'Iniţiere în Test Automation: Rest API & UI (7 săptămâni)', '22 Aprilie - 3 Iunie 2020'),
(390, 'Aceleanu', 'Maria-Claudia', 'claudia.aceleanu@gmail.com', '0727703106', 'Iniţiere în Software Testing (3 săptămâni)', '15 Iunie - 1 Iulie'),
(391, 'Neacsu', 'Melania', 'neacsumelania@gmail.com', '0723150406', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie');
INSERT INTO `wp_posts` (`id`, `last_name`, `first_name`, `email`, `phone`, `post_title`, `period`) VALUES
(392, 'Frangulea', 'Mirela', 'mirelafrangulea@yahoo.com', '0722928137', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie'),
(393, 'Oprea', 'Dragos Adrian', 'adrianoprea1986@yahoo.com', '0745751757', 'Iniţiere în Software Testing (3 săptămâni)', '30 Martie - 15 Aprilie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_dates`
--
ALTER TABLE `class_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_trainers`
--
ALTER TABLE `class_trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_module`
--
ALTER TABLE `db_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_classes`
--
ALTER TABLE `main_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD KEY `id` (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `subcontent`
--
ALTER TABLE `subcontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainer_trainer_provider_id_foreign` (`trainer_provider_id`),
  ADD KEY `trainer_user_id_foreign` (`user_id`);

--
-- Indexes for table `trainer_providers`
--
ALTER TABLE `trainer_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainer_providers_user_id_foreign` (`user_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_signed_up`
--
ALTER TABLE `users_signed_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `class_dates`
--
ALTER TABLE `class_dates`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2927;

--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `class_trainers`
--
ALTER TABLE `class_trainers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_module`
--
ALTER TABLE `db_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `main_classes`
--
ALTER TABLE `main_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_images`
--
ALTER TABLE `news_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT for table `subcontent`
--
ALTER TABLE `subcontent`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainer_providers`
--
ALTER TABLE `trainer_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_signed_up`
--
ALTER TABLE `users_signed_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
