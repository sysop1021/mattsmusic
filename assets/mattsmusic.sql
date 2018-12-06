-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 06:22 PM
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
(6, 'Accessories'),
(13, 'Clarinets');

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
(9, 'ESP LTD Viper-100FM Electric Guitar', 1, '299.99', 'The gorgeous flamed maple top on a basswood body provides edge and substance to the thick, gritty tone of the ESP LTD Viper-100FM Electric Guitar. 2 ESP LH-150 humbuckers. Black nickel hardware gives it a dark, sultry look while 24 jumbo frets on a thin U neck contour pave the way for fleet-fingered riffing. This double-cutaway guitar has a 24-fret fingerboard, two humbucker pickups, master volume and tone controls, 3-way pickup selector toggle switch, and adjustable bridge with stopbar tailpiece.', 1, 'esp-sm.jpg', 'esp.jpg'),
(10, 'Ibanez RG Series RG450MB Electric Guitar White\r\n', 1, '399.99', 'If Ibanez holds the most iconic name in metal, then the RG is certainly the guitar that built this reputation. Every inch of this classic screams speed, fury, and expression. The RG450MB features a Mahogany body and the legendary thin, Wizard III Maple neck, revered for both its playing comfort and unparalleled speed. A maple fingerboard rounds out the visuals.', 1, 'ibz-sm.jpg', 'ibz.jpg'),
(11, 'Peavey VYPYR VIP 2 40W 1x12 Guitar Modeling Combo Amp Black\r\n', 3, '199.95', 'The Peavey VYPYR VIP 2 guitar modeling combo amp uses Variable Instrument Input technology to provide 40W of amplification for a variety of instrument types. It allows electric guitar players access to instrument models as wellPeavey uses a combination of 32-bit, floating point SHARC processors and TransTube analog circuitry to create one of the best sounding modeling amps available.', 1, 'peavey-sm.jpg', 'peavey.jpg'),
(12, 'Takamine P1DC-12 SM 12-String Dreadnought Acoustic-Electric Guitar Medium Brown Stain', 1, '1299.00', 'Sweet tone, optimum playability and state-of-the-art onboard electronics make playing Takamine\'s Pro Series P1DC-12 SM 12-string cutaway dreadnought a thoroughly rewarding acoustic experience. Great warmth, balance and harmonic richness resound from its \"X\"-braced solid cedar top and sapele back and sides. An elegant Venetian cutaway offers optimum access to the upper registers. Other premium features include a mahogany neck and rosewood fingerboard with pearl dot inlays. The unique Takamine split bone saddle bridge provides faultless intonation and excellent acoustic coupling to the top. The P1DC-12 also features chrome die-cast machine heads for superb tuning stability, a satin finished top on satin back and sides, and the highly acclaimed CT4B II preamp system with three-band EQ, volume control and built-in tuner.\r\n\r\nComes in a Satin Molasses finish.', 0, '', ''),
(37, 'Boss DS-1 Distortion Pedal', 6, '49.99', 'From screaming loud to whisper soft, the Boss DS-1 Distortion Pedal can faithfully reproduce the dynamics of your playing style. Level and distortion controls give you complete command of the amount of signal processing. Tone knob lets you tailor EQ right on the unit. The Boss DS-1 Distortion Pedal is a tough stompbox that can take whatever your boot can dish out. Includes 5-year warranty.', 0, 'ds1-sm.jpg', 'ds1.jpg'),
(38, ' Gibson Explorer 2019 Electric Guitar Antique Natural', 1, '1699.00', 'The 2019 edition Gibson Explorer embodies the trail-blazing characteristics of the Explorers originally introduced in 1958, which made those rare and desirable guitars so far ahead of their time. This model features a solid mahogany body and set-in mahogany neck with fast, comfortable Slim Taper profiles and rosewood fingerboard. Sonically, BurstBucker humbucking pickups and the classic Gibson hardware combine for superb tone and sustain that can range from classic boogie to full-blown shredding delight.', 0, 'explorer-sm.jpg', 'explorer.jpg'),
(39, 'Marshall DSL100HR 100W Tube Guitar Amp Head', 3, '859.78', 'The updated Marshall DSL series has arrived! These DSL amps are laden with Marshall tone, features and functionality for the novice, as well as pros performing on the worldâ€™s biggest stages. The DSL series includes the following new features:  Adjustable Power Output These DSL models feature adjustable power settings, which delivers all-valve tone and feel, at any volume, from bedroom to stage. The new technology adjusts power to the valves, instead of just turning off valve stages, allowing the amp to remain articulate and dynamic.  EQ Refinements Some innovative tweaks to the EQ circuitry have given the new DSLs even greater tonal flexibility. The EQ section of the new DSLs can deliver exactly what your ears are looking for.', 0, 'marshall-sm.jpg', 'marshall.jpg'),
(40, ' Fender American Elite Precision Bass Maple Fingerboard Electric Bass Ocean Turquoise', 2, '1899.99', 'Updating Fenderâ€™s classic design with revolutionary technology and sound, the American Elite Precision Bass is an entirely new beast of a bass. Designed for 21st-century players who push the envelope of tone and possibility every time they play, this bass is a multi-faceted performer with classic style, exceptional feel and versatile, giant sound that leaves others in the dust.  Fenderâ€™s all-new fourth-generation Noiseless pickups are their latest advance in pickup technology. Exclusive to the American Elite series, they combine modern noise-free performance with authentic vintage-style sound that doesnâ€™t sacrifice one iota of warmth. A redesigned robust 18 V preamp cranks up the power for even more signal quality for chest-thumping tone with more headroom and reduced noise. Designed for fast playing and effortless position changes, the compound profile neck with a 9.5â€“14 in. compound radius fingerboard is ideal for all playing styles.', 0, 'pbass-sm.jpg', 'pbass.jpg'),
(41, ' Dunlop Tortex Standard Guitar Picks 1.0mm - 1 Dozen', 6, '3.89', 'Tortex picks are carefully designed and manufactured to give the characteristic maximum memory and minimum wear that made the original tortoiseshell famous. Dunlop\'s Tortex guitar picks are available in a variety of shapes and gauges. One dozen.', 0, 'tortex-sm.jpg', 'tortex.jpg'),
(42, 'Musician\'s Gear MGMEG Molded ABS Electric Guitar Case', 6, '89.99', 'Economical and sturdy. Molded electric guitar case with handle, three rugged latches, reinforced corners, interior compartment and plush lining. Accommodates most common electric guitars.', 0, '', ''),
(51, 'Buffet Crampon E12 France Intermediate Bb Clarinet', 13, '2018.00', 'Developed through industrial synergy between Buffet\'s research & development arm and its production facilities based in France and Germany, the new E12F student clarinet came onto the market in September 2012.\r\nIts body is derived from professional models and made in Buffet Crampon\'s French workshops; the key assembly and quality control are carried out by our German teams in Markneukirchen.', 1, 'clar-sm.jpg', 'clar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(3) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`) VALUES
(1, 'admin', 'bf89c491b84f66e69c3a6bc867a8d881c5da3091'),
(2, 'wh_mgr', '4a35c0647dfb2fc0a93aec0e01f2b91879e827bf');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
