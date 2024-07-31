-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 31, 2024 alle 14:44
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tetralab`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `histories`
--

INSERT INTO `histories` (`id`, `title`, `date`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '1995', 'Andrea V. Cursoli inizia la sua avventura professionale nel settore della sicurezza sul lavoro e della consulenza ambientale', NULL, NULL),
(2, '', '2001', 'Nasce Tetralab S.r.l., in una piccola sede a Sammichele di Bari', NULL, NULL),
(3, '', '2006', 'Eseguiamo il nostro primo grande progetto di monitoraggio ambientale sul cantiere stradale lungo la Tangenziale Ovest di Lecce, esperienza che dura per ben 5 anni ', NULL, NULL),
(4, '', '2007', 'Il nostro team Tetralab cresce fino a raggiungere 7 collaboratori', NULL, NULL),
(5, '', '2008', 'Ci distinguiamo per l’aver eseguito il monitoraggio ambientale e il collaudo acustico delle barriere antirumore, lungo un tratto della Tangenziale di Napoli', NULL, NULL),
(6, '', '2011', 'Acquisiamo la certificazione del Sistema Gestione Qualità secondo la norma UNI EN ISO 9001:2015', NULL, NULL),
(7, '', '2013', 'Tetralab continua a crescere arrivando ad un organico di 10 unità', NULL, NULL),
(8, '', '2014', 'Avviamo il monitoraggio ambientale delle vibrazioni all’interno della grotta dell’Esca, sita lungo la S.S. 96, che si è protratto fino al 2019; nello stesso luogo e periodo di tempo abbiamo monitorato lungo tre lotti della S.S. 96 anche altre componenti a', NULL, NULL),
(9, '', '2015', 'Ci trasferiamo nella nostra nuova e moderna sede di circa 800 m2, nella Zona Industriale di Sammichele di Bari', NULL, NULL),
(10, '', '2016', 'Partecipiamo al Progetto “Pesca Sicura”, in collaborazione con l’INAIL, fino al 2018, i cui risultati conclusivi sono stati presentati in un convegno finale e pubblicati in una monografia da INAIL', NULL, NULL),
(11, '', '2018', 'Tetralab acquisisce la certificazione ACCREDIA secondo la norma UNI CEI EN ISO/IEC 17025:2018, per numerose prove di laboratorio', NULL, NULL),
(12, '', '2020', 'Acquistiamo ulteriore strumentazione ad elevato contenuto tecnologico per l’esecuzione delle analisi chimiche, perché crediamo che l’innovazione sia la chiave del successo', NULL, NULL),
(13, '', '2023', 'Tetralab decide di investire nel suo futuro, acquisendo la sede attuale e migliorando la dotazione strumentale con nuove attrezzature e un impianto fotovoltaico', NULL, NULL),
(14, '', '2024', 'La famiglia Tetralab cresce ancora, accogliendo nuovi talenti, per un totale di 16 collaboratori', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '0001_01_01_000000_create_users_table', 1),
(5, '0001_01_01_000001_create_cache_table', 1),
(6, '0001_01_01_000002_create_jobs_table', 1),
(7, '2024_04_22_210934_create_types_table', 1),
(8, '2024_04_22_220624_create_services_table', 1),
(9, '2024_04_22_220648_create_sub_services_table', 1),
(10, '2024_04_22_231507_add_slug_to_sub_services_table', 2),
(11, '2024_04_29_225533_create_team_tables', 3),
(12, '2024_05_06_203338_create_teams_table', 4),
(13, '2024_05_14_163014_add_image_to_types_table', 5),
(14, '2024_07_31_100053_create_histories_table', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `info`, `description`, `type_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Autorizzazioni ambientali', 'autorizzazioni-ambientali', 'todo', 'Un requisito fondamentale per svolgere attività produttive, così come indicato nel Testo Unico sull’Ambiente D. Lgs. 152/2006, che per tipologia, dimensione e attività eseguite possono potenzialmente essere inquinanti per l’ambiente, consiste nel richiedere una Autorizzazione Ambientale all’Autorità competente, per la quale sono previste sanzioni amministrative e penali, in caso di mancata ottemperanza alle prescrizioni.\nLe Autorizzazioni Ambientali, a loro volta, possono includere alcune Autorizzazioni specifiche previste dalla legislazione ambientale, quali ad esempio:\n-          Autorizzazione allo scarico di acque reflue industriali\n-          Autorizzazione allo scarico di acque meteoriche\n-          Autorizzazione alle emissioni in atmosfera\n-          Autorizzazione alle emissioni odorigene\n-          Comunicazione o nulla osta di impatto acustico\nSe sei allarmato dalla complessità degli iter autorizzativi in campo ambientale, Tetralab ha la soluzione per te! La nostra squadra, composta da tecnici qualificati, si occupa di predisporre tutta la documentazione necessaria, fino all’ottenimento dell’atto autorizzativo. \nPerché richiedere una Consulenza per l’ottenimento di un’Autorizzazione Ambientale? Quali i benefici?\nTi aiutiamo a… individuare se e quale tipo di Autorizzazione è necessaria per la tua attività.\nTi aiutiamo a… formulare e presentare la domanda all’Ente, corredata dalla documentazione necessaria.\nTi aiutiamo a… predisporre eventuali integrazioni, modifiche e domande di rinnovo.\nTi aiutiamo a… ricordare e a dare seguito alle scadenze delle misure prescrittive contenute nelle Determine Autorizzative.\nTi aiutiamo a… eseguire tutte le analisi e i rilievi ambientali previsti nell’Autorizzazione.\n', 1, 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2024-04-22 23:09:49', '2024-04-22 23:09:49'),
(2, 'Gestione degli adempimenti ambientali periodici', 'gestione-degli-adempimenti-ambientali-periodici', '', 'Ottenere o essere già in possesso di un’Autorizzazione Ambientale non è sufficiente. Le misure prescrittive in essa contenute infatti, devono essere rispettate dal gestore dell’attività, così da essere pienamente in linea con la Normativa vigente in campo ambientale.\r\nTetralab, a completamento di una Consulenza ambientale personalizzata, può supportare la tua attività anche dopo l’ottenimento di un’Autorizzazione Ambientale. Come?\r\nPossiamo affiancarti nel… comprendere le prescrizioni assegnate dagli Enti nelle Determine Autorizzatorie.\r\nPossiamo affiancarti nel… provvedere regolarmente al rispetto delle relative periodicità e scadenze.\r\nPossiamo affiancarti nel… gestire eventuali non conformità rilevate nel corso delle misurazioni periodiche previste dalle Autorizzazioni.\r\n', 1, 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2024-04-23 00:10:28', '2024-04-23 00:10:28'),
(3, 'Studi di impatto ambientale', 'studi-di-impatto-ambientale', '', 'Per le attività soggette ad autorizzazioni ambientali (AIA, VIA, AUA), quali grandi impianti industriali, infrastrutture stradali, ferroviarie, aeroportuali, ecc., la normativa ambientale prevede che debba essere eseguito uno studio di impatto ambientale previsionale che consenta di prevedere in anticipo evenutuali problematiche di inquinamento quali, ad esempio:\r\nimpatto acustico: la valutazione previsionale consente di verificare l’impatto da rumore nell’ambiente esterno prodotto da un nuovo stabilimento o da una nuova strada e, qualora necessario, verificare la necessità e l’efficacia di interventi di abbattimento acustico;\r\nimpatto odorigeno: a partire da dati rilevati da misurazioni o di letteratura, si riesce a calcolare quale sarà l’impatto ambientale presso ricettori da sorgenti di odore quali impianti di depurazione, allevamenti zootecnici, industrie alimentari, discariche, ecc.\r\nimpatto sulla qualità dell’aria: l’ampliamento o la costruzione di nuove strade comporta un cambiamento anche dell’impatto atmosferico prodotto dal traffico autoveicolare, così come la costruzione di nuovi stabilimenti industriali aventi emissioni in atmosfera, può comportare un trasferimento degli inquinanti dai loro camini, dovuti all’azione del vento, presso ricettori anche lontani.\r\nTetralab, con l’ausilio di sofisticati software dotati di modelli di calcolo basati su standard riconosciuti a livello internazionale, esegue le valutazioni previsionali calcolando e simulando l’impatto dell’inquinamento nell’ambiente circostante nella fasi ante e post operam, in fase di cantiere e a seguito di eventuali interventi di abbattimento dell’inquinante.\r\n', 1, 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2024-04-23 00:11:44', '2024-04-23 00:11:44'),
(4, 'Campionamenti ed analisi delle Emissioni in atmosfera convogliate, diffuse e odorigene', 'campionamenti-ed-analisi-delle-emissioni-in-atmosfera', '', 'Le emissioni in atmosfera sono uno degli elementi che impattano maggiormente sull’ambiente, causando inquinamento. Pertanto ogni azienda interessata da emissioni in atmosfera, per poter esercitare la propria attività, è tenuta ad ottenere una preventiva autorizzazione dagli Enti preposti e a rispettare, così come indicato nel Testo Unico sull’Ambiente D.Lgs. 152/06, i valori limite di emissione degli inquinanti da monitorare durante le condizioni di esercizio più gravose, le relative prescrizioni, i metodi di campionamento e di analisi, i criteri per la valutazione della conformità e la periodicità del monitoraggio delle emissioni prodotte.\r\nIn cosa consiste il servizio che offriamo?\r\nLa nostra squadra di tecnici campionatori esegue i rilievi sui condotti delle emissioni in atmosfera, per la determinazione di numerosi parametri chimico-fisici, quali ad esempio portata, temperatura, umidità, polveri, metalli, SOV, NOx, SOx, H2S, NH3, O2, CO, ecc. Successivamente i campioni prelevati vengono consegnati ai tecnici del nostro laboratorio chimico per le determinazioni analitiche, effettuate secondo metodologie ufficiali, così da garantire risultati attendibili.', 3, 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', NULL, NULL),
(5, 'Campionamenti ed analisi di Acque reflue, meteoriche e sotterranee, di pozzo, potabili', 'campionamenti-ed-analisi-di-acque-reflue-meteoriche-e-sotterranee', '', 'La legislazione vigente richiede alle aziende di esercitare l’attività nel rispetto di ogni possibile forma di inquinamento dell’ambiente, assicurando che la qualità delle acque reflue, meteoriche e sotterranee, di pozzo e potabili, sia conforme ai valori limite imposti.\r\nChe differenze ci sono?\r\nAcque reflue industriali: qualsiasi tipo di acque reflue scaricate da edifici o impianti in cui si svolgono attività commerciali o di produzione di beni\r\nAcque meteoriche di dilavamento: parte delle acque di una precipitazione atmosferica che dilavano le superfici scolanti \r\nAcque meteoriche di prima pioggia: acque che cadendo sulla superficie, durante la fase iniziale di un evento meteorico, provocano effetti di dilavamento incisivi , di superfici di aree scoperte e si presentano spesso cariche di inquinanti di varia origine e natura \r\nAcque di seconda pioggia: acque meteoriche che dilavano le superfici scolanti, successivamente alle acque di prima pioggia, durante lo stesso evento meteorico\r\nAcque sotterranee: tutte le acque che si trovano al di sotto della superficie del suolo, nella zona di saturazione e in diretto contatto con il suolo e il sottosuolo\r\nAcque di pozzo: acque provenienti dalle falde acquifere sotterranee, utilizzabili per diverse attività lavorative\r\nAcque potabili: acque destinate al consumo umano\r\nIl nostro laboratorio Accreditato ACCREDIA per numerose prove, effettua le analisi delle acque suddette, seguendo metodologie analitiche ufficiali, verificando il rispetto dei limiti imposti dalle normative di riferimento vigenti.\r\nPartecipiamo inoltre a prove interlaboratorio nazionali e internazionali, assicurando così la precisione dei risultati e un alto livello di qualità, conformemente alla normativa UNI EN ISO/IEC 17025:2005.\r\n', 3, 'storage/iStock-1592352565.jpg', NULL, NULL),
(6, 'Campionamenti ed analisi di caratterizzazione Rifiuti', 'campionamenti-ed-analisi-di-caratterizzazione-rifiuti', '', 'La gestione dei rifiuti e la bonifica dei siti inquinati è disciplinata dalla parte quarta del D.Lgs. 152/2006 che prevede misure volte a proteggere l’ambiente e la salute umana, nel rispetto di un ordine gerarchico di priorità di ciò che costituisce la migliore opzione ambientale: prevenzione, preparazione per il riutilizzo, riciclaggio, recupero di altro tipo, per esempio il recupero di energia e smaltimento.\r\nQuindi ogni azienda che produce o gestisce rifiuti ovvero “qualsiasi sostanza od oggetto di cui il detentore si disfi o abbia l\'intenzione o abbia l\'obbligo di disfarsi”, deve dare seguito a quanto indicato nel Testo Unico sull’Ambiente al fine di rafforzarne il riutilizzo, la prevenzione, il riciclaggio e il recupero.\r\nIl nostro laboratorio Accreditato ACCREDIA per numerose prove, esegue analisi di caratterizzazione rifiuti.\r\nIn particolare ci occupiamo di:\r\nCampionamento di rifiuti solidi, liquidi e fangosi ai sensi della norma UNI 10802 inclusa la redazione del Piano di Campionamento ai sensi del norma UNI EN 14899;\r\nAnalisi merceologiche e di caratterizzazione e classificazione dei rifiuti;\r\nAnalisi ai fini dello smaltimento in discarica e/o avvio ad impianto di trattamento/recupero.\r\nPartecipiamo inoltre a prove interlaboratorio nazionali e internazionali, assicurando così la precisione dei risultati e un alto livello di qualità, conformemente alla normativa UNI EN ISO/IEC 17025:2005.\r\n', 3, 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', NULL, NULL),
(7, 'Campionamenti ed analisi di Terreni e matrici assimilabili', 'campionamenti-ed-analisi-di-terreni-e-matrici-assimilabili', '', 'Il campionamento e l’analisi dei terreni è  essenziale per valutare il grado di contaminazione, cioè di alterazione delle caratteristiche qualitative che potrebbe rappresentare un rischio per la salute umana, di suoli destinati a scopi commerciali, industriali, residenziali o pubblici.\r\nIl nostro laboratorio Accreditato ACCREDIA per numerose prove, esegue le analisi chimiche di Terreni e matrici assimilabili dei composti organici e inorganici tra cui pesticidi, idrocarburi pesanti, metalli pesanti, BTEX, IPA, PCB, ecc.\r\nIn particolare ci occupiamo del campionamento e delle successive analisi di:\r\nTerreni contaminati o potenzialmente contaminati (in accordo al Tab. 1 A/B del D.Lgs n. 152/2006 All. 5 Part. IV Titolo V);\r\nTerreni vegetale e/o terre e rocce da scavo da avviare alle procedure di recupero o riutilizzo\r\nPartecipiamo inoltre a prove interlaboratorio nazionali e internazionali, assicurando così la precisione dei risultati e un alto livello di qualità, conformemente alla normativa UNI EN ISO/IEC 17025:2005.\r\n', 3, 'storage/iStock-1256608469.jpg', NULL, NULL),
(8, 'Elaborazione del Documento sulla Valutazione dei Rischi', 'elaborazione-del-documento-sulla-valutazione-dei-rischi-dvr', '', 'Il DVR, ovvero il Documento di Valutazione del Rischio, è il biglietto da visita che un\'organizzazione aziendale che si rispetti deve possedere, in quanto tratta il tema della prevenzione per la salute e la sicurezza nei luoghi di lavoro. Hai già il tuo?\r\nSi tratta di un documento obbligatorio per tutte le aziende con almeno un dipendente, che il datore di lavoro deve aggiornare regolarmente se effettua modifiche organizzative e del processo produttivo, così da garantire un ambiente di lavoro sicuro. In ogni caso bisogna considerare che la valutazione di alcuni rischi specifici va comunque aggiornata ogni tre o quattro anni (ad esempio: rumore, vibrazioni, radiazioni ottiche artificiali, agenti chimici e cancerogeni, ecc.).\r\nConosci davvero tutti i rischi potenziali della tua azienda? Sai quali sono le conseguenze dannose che possono derivare da tutte le sue attività lavorative?\r\nSe ti senti sopraffatto dalla mole di lavoro che tutto ciò comporta, non preoccuparti, Tetralab è pronta ad aiutarti. Offriamo un servizio di Consulenza mirata ad affiancare il datore di lavoro nella valutazione dei rischi per la salute e sicurezza dei suoi lavoratori.\r\nI nostri tecnici qualificati possono aiutarti a predisporre un DVR completo e personalizzato, che rispecchi appieno la situazione attuale della tua azienda. Sopralluoghi preliminari, raccolta di dati, rilievi, campionamenti e valutazione di tutti rischi ci permetteranno di  individuare, dove necessario, tutte le misure di prevenzione e protezione opportune che il datore dovrà poi attuare.\r\n', 2, 'storage/iStock-857478372.jpg', NULL, NULL),
(9, 'Rilievi, campionamenti e valutazioni dei rischi specifici', 'rilievi-campionamenti-e-valutazioni-dei-rischi-specifici', '', 'La valutazione dei rischi è un obbligo non delegabile per il datore di lavoro. L’articolo 2 del D.Lgs 81/2008 intende infatti per valutazione dei rischi una “valutazione globale e documentata di tutti i rischi per la salute e sicurezza dei lavoratori presenti nell’ambito dell’organizzazione in cui essi prestano la propria attività, finalizzata ad individuare le adeguate misure di prevenzione e di protezione e ad elaborare il programma delle misure atte a garantire il miglioramento nel tempo dei livelli di salute e sicurezza.”\r\nIn molti casi è obbligatorio eseguire misure strumentali insieme alla valutazione dei rischi, così da poter confrontare i risultati ottenuti con i valori limite di esposizione stabiliti dal Testo Unico sulla Sicurezza sul Lavoro.\r\nQui entra in gioco Tetralab! Siamo attrezzati per eseguire tutte le tipologie di valutazioni strumentali, garantendo affidabilità e completezza. Disponiamo infatti della strumentazione necessaria che ci consente di operare nel rispetto di quanto previsto dalla Normativa.\r\nSolo così possiamo assicurarti un documento di valutazione dei rischi puntuale ed efficace in ogni sua parte, volto realmente a tutelare la salute e la sicurezza di ogni dipendente della tua azienda.\r\n', 2, 'storage/iStock-1184970341.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Luym15Me9NwEb6QNyWIagXq2ecVOMf3UOY3o5nTx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHNCcXQ5clpONTZ4MFFMQ1RIYjdKVE5xdnVCMnNrZkxTVnliSzZKUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zdG9yaWEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722424667);

-- --------------------------------------------------------

--
-- Struttura della tabella `sub_services`
--

CREATE TABLE `sub_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sub_services`
--

INSERT INTO `sub_services` (`id`, `title`, `description`, `image`, `service_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Autorizzazione Integrata Ambientale (AIA)', 'L’AIA è un provvedimento autorizzativo finalizzato a tenere sotto controllo tutti gli impatti ambientali generati da specifiche tipologie di impianti che, in esercizio, a causa delle emissioni in atmosfera, degli scarichi idrici, delle emissioni di rumore, della produzione di rifiuti ad esse associati, dei consumi energetici, ecc. sono considerate in grado di generare inquinamento.\r\nHa una durata di 10 anni, dalla data del rilascio, con qualche eccezione: 12 anni se l’impianto è certificato secondo la norma UNI EN ISO 14001 e 16 anni se l’impianto è registrato ai sensi del Regolamento CE n 1221/2009 (EMAS), salvo modifiche impiantistiche che ne richiedono una revisione.\r\nTetralab si occupa di seguire costantemente tutte le scadenze previste nel PMeC (Piano di Monitoraggio e Controllo) oltre che della consulenza in caso di istanze di autorizzazione, modifica o riesame.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1, '2024-04-22 23:16:25', '2024-04-22 23:16:25', 'aua'),
(2, 'Autorizzazione Unica Ambientale (AUA)', 'L’AUA è un’autorizzazione ambientale, introdotta per semplificare gli adempimenti amministrativi per le attività ad impatto ambientale ridotto rispetto agli impianti soggetti ad AIA.\nHa una durata di 15 anni dalla data del rilascio e, in caso di modifiche degli impianti, deve essere richiesta preventiva autorizzazione.\nTetralab si occupa di seguire costantemente tutte le scadenze previste tra le prescrizioni della Determina autorizzativa, oltre che della consulenza in caso di istanze di autorizzazione, modifica o rinnovo.\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1, '2024-04-22 23:16:25', '2024-04-22 23:16:25', 'aua'),
(3, 'Rischio rumore', 'Lavori in un ambiente in cui si produce quotidianamente rumore? E’ importante essere consapevoli che l’esposizione a questo rischio potrebbe portare ad una malattia professionale, fra cui ad esempio sordità e/o disturbi del sistema nervoso ed incorrere in sanzioni.\r\nSapevi che è obbligatorio effettuare la valutazione del rischio rumore, così come previsto dal D.Lgs. 81/2008? E che deve essere eseguita con cadenza almeno quadriennale o aggiornata ogni volta che si verificano dei cambiamenti che potrebbero renderla obsoleta?\r\nTetralab ti segue passo passo nell’elaborazione del documento di valutazione del rischio rumore. Come?\r\nI nostri tecnici qualificati effettueranno misure strumentali fonometriche in diversi punti della tua azienda, in maniera tale da ottenere dati precisi, affidabili e completi, che ti permetteranno di verificare il livello di esposizione al rumore dei tuoi dipendenti. A seguito della valutazione ti suggeriranno tutte le misure di prevenzione e protezione da adottare\r\n', 'storage/iStock-962534932.jpg', 9, NULL, NULL, 'rischio-rumore'),
(4, 'Rischio vibrazioni meccaniche', 'Nella tua azienda vengono impiegate attrezzature come martelli pneumatici, motoseghe, gru, trattori, ruspe, carrelli elevatori, ecc., che espongono quotidianamente i tuoi dipendenti a vibrazioni meccaniche? Queste ultime possono causare rischi per la salute e la sicurezza dei tuoi dipendenti, fra cui disturbi vascolari, osteoarticolari, neurologici o muscolari, lombalgie e traumi del rachide.\r\nIl D.Lgs. 81/2008 prevede che venga effettuata obbligatoriamente una valutazione del rischio vibrazione e che venga ripetuta con cadenza almeno quadriennale o aggiornata ogni volta che si verificano dei cambiamenti che potrebbero renderla obsoleta.\r\nTetralab è qui per darti una mano, affiancandoti nell’elaborazione del documento di valutazione del rischio vibrazioni meccaniche. Come?\r\nI nostri tecnici competenti in materia, si recheranno nella tua azienda ed effettueranno misure strumentali con accelerometro, al sistema mano-braccio e al corpo intero, dei livelli di vibrazione a cui sono esposti i lavoratori. In questo modo potremo accertare che i valori scaturiti rientrino nei limiti definiti dalla Normativa e, in caso contrario, ti indicheremo tutte le misure di prevenzione e protezione più adeguate da adottare per i tuoi dipendenti.\r\n', 'storage/iStock-1054164320.jpg', 9, NULL, NULL, 'rischio-vibrazioni-meccaniche'),
(5, 'Rischio campi elettromagnetici', 'Nei luoghi di lavoro esiste un rischio silenzioso ma potenzialmente dannoso: l\'esposizione ai campi elettrici, magnetici ed elettromagnetici, generati da macchinari alimentati ad energia elettrica. Questo rischio potrebbe essere causa di malattie professionali, che possono coinvolgere l’apparato riproduttivo, cardiocircolatorio, visivo, nervoso e il sistema immunitario. Inoltre è importante tenere conto dei dipendenti con pacemaker, ad esempio, dato che i campi elettromagnetici potrebbero incidere sul funzionamento di tali dispositivi.\r\nIl datore di lavoro è perciò obbligato ad effettuare regolarmente la valutazione del rischio di esposizione a campi elettromagnetici (CEM), così come previsto dal D.Lgs. 81/2008. Deve essere eseguita con cadenza almeno quadriennale o aggiornata ogni volta che si verificano dei cambiamenti che potrebbero renderla obsoleta.\r\nTetralab può aiutarti nell’esecuzione della valutazione del rischio CEM. Come?\r\nIl nostro approccio prevede misure strumentali precise dei livelli di esposizione ai campi elettromagnetici, al fine di valutare accuratamente l’entità del rischio e fornirti indicazioni pratiche su come poter tutelare nel migliore dei modi la salute dei tuoi dipendenti.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischio-campi-elettromagnetici'),
(6, 'Rischio microclima', 'Ti assicuri che nella tua azienda i lavoratori dispongano di temperatura adeguata durante il tempo di lavoro e di umidità dell’aria nei limiti compatibili con le esigenze tecniche? Il loro benessere termico dev’essere una priorità per il datore di lavoro.\r\nIl D.Lgs. 81/2008 prevede infatti, che la valutazione dei rischi da agenti fisici venga effettuata con cadenza almeno quadriennale o venga aggiornata ogni qual volta si verifichino mutamenti che potrebbero renderla obsoleta.\r\nTetralab è qui per te! Possiamo seguirti nell’esecuzione della valutazione del rischio microclima. Come?\r\nRecandoci nella tua azienda, effettueremo misure strumentali dei livelli di esposizione al microclima dei tuoi dipendenti con stazione microclimatica. Questo ci consente di determinare gli indici di stress termico e/o di comfort termo-igrometrico, al fine di garantire un ambiente di lavoro confortevole e sicuro.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischio-microclima'),
(7, 'Rischio agenti chimici pericolosi', 'Lavori in un ambiente in cui si producono, manipolano o anche solo immagazzinano agenti chimici?\r\nEssi rientrano tra le principali cause di rischio per la salute del lavoratore, che il datore non può e non deve sottovalutare.\r\nEgli infatti è tenuto a identificare preventivamente l’eventuale presenza di agenti chimici pericolosi sul luogo di lavoro e a predisporre tutte le misure necessarie per ridurre il rischio e tutelare la salute e la sicurezza dei suoi dipendenti.\r\nTetralab può seguirti nell’elaborazione del documento di valutazione da esposizione ad agenti chimici pericolosi. Come?\r\nI nostri tecnici della prevenzione effettueranno misurazioni strumentali approfondite per valutare il grado di pericolosità degli agenti chimici, in relazione alle condizioni di utilizzo o di esposizione e per stabilire le misure di prevenzione e protezione necessarie per ridurre al minimo il rischio.\r\nInoltre nel caso in cui si tratta di una nuova attività, che comporta la presenza di agenti chimici pericolosi, potrà cominciare ad operare solo dopo che si sia proceduto alla valutazione dei rischi e all’attuazione delle misure di prevenzione.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischio-agenti-chimici-pericolosi'),
(8, 'Rischio agenti chimici cancerogeni', 'Sapevi che gli agenti chimici cancerogeni, quali ad esempio benzene, amianto, polveri di legno, silice cristallina, ecc., costituiscono una fonte di rischio importante per la salute dei lavoratori che vi sono esposti? Tra le malattie professionali che ne possono derivare c’è, infatti, il tumore.\r\nSecondo il D.Lgs. 81/2008 il datore di lavoro è tenuto ad evitare o ridurre l’uso di agenti cancerogeni sul luogo di lavoro, sostituendoli con sostanze non nocive o meno nocive. Se ciò non è tecnicamente possibile, devono essere adottate misure di prevenzione e protezione individuali e/o collettive, per ridurre al minimo l’esposizione.\r\nLa valutazione del rischio è obbligatoria e deve essere effettuata ogni volta che si verificano modifiche significative nel processo produttivo e, in ogni caso, trascorsi tre anni dall’ultima valutazione effettuata.\r\nTetralab può aiutare il datore nell’elaborazione del documento di valutazione del rischio da esposizione ad agenti chimici cancerogeni. Come?\r\nEffettuiamo misure strumentali dei livelli di esposizione ad agenti chimici cancerogeni, per tener conto di tutti i possibili modi di esposizione del lavoratore, compreso l’assorbimento cutaneo. In base ai risultati, forniremo al datore di lavoro tutte le indicazioni necessarie circa le misure preventive e protettive da adottare, per tutelare la salute dei suoi dipendenti.\r\n', 'storage/Downloader-La-977765.jpg', 9, NULL, NULL, 'rischio-agenti-chimici-cancerogeni'),
(9, 'Rischio movimentazione manuale dei carichi', 'Hai mai pensato che la movimentazione manuale dei carichi (MMC) potrebbe costituire un rischio per i tuoi lavoratori? Tutto l’insieme di azioni lavorative fra cui sollevare, deporre, spingere, tirare, portare, spostare ecc. un carico, può mettere a rischio la salute dei tuoi dipendenti, portando a patologie da sovraccarico biomeccanico in particolare dorso-lombari, in funzione dello sforzo fisico richiesto, dei fattori individuali e delle condizioni ergonomiche dell’ambiente lavorativo. \r\nIl D. Lgs. 81/08 obbliga il datore di lavoro di ridurre al minimo i rischi derivanti dalla movimentazione manuale dei carichi, effettuando preliminarmente una valutazione dell’esposizione al rischio.\r\nTetralab può seguirti passo passo nell’elaborazione del documento di valutazione del rischio MMC. Come?\r\nI nostri tecnici eseguono rilievi e misure strumentali con dinamometro certificato, recandosi nella tua azienda e verificando le modalità di svolgimento delle azioni di movimentazione dei carichi, con lo scopo di individuare le fonti del rischio e fornirti le migliori soluzioni per bilanciare le esigenze produttive alle esigenze di salute e sicurezza dei lavoratori.\r\n', 'storage/Downloader-La-977765.jpg', 9, NULL, NULL, 'rischio-movimentazione-manuale-dei-carichi'),
(10, 'Rischi di esposizione ad agenti biologici', 'Vengono adoperati nella tua azienda agenti biologici? Conosci i rischi per la salute a cui puoi andare incontro? Il D.Lgs. 81/2008 identifica un agente biologico come un “qualsiasi microrganismo anche se geneticamente modificato, coltura cellulare ed endoparassita umano che potrebbe provocare infezioni, allergie o intossicazioni”.\r\nLa valutazione del rischio biologico è obbligatoria e deve essere effettuata in occasione di modifiche del processo produttivo significative ai fini della sicurezza e della salute sul lavoro e, in ogni caso, trascorsi tre anni dall’ultima valutazione effettuata.\r\nTetralab può seguire il datore nell’elaborazione del documento di valutazione del rischio da esposizione ad agenti biologici. Come?\r\nEffettuiamo misure strumentali dei livelli di esposizione ad agenti biologici, a completamento della valutazione, con lo scopo di evidenziare eventuali rischi per la salute dei lavoratori e indirizzare il datore ad attuare misure tecniche, organizzative e procedurali, per evitare ogni tipo di esposizione.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischi-di-esposizione-ad-agenti-biologici'),
(11, 'Rischio atmosfere esplosive', 'Sai cos’è un’atmosfera esplosiva, anche nota come ATEX (acronimo di “ATmosphere EXplosive”)? Il D.Lgs. 81/2008 specifica che si tratta di “una miscela con l’aria, a condizioni atmosferiche, di sostanze infiammabili allo stato di gas, vapori, nebbie o polveri in cui, dopo accensione, la combustione si propaga nell’insieme della miscela incombusta”. Questo rischio può essere presente in luoghi di lavoro come stabilimenti per la lavorazione degli alimenti, mulini, depositi di carburante, industrie del legno, attività di verniciatura, impianti di produzione d\'energia, ecc. E’ il tuo caso?\r\nTetralab è pronta ad aiutarti nell\'elaborazione del documento di valutazione del rischio ATEX. Come?\r\nI nostri tecnici qualificati eseguiranno, a mezzo di sopralluogo tecnico presso la tua azienda, la compilazione di una check-list delle fonti di rischio e ti forniranno quindi le migliori indicazioni per orientarti alla riduzione dei rischi da esplosione delle aree in cui possono formarsi atmosfere esplosive per la presenza di polveri e/o gas.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischio-atmosfere-esplosive'),
(12, 'Rischio radon', 'Hai mai sentito parlare del rischio radon? \r\nSi tratta di un gas radioattivo non percepibile, poiché incolore e inodore, che tende ad accumularsi negli spazi chiusi, soprattutto interrati e seminterrati, a causa della sua traspirazione attraverso il suolo. Pertanto non è da sottovalutare, poiché può avere un impatto significativo sulla salute dei lavoratori, in modo particolare sull’apparato respiratorio costituendo la seconda causa mondiale di insorgenza di tumori polmonari.\r\nTetralab può seguire il datore nell’elaborazione del documento di valutazione del rischio Radon. Come?\r\nEffettuiamo misure strumentali della concentrazione di gas radon, garantendo una valutazione precisa e accurata della sua concentrazione media annua, monitorandola cioè, durante due campagne semestrali (autunno-inverno e primavera-estate). In tal modo se i valori superano i limiti stabiliti dalla normativa il datore di lavoro dovrà attivarsi per adottare misure di riprogettazione e manutenzione degli spazi interrati, seminterrati e a piano terra.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischio-radon'),
(13, 'Rischio videoterminali', 'Nella tua azienda vengono impiegati videoterminali? Sai che rappresentano un rischio per i lavoratori che vi sono esposti in maniera prolungata, principalmente all’apparato muscolo-scheletrico, nervoso e visivo?\r\nSecondo il D.Lgs. 81/2008, è obbligatorio per il datore di lavoro valutare il rischio derivante dall\'uso dei videoterminali (VDT).\r\nTetralab può seguirti nell’elaborazione del documento di valutazione del rischio VDT. Come?\r\nEseguiamo, a completamento della valutazione, una verifica puntuale delle postazioni di lavoro, a mezzo di sopralluogo tecnico e check-list, con l’obiettivo di individuare le misure tecniche o organizzative più adatte per garantire un ambiente di lavoro ergonomico. Questo consentirà di ridurre al minimo l’esposizione e i potenziali rischi derivanti, per i lavoratori.', 'storage/Downloader-La-838156.jpg', 9, NULL, NULL, 'rischio-videoterminali'),
(14, 'Rischio stress-lavoro correlato', 'Nella tua azienda si verificano spesso casi di assenteismo, avvicendamento frequente del personale, scarsa produttività e aumento degli errori commessi? Questi sono solo alcuni segnali di problemi di natura emotiva, cognitiva e comportamentale, che ogni lavoratore potrebbe vivere nel proprio contesto lavorativo.\r\nSapevi che, per ovviare a tutto questo, il datore di lavoro deve valutare e gestire il rischio stress-lavoro correlato al pari di tutti gli altri rischi? Esso infatti non è da sottovalutare, poiché lo stress è una condizione prolungata di tensione, causata da vari fattori propri del contesto e del contenuto del lavoro, che può ridurre l’efficienza e può determinare un cattivo stato di salute. \r\nTetralab può seguire il datore nell’elaborazione del documento di valutazione del rischio stress-lavoro correlato. Come? \r\nI nostri tecnici qualificati somministreranno un questionario ai lavoratori, che metterà in evidenza i fattori di rischio da stress-lavoro correlato, presenti sul posto di lavoro, consentendo di ottenere un quadro conoscitivo della problematica, che consenta al datore di adottare tutte le misure più opportune.\r\n', 'storage/Downloader-La-347371.jpg', 9, NULL, NULL, 'rischio-stress-lavoro-correlato'),
(15, 'Rischio incendio', 'Sai che il rischio incendio può essere presente in qualsiasi ambiente lavorativo? E’ fondamentale esserne consapevoli e sapere quali misure è necessario adottare per prevenirlo o ridurlo.\r\nIl Decreto Ministeriale 03/09/2021 indica infatti tutti i criteri che le aziende devono adottare per effettuare una corretta valutazione del rischio incendio e la relativa classificazione. Ne hai mai sentito parlare?\r\nTetralab può seguire il datore nell’elaborazione del documento di valutazione del rischio incendio. Come? I nostri tecnici qualificati eseguiranno i rilievi sul campo, valutando tutti i fattori di rischio che possono provocare un incendio e individuando i punti critici per il tuo stabilimento.\r\n', 'storage/Downloader-La-304768.jpg', 9, NULL, NULL, 'rischio-incendio'),
(16, 'Rischio illuminamento', 'Il D.Lgs. 81/2008 include nella valutazione dei rischi per la salute e la sicurezza dei lavoratori, il rischio illuminamento. Sapevi che l’illuminazione, generale e specifica, naturale o artificiale, in un ambiente di lavoro deve garantire al lavoratore comfort visivo, senza incorrere così ad abbagliamento o sfarfallio? Un inadeguato livello di illuminazione può essere causa di infortuni o stanchezza visiva.\r\nTetralab può seguire il datore nell’elaborazione del documento di valutazione del rischio illuminamento. Come? \r\nEseguiamo rilievi strumentali con luxmetro del livello di illuminamento presente negli ambienti di lavoro e successivamente confrontiamo i valori rilevati con quelli indicati dalle norme tecniche, in modo da poter suggerire al datore di lavoro quali interventi di miglioramento adottare per la riduzione dei potenziali rischi.\r\n', 'https://images.unsplash.com/photo-1587614203976-365c74645e83?q=80&w=480&h=600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 9, NULL, NULL, 'rischio-illuminamento');

-- --------------------------------------------------------

--
-- Struttura della tabella `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `teams`
--

INSERT INTO `teams` (`id`, `name`, `role`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Andrea Cursoli', 'Socio e Direttore generale', '/storage/team/andrea_corretto.png', 'Andrea è il motore propulsore di Tetralab, socio e direttore generale, laureato in Scienze delle Professioni Sanitarie della Prevenzione, con precedente percorso universitario in Scienze Biologiche. \r\nCon passione e dedizione, guida tutto il team, favorendo un ambiente di lavoro dinamico, piacevole e coinvolgente. Ama il lavoro che svolge, instancabilmente, tanto che, in virtù della grande esperienza che ha acquisito nel suo settore lavorativo e con la sua indole proattiva e sognatrice, è sempre pronto ad affrontare ogni sfida con professionalità e precisione, coordinando tutte le attività di Tetralab.\r\nMa Andrea non è solo lavoro: adora condividere momenti conviviali attorno a una tavola imbandita con amici e collaboratori, coltiva il suo orto con entusiasmo e la sua più grande passione è viaggiare in moto.\r\nInoltre, per mantenere mente e corpo in forma, nel tempo libero frequenta anche la palestra.\r\nIl suo obiettivo, sin da quando Tetralab era ancora soltanto un suo progetto, è sempre stato quello di conciliare professionalità e passione, per far sì che la sua impresa diventasse un punto di riferimento e di fiducia per le aziende impegnate negli adempimenti in materia ambientale e di sicurezza sul lavoro.\r\n', NULL, NULL),
(3, 'Giovanna Maggipinto', 'Socio fondatore e Direttore tecnico', '/storage/team/giovanna_corretto.png', 'Giovanna, socio fondatore di Tetralab, è una professionista ambiziosa e appassionata del suo lavoro. Crede fermamente che impegno, organizzazione e senso di responsabilità siano pilastri fondamentali per il successo dell’azienda. Infatti, riflessiva e affidabile quale lei è, si dedica con attenzione al controllo qualità e alla validazione dei dati analitici.\r\nCon una formazione accademica solida come Biologa e Dottore di ricerca, nonché iscritta all\'Ordine dei Biologi della Puglia e Basilicata, si occupa anche delle analisi microbiologiche.\r\nNel suo tempo libero coltiva la passione per la realizzazione di lavori manuali e per la cucina, creando piatti deliziosi, che le permettono di esprimere la sua creatività.\r\n', NULL, NULL),
(4, 'Daniela Cursoli ', 'Impiegata amministrativa', '/storage/team/daniela_corretto.png', 'Daniela, cuore amministrativo della nostra squadra, con la sue competenze digitali e di calcolo, affinate da autodidatta e in continuo aggiornamento, si occupa con dedizione della fatturazione, dei pagamenti, della contabilità aziendale, dell\'archiviazione e di tutto ciò che riguarda la gestione amministrativa di Tetralab.\r\nSi lancia con determinazione e creatività in ogni sfida, trasformando i compiti più ardui in opportunità e dimostrando una precisione e un’onestà che permeano ogni aspetto della sua vita, sia professionale che personale. \r\nAl di fuori dell\'orario di lavoro, trova ispirazione nella natura e si dedica amorevolmente agli animali, con la profonda sensibilità che la contraddistingue.\r\n', NULL, NULL),
(5, 'Daniela Palmieri', 'Impiegata amministrativa', '/storage/team/', 'Daniela, la nostra segretaria, dal carattere frizzante e allegro, non si limita certo a rispondere alle telefonate e a girarle ai vari reparti. Si occupa infatti, anche dell’elaborazione delle offerte, dell’accettazione dei campioni da analizzare, grazie al nostro gestionale LIMS, e collabora con l’amministrazione. Interagire con ogni settore dell\'azienda, le permette perciò di favorire il funzionamento di tutti i processi aziendali.\r\nNel tempo libero sprigiona la sua vena artistica dedicandosi a hobby che la rilassano e la stimolano: dal restyling dei mobili alla realizzazione di lavoretti con una varietà di materiali, come pannolenci, carta, legno e paste modellabili.\r\nIn breve, con lei non c\'è mai un momento di noia. E’ sempre attiva e creativa, sia nella sua vita privata che nel lavoro. Infatti, il suo spirito socievole, scherzoso e accogliente, rende ogni giornata lavorativa un\'avventura piacevole e divertente.\r\n', NULL, NULL),
(6, 'Michele Miccoli', 'Referente commerciale', '/storage/team/michele_corretto.png', 'Michele, agente di commercio presso Tetralab, è un abile professionista che, con ambizione e una caparbietà che non conosce ostacoli, si impegna a raggiungere risultati sempre migliori, perché mosso da una sana competitività. \r\nCon dedizione si occupa perciò, della ricerca dei clienti e della gestione dei rapporti commerciali, rendendoli solidi e duraturi, grazie anche alla sua empatia.\r\nFuori dall’orario di lavoro, si interessa di critica storica e di politica, ama conoscere il territorio attraverso viaggi culturali ed enogastronomici e non perde mai l’occasione di seguire con grande passione diversi sport, tra cui football americano, calcio, tennis e basket.\r\n', NULL, NULL),
(7, 'Valeria D’Amico', 'Chimico analitico', '/storage/team/valeria_corretto.png', 'Valeria e la sua passione per la chimica hanno radici profonde che risalgono a quando aveva quindici anni, momento in cui ha scoperto questo affascinante mondo. Da allora ha dedicato i suoi studi universitari alla chimica, fino ad iscriversi all’Ordine dei Chimici della Provincia di Lecce e Brindisi, dopo aver conseguito brillantemente la Laurea Magistrale. \r\nE’ appassionata anche di musica; cantare, infatti, la rilassa e le piace dilettarsi nel suonare la chitarra. Ama sperimentare cose nuove, soprattutto in cucina, e nelle belle giornate non si fa mancare una passeggiata al mare.\r\nNel laboratorio di Tetralab, con la precisione e la caparbietà che la contraddistinguono, si occupa delle analisi chimico-fisiche di campioni di aria, acque reflue e sotterranee, rifiuti e terreni e della elaborazione dei risultati, sempre pronta a mettere le sue competenze al servizio del team.\r\n', NULL, NULL),
(8, 'Domenico Linsalata', 'Chimico analitico', '/storage/team/domenico.png', 'Domenico, Chimico con Laurea Magistrale in Scienze Chimiche, ha una grande passione per le tematiche della sostenibilità ambientale, dell’economia circolare, del trattamento delle acque e della gestione dei rifiuti, settori nei quali ha acquisito competenze con la sua esperienza lavorativa.\r\nCon una grande attitudine al raggiungimento degli obiettivi e alla risoluzione dei problemi, nel lavoro, oltre che nella vita, e con grande determinazione e passione, insieme al team di Tetralab si occupa dei campionamenti di emissioni in atmosfera, acque reflue e sotterranee, rifiuti e terreni.\r\nLa musica è l\'altra faccia della sua medaglia, infatti Domenico è un pianista di formazione classica, ma di anima jazz, ama l\'improvvisazione, e la composizione. E attualmente è tastierista in un piccolo gruppo di musica swing e organista presso una parrocchia del suo comune.\r\nLa sua creatività si estende anche alla programmazione e alla stampa 3D e oltre alla sua propensione verso la chimica e la musica, trova il tempo per esplorare altre passioni, come il ciclismo, l\'escursionismo e l\'arrampicata. \r\n', NULL, NULL),
(9, 'Claudio De Luca', 'Perito chimico', '/storage/team/caludio.png', 'Claudio, curioso e intraprendente è il nostro punto di riferimento per tutto ciò che riguarda i rilievi e i campionamenti ambientali. \r\nCon la sua passione per lo sport, sia sul campo da calcio che in palestra, porta la sua dinamicità in ogni situazione lavorativa. Deciso, scrupoloso e con la sua naturale propensione al lavoro di squadra, è sempre pronto a unirsi agli altri membri del team per assicurare una responsabile organizzazione delle attività.\r\nIscritto al Collegio dei Periti Industriali della Provincia di Bari è costantemente aggiornato sulle ultime normative del settore e si impegna naturalmente a condividere le sue conoscenze agli altri, sia che si tratti di praticanti che di colleghi.\r\n', NULL, NULL),
(10, 'Vanni Monno', 'Perito chimico', '/storage/team/vanni_corretto.png', 'Vanni, perito chimico, curioso e organizzato, presso il laboratorio di Tetralab si occupa delle analisi chimiche avendo cura che ogni procedura sia eseguita accuratamente, e della manutenzione delle attrezzature, garantendo che tutto funzioni e sia sempre in ordine.\r\nMaturo e onesto, si adopera con impegno e concentrazione in ogni compito che gli viene affidato. La sua ambizione e la sua determinazione lo spingono a perseguire i suoi obiettivi con realismo, tuttavia non trascura l’importanza di rendersi disponibile ad aiutare i colleghi, con simpatia e affidabilità, condividendo le conoscenze acquisite nel tempo.\r\nFuori dal lavoro, la sua passione per lo sport, in particolare per il calcio, si unisce alla lettura di buon libro o alla visione di un film o una serie tv. E insieme a tutto questo, ama anche fare passeggiate rigeneranti a contatto con la natura.\r\n', NULL, NULL),
(11, 'Denny Fratella', 'Praticante perito chimico', '/storage/team/denny_corretto.png', 'Denny, con la sua natura spontanea ed estroversa, affianca gli altri colleghi, occupandosi delle attività di campionamento e di preparazione per le successive analisi, con l’obiettivo di diventare un esperto tecnico campionatore.\r\nLa sua passione per il pugilato e per il calcio gli hanno insegnato il valore del rispetto e il sapersi mettere sempre in gioco, qualità che porta con sé anche sul posto di lavoro. \r\nAmante di escursioni, serie tv e fotografia, Denny è un ragazzo disponibile ed educato, doti che gli permettono di favorire un ambiente di lavoro positivo e collaborativo.\r\n', NULL, NULL),
(12, 'Alex Nicolò Ritella', 'Praticante perito chimico', '/storage/team/alex_corretto.png', 'Alex, con tranquillità e determinazione, che ripone in ogni cosa che fa e con un atteggiamento altruista, si dimostra essere una persona riconoscente per le opportunità che gli si presentano.\r\nInsieme al dinamico team di Tetralab si occupa delle attività di campionamento e di preparazione per le successive analisi, al fine di diventare in futuro un valido tecnico campionatore. \r\nE dopo una giornata intensa, è sempre pronto per una sessione di allenamento.\r\n', NULL, NULL),
(13, 'Ivano Cicerone ', 'Ingegnere meccanico', '/storage/team/ivano_corretto.png', 'Giovanni, ma per tutti Ivano, dal carattere dinamico e simpatico, fa parte del team di Tetralab dal lontano 2007, la sua prima, unica e attuale esperienza lavorativa significante. \r\nIscritto all’Ordine degli Ingegneri della Provincia di Bari, dopo aver conseguito la Laurea Magistrale in Ingegneria Meccanica, si occupa con professionalità delle valutazioni strumentali dei rischi nei luoghi di lavoro ovvero rumore, vibrazioni, campi elettromagnetici, microclima, illuminamento, e non strumentali come ad esempio rischio incendio ed ATEX.\r\nHa molti anni di esperienza in esecuzione di monitoraggi ambientali per le componenti rumore e vibrazioni, di cui è stato anche responsabile, nonché di valutazioni previsionali di impatto acustico per industrie ed infrastrutture stradali. Di recente ha anche acquisito esperienza nella modellizzazione ambientale in ambito di emissioni odorigene, emissioni in atmosfera e di emissioni di inquinanti da traffico autoveicolare. \r\nLa sua natura socievole ed empatica gli consente di lavorare piacevolmente in team e di confrontarsi quotidianamente con i colleghi, di cui ha una grande stima. Fuori dall’orario di lavoro, adora fare giochi tra i più svariati con la sua bambina, ascoltare la musica dei grandi cantautori italiani e fare footing tra le rilassanti campagne della sua ridente cittadina.\r\n', NULL, NULL),
(14, 'Lorenzo Giotta', 'Tecnico della prevenzione nell’ambiente e nei luoghi di lavoro', '/storage/team/lorenzo_corretto.png', 'Lorenzo è il nostro valido Tecnico della prevenzione iscritto all’Ordine dei TSRM e delle professioni sanitarie tecniche, della riabilitazione e della prevenzione, abilitato a svolgere compiti di RSPP/ASPP e di formatore in tutti i settori ATECO. Si dedica con precisione e impegno al settore sicurezza negli ambienti di lavoro e alle valutazioni dei rischi specifici, tra cui agenti chimici pericolosi e cancerogeni.\r\nRiservato ma altrettanto determinato, è sempre pronto a mettere in pratica con spontaneità la sua esperienza e la sua generosità verso coloro che gli dimostrano fiducia. \r\nAdora trascorrere il suo tempo con tutta la sua famiglia ed in particolare giocando con i suoi figli. La sua squadra del cuore è il Milan, infatti gli piace anche intrattenersi con partite a pallone. E nel tempo libero gli piace anche cimentarsi in attività di bricolage, uscire con gli amici, ascoltare buona musica o seguire con interesse serie TV.\r\n', NULL, NULL),
(15, 'Roberta Giusti', 'Ingegnere ambientale', '/storage/team/roberta_corretto.png', 'Roberta, con la sua energia creativa porta un tocco di freschezza al settore della consulenza ambientale di Tetralab, occupandosi principalmente di tutto ciò che riguarda l’ottenimento delle autorizzazioni ambientali, dal sopralluogo alla redazione di tutta la documentazione specifica prevista.\r\nLa sua natura riflessiva e metereopatica, le permette di adattarsi con flessibilità ad ogni situazione e con la tenacia che la contraddistingue, si impegna nella ricerca di soluzioni per le sfide ambientali che affrontiamo. \r\nAppassionata di lettura, cinema e ballo, fuori dall’ufficio la troviamo sicuramente all\'aperto immersa nella natura.\r\n', NULL, NULL),
(16, 'Rossella Cursoli', 'Tecnico gestionale', '/storage/team/rossella_corretto.png', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `types`
--

INSERT INTO `types` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Consulenza Ambientale', 'consulenza-ambientale', 'La nostra consulenza ambientale è volta a offrire alle imprese, di ogni settore e dimensione, un servizio professionale incentrato sugli adempimenti ambientali.', '2024-04-22 22:51:12', '2024-04-22 22:51:12', 'storage/iStock-1445807259.jpg'),
(2, 'Sicurezza sul lavoro', 'sicurezza-sul-lavoro', 'Accompagniamo le aziende ad ottenere, migliorare e mantenere nel tempo le condizioni ottimali di salute e sicurezza sul posto di lavoro.', '2024-04-22 22:51:12', '2024-04-22 22:51:12', 'storage/iStock-1071581190.jpg'),
(3, 'Analisi ambientali', 'analisi-ambientali', 'Affianchiamo le aziende nel rendere maggiormente efficace e completa la gestione delle problematiche ambientali, eseguendo le analisi necessarie.', '2024-04-22 22:52:53', '2024-04-22 22:52:53', 'storage/iStock-1387118000.jpg'),
(4, 'Rilievi e monitoraggi ambientali', 'rilievi-e-monitoraggi-ambientali', 'Una particolare specializzazione acquisita nel tempo è quella dei rilievi e monitoraggi ambientali delle componenti atmosfera, acque sotterranee e superficiali, suolo, rumore e vibrazioni.', '2024-04-22 22:52:53', '2024-04-22 22:52:53', 'storage/iStock-867370922.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indici per le tabelle `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indici per le tabelle `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_type_id_foreign` (`type_id`);

--
-- Indici per le tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indici per le tabelle `sub_services`
--
ALTER TABLE `sub_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_services_service_id_foreign` (`service_id`);

--
-- Indici per le tabelle `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `sub_services`
--
ALTER TABLE `sub_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Limiti per la tabella `sub_services`
--
ALTER TABLE `sub_services`
  ADD CONSTRAINT `sub_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
