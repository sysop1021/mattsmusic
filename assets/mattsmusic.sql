-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 05:56 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mattsmusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catID` int(2) NOT NULL,
  `catName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Guitars'),
(2, 'Basses'),
(3, 'Amps'),
(5, 'Drums'),
(6, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `invID` int(2) NOT NULL,
  `invName` varchar(100) NOT NULL,
  `catID` int(2) NOT NULL,
  `invPrice` decimal(6,2) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `isFeat` tinyint(1) NOT NULL,
  `picSmall` varchar(255) NOT NULL,
  `picBig` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`invID`, `invName`, `catID`, `invPrice`, `description`, `isFeat`, `picSmall`, `picBig`) VALUES
(1, 'Epiphone Limited Edition Les Paul Traditional PRO-II Electric Guitar', 1, '449.00', 'Epiphone introduces the new Les Paul Traditional PRO-II featuring the ultimate combo of Alnico Classic PRO and ProBucker humbuckers with coil-splitting for an incredible range of tones. Plus a 15 dB boost switch along with new color finishes.', 0, 'epi-sm.jpg', 'epi.jpg'),
(2, 'Fender American Elite Telecaster Maple Fingerboard Electric Guitar', 1, '1899.99', 'The American Elite Telecaster is the original solidbody electric guitar reimagined for the modern guitarist who needs more from their instrument. With its stunning style, easy-playing performance and flexible sound that matches any playing situation, this Tele was made to tear it up on stage or in the studio.\r\n\r\nFeatured on all American Elite instruments, the new 4th generation Noiseless pickups are only available in this series, and represent a quantum leap in pickup design. Combining authentic, vintage-style sound with effectively noise-free performance, these are the pinnacle of Fender\'s noiseless pickup designs, generating sparkling cleans and fat, overdriven tones that scream with pure rock n roll power. ', 0, 'tele-sm.jpg', 'tele.jpg'),
(3, 'Rickenbacker 4003 Bass', 2, '799.20', 'The Rickenbacker 4003 Bass is famous for its ringing sustain, treble punch, and solid underlying bottom end. It\'s also famous for its distinctive, elegantly curved body shape, accentuated by a subtle strip of binding, deluxe triangular fretboard inlays, stereo output, neck-thru-body construction, double truss rods, and high output single-coil pickups with wide response range and brilliant clarity. The Vintage Tone Selector activates a capacitor in the treble pickup circuit to emphasize the high end. Pressed in, you get the familiar 4003 sound, pull it out to add bite and crispness. Includes case.', 0, 'rick-sm.jpg', 'rick.jpg'),
(4, 'Epiphone Thunderbird IV Bass Vintage Sunburst\r\n', 2, '399.00', 'The Epiphone Thunderbird IV Bass has a classic shape and a great sound. This streamlined design is based on Gibson\'s original model. 2 humbucking pickups. Volume and tone controls. Alder body, maple neck, rosewood fingerboard. Limited lifetime warranty.', 1, 'tbird-sm.jpg', 'tbird.jpg'),
(5, 'Boss Katana KTN-50 50W 1x12 Guitar Combo Amplifier Black', 3, '219.99', 'With 50 watts of power and a custom 12-in. speaker, the Katana KTN-50 delivers a commanding range of gig-worthy tones that gracefully slice through any band scenario. The amp also excels for home playing, with a uniquely efficient design and innovative Power Control that provides inspiring sound and response at low volumes. In addition, the Katana KTN-50 includes integrated access to 55 BOSS effects, which are customizable using the free BOSS Tone Studio editor software. Up to 15 different effects can be configured in the amp at one time, enabling you to bring fully prepared tones to the stage in one amp. ', 0, 'boss-sm.jpg', 'boss.jpg'),
(6, 'Fishman Loudbox Artist PRO-LBX-600 Acoustic Combo Amp', 3, '574.95', 'The Loudbox Artist packs 120 watts of ultra-clean, bi-amplified acoustic power, and enhanced features into an incredibly lightweight and portable package. The Loudbox Artist features two versatile channels that can each accept an instrument or mic input. Fishman\'s legendary tone and feedback-fighting controls, plus a dual-effects section, make the Loudbox Artist a great choice for the seriously active musician.', 0, 'fish-sm.jpg', 'fish.jpg'),
(7, 'Ernie Ball 2223 Nickel Super Slinky Custom Gauge Electric Guitar Strings', 6, '4.99', 'Nickels are some of the most popular of the Ernie Ball Slinky guitar strings. The 2223 Nickel Super Slinky is crafted from nickel-plated, steel wire wrapped around a hex-shaped, steel core wire. The plain strings are made of specially tempered, tin-plated high carbon steel, producing a well-balanced tone for your guitar.\r\n\r\nAll Ernie Ball strings are precision manufactured to the highest standards and the most exacting specs to assure consistency, optimum performance, and long life.\r\n\r\nErnie Ball is a pioneer of rock and roll guitar strings. Jimmy Page, Eric Clapton, Steve Vai, and Slash are among the long list of Slinky players.\r\n\r\nGauges: 9-11-16-24w-32-42.', 0, 'eb-sm.jpg', 'eb.jpg'),
(8, 'Boss 1/4\" Straight - Straight Instrument Cable - 2 Pack 20 ft.', 6, '72.99', 'Engineered to preserve your tone, BOSS cables deliver superior performance for guitar, bass, and other musical applications. Studio-grade, oxygen-free copper core wire transfers every detail, while custom-designed connectors with 24K gold-plated contacts ensure the most precise sound reproduction available. The heavy-duty braided shield provides both ultra-quiet operation and lasting durability you can count on. Straight 1/4 in. connectors.', 0, 'boss-cable-sm.jpg', 'boss-cable.jpg'),
(9, 'ESP LTD Viper-10 Electric Guitar Black', 1, '189.00', 'The ESP LTD Viper-10 guitar is a budget-oriented version of ESP\'s well-known guitars made popular by artists like Kirk Hammett (Metallica), Jeff Hanneman (Slayer), and George Lynch (Dokken). This double-cutaway guitar has a 24-fret fingerboard, two humbucker pickups, master volume and tone controls, 3-way pickup selector toggle switch, and adjustable bridge with stopbar tailpiece.', 1, 'esp-sm.jpg', 'esp.jpg'),
(10, 'Ibanez RG Series RG450MB Electric Guitar White\r\n', 1, '399.99', 'If Ibanez holds the most iconic name in metal, then the RG is certainly the guitar that built this reputation. Every inch of this classic screams speed, fury, and expression. The RG450MB features a Mahogany body and the legendary thin, Wizard III Maple neck, revered for both its playing comfort and unparalleled speed. A maple fingerboard rounds out the visuals.', 1, 'ibz-sm.jpg', 'ibz.jpg'),
(11, 'Peavey VYPYR VIP 2 40W 1x12 Guitar Modeling Combo Amp Black\r\n', 3, '199.95', 'The Peavey VYPYR VIP 2 guitar modeling combo amp uses Variable Instrument Input technology to provide 40W of amplification for a variety of instrument types. It allows electric guitar players access to instrument models as wellPeavey uses a combination of 32-bit, floating point SHARC processors and TransTube analog circuitry to create one of the best sounding modeling amps available.', 1, 'peavey-sm.jpg', 'peavey.jpg'),
(12, 'Takamine P1DC-12 SM 12-String Dreadnought Acoustic-Electric Guitar Medium Brown Stain', 1, '1299.00', 'Sweet tone, optimum playability and state-of-the-art onboard electronics make playing Takamine\'s Pro Series P1DC-12 SM 12-string cutaway dreadnought a thoroughly rewarding acoustic experience. Great warmth, balance and harmonic richness resound from its \"X\"-braced solid cedar top and sapele back and sides. An elegant Venetian cutaway offers optimum access to the upper registers. Other premium features include a mahogany neck and rosewood fingerboard with pearl dot inlays. The unique Takamine split bone saddle bridge provides faultless intonation and excellent acoustic coupling to the top. The P1DC-12 also features chrome die-cast machine heads for superb tuning stability, a satin finished top on satin back and sides, and the highly acclaimed CT4B II preamp system with three-band EQ, volume control and built-in tuner.\r\n\r\nComes in a Satin Molasses finish.', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
