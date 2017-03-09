Medium.find(0).update(name_de: 'TV'       , name_en: 'TV')
Medium.find(1).update(name_de: 'Radio'    , name_en: 'Radio')
Medium.find(2).update(name_de: 'Sonstige' , name_en: 'Other')
Medium.find(3).update(name_de: 'Online'   , name_en: 'Online')

Station.create!(id: 1, medium_id: 1, name: '103.7 UnserDing')
Station.create!(id: 2, medium_id: 1, name: '1LIVE')
Station.create!(id: 3, medium_id: 1, name: 'B5 aktuell')
Station.create!(id: 4, medium_id: 1, name: 'BR Heimat')
Station.create!(id: 5, medium_id: 1, name: 'BR-KLASSIK')
Station.create!(id: 6, medium_id: 1, name: 'Bayern 1')
Station.create!(id: 7, medium_id: 1, name: 'Bayern 2')
Station.create!(id: 8, medium_id: 1, name: 'Bayern 3')
Station.create!(id: 9, medium_id: 1, name: 'Bayern plus')
Station.create!(id: 10, medium_id: 1, name: 'Fritz')
Station.create!(id: 11, medium_id: 1, name: 'JUMP')
Station.create!(id: 12, medium_id: 1, name: 'MDR AKTUELL')
Station.create!(id: 13, medium_id: 1, name: 'MDR SACHSEN-ANHALT')
Station.create!(id: 14, medium_id: 1, name: 'N-JOY')
Station.create!(id: 15, medium_id: 1, name: 'NDR 1 Radio MV')
Station.create!(id: 16, medium_id: 1, name: 'NDR 2')
Station.create!(id: 17, medium_id: 1, name: 'NDR 90,3')
Station.create!(id: 18, medium_id: 1, name: 'NDR Info')
Station.create!(id: 19, medium_id: 1, name: 'NDR Kultur')
Station.create!(id: 20, medium_id: 1, name: 'SR 1')
Station.create!(id: 21, medium_id: 1, name: 'SPUTNIK')
Station.create!(id: 22, medium_id: 1, name: 'SWR2')
Station.create!(id: 23, medium_id: 1, name: 'SWRinfo')
Station.create!(id: 24, medium_id: 1, name: 'WDR 2')
Station.create!(id: 25, medium_id: 1, name: 'WDR 3')
Station.create!(id: 26, medium_id: 1, name: 'WDR 4')
Station.create!(id: 27, medium_id: 1, name: 'WDR 5')
Station.create!(id: 28, medium_id: 1, name: 'WDR 5 kiraka')
Station.create!(id: 29, medium_id: 1, name: 'hr-iNFO')
Station.create!(id: 30, medium_id: 1, name: 'hr2')
Station.create!(id: 31, medium_id: 1, name: 'hr4')
Station.create!(id: 32, medium_id: 1, name: 'radioBERLIN 88,8')
Station.create!(id: 33, medium_id: 0, name: '3sat')
Station.create!(id: 34, medium_id: 0, name: 'ARD-alpha')
Station.create!(id: 35, medium_id: 0, name: 'Arte')
Station.create!(id: 36, medium_id: 0, name: 'BR Fernsehen')
Station.create!(id: 37, medium_id: 0, name: 'Das Erste')
Station.create!(id: 38, medium_id: 0, name: 'KiKA')
Station.create!(id: 39, medium_id: 0, name: 'MDR Fernsehen')
Station.create!(id: 40, medium_id: 0, name: 'NDR Fernsehen')
Station.create!(id: 41, medium_id: 0, name: 'Radio Bremen TV')
Station.create!(id: 42, medium_id: 0, name: 'SR Fernsehen')
Station.create!(id: 43, medium_id: 0, name: 'SWR Fernsehen')
Station.create!(id: 44, medium_id: 0, name: 'WDR Fernsehen')
Station.create!(id: 45, medium_id: 0, name: 'hr-fernsehen')
Station.create!(id: 46, medium_id: 0, name: 'rbb Fernsehen')
Station.create!(id: 47, medium_id: 0, name: 'tagesschau24')
Station.create!(id: 48, medium_id: 0, name: 'ZDF')
Station.create!(id: 49, medium_id: 0, name: 'Phoenix')
Station.create!(id: 50, medium_id: 1, name: 'radioeins')
Station.create!(id: 51, medium_id: 1, name: 'Antenne Brandenburg')
Station.create!(id: 52, medium_id: 1, name: 'COSMO')
Station.create!(id: 53, medium_id: 1, name: 'Bremen Vier')
Station.create!(id: 54, medium_id: 1, name: 'Bremen NEXT')
Station.create!(id: 55, medium_id: 0, name: 'ZDFneo')

 #these broadcasts are stations!
['Bremen Vier', 'Bremen NEXT'].each do |title|
  b = Broadcast.find_by(title: title)
  if b
    puts "Selections going to be destroyed: #{b.selections.count}"
    b.selections.destroy_all
    b.destroy
  end
end

# manually set
Broadcast.find(79).update(station_id: 37)
Broadcast.find(111).update(station_id: 37)
Broadcast.find(114).update(station_id: 37)
Broadcast.find(153).update(station_id: 37)
Broadcast.find(154).update(station_id: 38)
Broadcast.find(173).update(station_id: 37)
Broadcast.find(187).update(station_id: 37)
Broadcast.find(190).update(station_id: 48)
Broadcast.find(191).update(station_id: 48)
Broadcast.find(194).update(station_id: 37)
Broadcast.find(196).update(station_id: 2)
Broadcast.find(203).update(station_id: 2)
Broadcast.find(204).update(station_id: 2)
Broadcast.find(230).update(station_id: 48)
Broadcast.find(244).update(station_id: 48)
Broadcast.find(245).update(station_id: 48)
Broadcast.find(270).update(station_id: 48)
Broadcast.find(306).update(station_id: 48)
Broadcast.find(185).update(station_id: 37)
Broadcast.find(197).update(station_id: 50)
Broadcast.find(198).update(station_id: 51)
Broadcast.find(199).update(station_id: 10)
Broadcast.find(200).update(station_id: 52)
Broadcast.find(201).update(station_id: 52)
Broadcast.find(202).update(station_id: 52)
Broadcast.find(227).update(station_id: 48)
Broadcast.find(241).update(station_id: 49)
Broadcast.find(279).update(station_id: 48)
Broadcast.find(285).update(station_id: 48)
Broadcast.find(293).update(station_id: 48)
Broadcast.find(294).update(station_id: 48)
Broadcast.find(295).update(station_id: 48)
Broadcast.find(304).update(station_id: 43)
Broadcast.find(312).update(station_id: 48)
Broadcast.find(313).update(station_id: 48)
Broadcast.find(323).update(station_id: 48)
Broadcast.find(340).update(station_id: 48)
Broadcast.find(355).update(station_id: 48)
Broadcast.find(383).update(station_id: 48)
Broadcast.find(401).update(station_id: 49)
Broadcast.find(402).update(station_id: 48)
Broadcast.find(424).update(station_id: 48)
Broadcast.find(434).update(station_id: 55)

# automatically matched
Broadcast.find(76).update(station_id: 35)
Broadcast.find(77).update(station_id: 37)
Broadcast.find(78).update(station_id: 33)
Broadcast.find(79).update(station_id: 37)
Broadcast.find(80).update(station_id: 38)
Broadcast.find(81).update(station_id: 37)
Broadcast.find(82).update(station_id: 38)
Broadcast.find(83).update(station_id: 38)
Broadcast.find(84).update(station_id: 38)
Broadcast.find(85).update(station_id: 38)
Broadcast.find(86).update(station_id: 38)
Broadcast.find(87).update(station_id: 37)
Broadcast.find(88).update(station_id: 38)
Broadcast.find(89).update(station_id: 35)
Broadcast.find(90).update(station_id: 38)
Broadcast.find(91).update(station_id: 37)
Broadcast.find(92).update(station_id: 35)
Broadcast.find(93).update(station_id: 37)
Broadcast.find(94).update(station_id: 38)
Broadcast.find(95).update(station_id: 33)
Broadcast.find(96).update(station_id: 37)
Broadcast.find(97).update(station_id: 33)
Broadcast.find(98).update(station_id: 38)
Broadcast.find(99).update(station_id: 37)
Broadcast.find(100).update(station_id: 38)
Broadcast.find(101).update(station_id: 33)
Broadcast.find(102).update(station_id: 33)
Broadcast.find(103).update(station_id: 33)
Broadcast.find(104).update(station_id: 37)
Broadcast.find(105).update(station_id: 37)
Broadcast.find(106).update(station_id: 38)
Broadcast.find(107).update(station_id: 38)
Broadcast.find(108).update(station_id: 35)
Broadcast.find(109).update(station_id: 38)
Broadcast.find(110).update(station_id: 38)
Broadcast.find(111).update(station_id: 37)
Broadcast.find(112).update(station_id: 38)
Broadcast.find(113).update(station_id: 38)
Broadcast.find(114).update(station_id: 37)
Broadcast.find(115).update(station_id: 37)
Broadcast.find(116).update(station_id: 33)
Broadcast.find(117).update(station_id: 38)
Broadcast.find(118).update(station_id: 38)
Broadcast.find(119).update(station_id: 38)
Broadcast.find(120).update(station_id: 33)
Broadcast.find(121).update(station_id: 35)
Broadcast.find(122).update(station_id: 38)
Broadcast.find(123).update(station_id: 37)
Broadcast.find(124).update(station_id: 33)
Broadcast.find(125).update(station_id: 38)
Broadcast.find(126).update(station_id: 38)
Broadcast.find(127).update(station_id: 38)
Broadcast.find(128).update(station_id: 38)
Broadcast.find(129).update(station_id: 38)
Broadcast.find(130).update(station_id: 38)
Broadcast.find(131).update(station_id: 33)
Broadcast.find(132).update(station_id: 33)
Broadcast.find(133).update(station_id: 35)
Broadcast.find(134).update(station_id: 33)
Broadcast.find(135).update(station_id: 37)
Broadcast.find(136).update(station_id: 37)
Broadcast.find(137).update(station_id: 38)
Broadcast.find(138).update(station_id: 38)
Broadcast.find(139).update(station_id: 33)
Broadcast.find(140).update(station_id: 38)
Broadcast.find(141).update(station_id: 38)
Broadcast.find(142).update(station_id: 37)
Broadcast.find(143).update(station_id: 33)
Broadcast.find(144).update(station_id: 33)
Broadcast.find(145).update(station_id: 38)
Broadcast.find(146).update(station_id: 38)
Broadcast.find(147).update(station_id: 37)
Broadcast.find(148).update(station_id: 33)
Broadcast.find(149).update(station_id: 38)
Broadcast.find(150).update(station_id: 38)
Broadcast.find(151).update(station_id: 33)
Broadcast.find(152).update(station_id: 38)
Broadcast.find(153).update(station_id: 37)
Broadcast.find(154).update(station_id: 38)
Broadcast.find(155).update(station_id: 38)
Broadcast.find(156).update(station_id: 35)
Broadcast.find(157).update(station_id: 33)
Broadcast.find(158).update(station_id: 37)
Broadcast.find(159).update(station_id: 33)
Broadcast.find(160).update(station_id: 38)
Broadcast.find(161).update(station_id: 38)
Broadcast.find(162).update(station_id: 38)
Broadcast.find(163).update(station_id: 33)
Broadcast.find(164).update(station_id: 35)
Broadcast.find(165).update(station_id: 38)
Broadcast.find(166).update(station_id: 33)
Broadcast.find(167).update(station_id: 35)
Broadcast.find(168).update(station_id: 33)
Broadcast.find(169).update(station_id: 35)
Broadcast.find(170).update(station_id: 37)
Broadcast.find(171).update(station_id: 33)
Broadcast.find(172).update(station_id: 38)
Broadcast.find(173).update(station_id: 37)
Broadcast.find(174).update(station_id: 33)
Broadcast.find(175).update(station_id: 38)
Broadcast.find(176).update(station_id: 38)
Broadcast.find(177).update(station_id: 33)
Broadcast.find(178).update(station_id: 37)
Broadcast.find(179).update(station_id: 33)
Broadcast.find(180).update(station_id: 38)
Broadcast.find(181).update(station_id: 33)
Broadcast.find(182).update(station_id: 37)
Broadcast.find(183).update(station_id: 37)
Broadcast.find(184).update(station_id: 33)
Broadcast.find(185).update(station_id: 37)
Broadcast.find(186).update(station_id: 35)
Broadcast.find(187).update(station_id: 37)
Broadcast.find(188).update(station_id: 38)
Broadcast.find(189).update(station_id: 38)
Broadcast.find(190).update(station_id: 48)
Broadcast.find(191).update(station_id: 48)
Broadcast.find(194).update(station_id: 37)
Broadcast.find(195).update(station_id: 37)
Broadcast.find(196).update(station_id: 2)
Broadcast.find(197).update(station_id: 50)
Broadcast.find(198).update(station_id: 51)
Broadcast.find(199).update(station_id: 10)
Broadcast.find(200).update(station_id: 52)
Broadcast.find(201).update(station_id: 52)
Broadcast.find(202).update(station_id: 52)
Broadcast.find(203).update(station_id: 2)
Broadcast.find(204).update(station_id: 2)
Broadcast.find(205).update(station_id: 37)
Broadcast.find(208).update(station_id: 48)
Broadcast.find(222).update(station_id: 37)
Broadcast.find(223).update(station_id: 44)
Broadcast.find(224).update(station_id: 48)
Broadcast.find(225).update(station_id: 22)
Broadcast.find(226).update(station_id: 48)
Broadcast.find(227).update(station_id: 48)
Broadcast.find(228).update(station_id: 22)
Broadcast.find(229).update(station_id: 46)
Broadcast.find(230).update(station_id: 48)
Broadcast.find(231).update(station_id: 44)
Broadcast.find(232).update(station_id: 42)
Broadcast.find(233).update(station_id: 45)
Broadcast.find(234).update(station_id: 34)
Broadcast.find(235).update(station_id: 34)
Broadcast.find(236).update(station_id: 34)
Broadcast.find(237).update(station_id: 7)
Broadcast.find(239).update(station_id: 7)
Broadcast.find(240).update(station_id: 48)
Broadcast.find(241).update(station_id: 49)
Broadcast.find(242).update(station_id: 3)
Broadcast.find(243).update(station_id: 3)
Broadcast.find(244).update(station_id: 48)
Broadcast.find(245).update(station_id: 48)
Broadcast.find(246).update(station_id: 6)
Broadcast.find(247).update(station_id: 48)
Broadcast.find(248).update(station_id: 55)
Broadcast.find(249).update(station_id: 10)
Broadcast.find(250).update(station_id: 46)
Broadcast.find(251).update(station_id: 7)
Broadcast.find(252).update(station_id: 37)
Broadcast.find(253).update(station_id: 30)
Broadcast.find(254).update(station_id: 25)
Broadcast.find(255).update(station_id: 41)
Broadcast.find(256).update(station_id: 34)
Broadcast.find(257).update(station_id: 36)
Broadcast.find(258).update(station_id: 5)
Broadcast.find(259).update(station_id: 22)
Broadcast.find(260).update(station_id: 48)
Broadcast.find(261).update(station_id: 12)
Broadcast.find(262).update(station_id: 18)
Broadcast.find(263).update(station_id: 7)
Broadcast.find(264).update(station_id: 48)
Broadcast.find(265).update(station_id: 48)
Broadcast.find(266).update(station_id: 5)
Broadcast.find(267).update(station_id: 27)
Broadcast.find(268).update(station_id: 37)
Broadcast.find(269).update(station_id: 45)
Broadcast.find(270).update(station_id: 48)
Broadcast.find(271).update(station_id: 48)
Broadcast.find(272).update(station_id: 48)
Broadcast.find(273).update(station_id: 48)
Broadcast.find(274).update(station_id: 30)
Broadcast.find(275).update(station_id: 8)
Broadcast.find(276).update(station_id: 48)
Broadcast.find(277).update(station_id: 48)
Broadcast.find(279).update(station_id: 48)
Broadcast.find(280).update(station_id: 19)
Broadcast.find(281).update(station_id: 14)
Broadcast.find(282).update(station_id: 48)
Broadcast.find(283).update(station_id: 47)
Broadcast.find(284).update(station_id: 8)
Broadcast.find(285).update(station_id: 48)
Broadcast.find(286).update(station_id: 5)
Broadcast.find(287).update(station_id: 30)
Broadcast.find(288).update(station_id: 48)
Broadcast.find(289).update(station_id: 48)
Broadcast.find(290).update(station_id: 37)
Broadcast.find(291).update(station_id: 27)
Broadcast.find(292).update(station_id: 48)
Broadcast.find(293).update(station_id: 48)
Broadcast.find(294).update(station_id: 48)
Broadcast.find(295).update(station_id: 48)
Broadcast.find(296).update(station_id: 48)
Broadcast.find(297).update(station_id: 39)
Broadcast.find(298).update(station_id: 7)
Broadcast.find(299).update(station_id: 45)
Broadcast.find(300).update(station_id: 27)
Broadcast.find(301).update(station_id: 48)
Broadcast.find(302).update(station_id: 36)
Broadcast.find(304).update(station_id: 43)
Broadcast.find(305).update(station_id: 22)
Broadcast.find(306).update(station_id: 48)
Broadcast.find(307).update(station_id: 48)
Broadcast.find(308).update(station_id: 44)
Broadcast.find(309).update(station_id: 10)
Broadcast.find(310).update(station_id: 48)
Broadcast.find(312).update(station_id: 48)
Broadcast.find(313).update(station_id: 48)
Broadcast.find(314).update(station_id: 48)
Broadcast.find(315).update(station_id: 48)
Broadcast.find(316).update(station_id: 4)
Broadcast.find(317).update(station_id: 48)
Broadcast.find(318).update(station_id: 45)
Broadcast.find(319).update(station_id: 40)
Broadcast.find(320).update(station_id: 40)
Broadcast.find(321).update(station_id: 45)
Broadcast.find(322).update(station_id: 48)
Broadcast.find(323).update(station_id: 48)
Broadcast.find(324).update(station_id: 48)
Broadcast.find(325).update(station_id: 45)
Broadcast.find(326).update(station_id: 13)
Broadcast.find(327).update(station_id: 48)
Broadcast.find(328).update(station_id: 46)
Broadcast.find(329).update(station_id: 48)
Broadcast.find(330).update(station_id: 10)
Broadcast.find(331).update(station_id: 7)
Broadcast.find(332).update(station_id: 34)
Broadcast.find(333).update(station_id: 22)
Broadcast.find(334).update(station_id: 48)
Broadcast.find(335).update(station_id: 7)
Broadcast.find(336).update(station_id: 23)
Broadcast.find(337).update(station_id: 48)
Broadcast.find(338).update(station_id: 24)
Broadcast.find(339).update(station_id: 15)
Broadcast.find(340).update(station_id: 48)
Broadcast.find(341).update(station_id: 36)
Broadcast.find(342).update(station_id: 28)
Broadcast.find(343).update(station_id: 28)
Broadcast.find(344).update(station_id: 2)
Broadcast.find(345).update(station_id: 27)
Broadcast.find(346).update(station_id: 24)
Broadcast.find(347).update(station_id: 5)
Broadcast.find(349).update(station_id: 48)
Broadcast.find(350).update(station_id: 44)
Broadcast.find(351).update(station_id: 37)
Broadcast.find(352).update(station_id: 46)
Broadcast.find(353).update(station_id: 22)
Broadcast.find(354).update(station_id: 22)
Broadcast.find(355).update(station_id: 48)
Broadcast.find(356).update(station_id: 1)
Broadcast.find(357).update(station_id: 27)
Broadcast.find(359).update(station_id: 48)
Broadcast.find(360).update(station_id: 48)
Broadcast.find(361).update(station_id: 40)
Broadcast.find(362).update(station_id: 37)
Broadcast.find(363).update(station_id: 22)
Broadcast.find(364).update(station_id: 48)
Broadcast.find(365).update(station_id: 48)
Broadcast.find(366).update(station_id: 44)
Broadcast.find(367).update(station_id: 48)
Broadcast.find(368).update(station_id: 22)
Broadcast.find(369).update(station_id: 48)
Broadcast.find(370).update(station_id: 39)
Broadcast.find(371).update(station_id: 39)
Broadcast.find(372).update(station_id: 11)
Broadcast.find(373).update(station_id: 21)
Broadcast.find(374).update(station_id: 39)
Broadcast.find(375).update(station_id: 36)
Broadcast.find(376).update(station_id: 26)
Broadcast.find(377).update(station_id: 40)
Broadcast.find(378).update(station_id: 8)
Broadcast.find(379).update(station_id: 48)
Broadcast.find(380).update(station_id: 45)
Broadcast.find(381).update(station_id: 37)
Broadcast.find(382).update(station_id: 48)
Broadcast.find(383).update(station_id: 48)
Broadcast.find(384).update(station_id: 37)
Broadcast.find(385).update(station_id: 25)
Broadcast.find(386).update(station_id: 43)
Broadcast.find(387).update(station_id: 37)
Broadcast.find(388).update(station_id: 17)
Broadcast.find(389).update(station_id: 40)
Broadcast.find(390).update(station_id: 27)
Broadcast.find(391).update(station_id: 6)
Broadcast.find(392).update(station_id: 37)
Broadcast.find(393).update(station_id: 40)
Broadcast.find(394).update(station_id: 40)
Broadcast.find(395).update(station_id: 7)
Broadcast.find(396).update(station_id: 3)
Broadcast.find(397).update(station_id: 32)
Broadcast.find(398).update(station_id: 46)
Broadcast.find(399).update(station_id: 5)
Broadcast.find(400).update(station_id: 48)
Broadcast.find(401).update(station_id: 49)
Broadcast.find(402).update(station_id: 48)
Broadcast.find(403).update(station_id: 37)
Broadcast.find(404).update(station_id: 27)
Broadcast.find(405).update(station_id: 48)
Broadcast.find(406).update(station_id: 27)
Broadcast.find(407).update(station_id: 26)
Broadcast.find(408).update(station_id: 24)
Broadcast.find(409).update(station_id: 18)
Broadcast.find(410).update(station_id: 14)
Broadcast.find(412).update(station_id: 46)
Broadcast.find(413).update(station_id: 46)
Broadcast.find(414).update(station_id: 18)
Broadcast.find(416).update(station_id: 25)
Broadcast.find(417).update(station_id: 31)
Broadcast.find(418).update(station_id: 27)
Broadcast.find(419).update(station_id: 6)
Broadcast.find(420).update(station_id: 40)
Broadcast.find(421).update(station_id: 44)
Broadcast.find(422).update(station_id: 48)
Broadcast.find(423).update(station_id: 48)
Broadcast.find(424).update(station_id: 48)
Broadcast.find(425).update(station_id: 20)
Broadcast.find(426).update(station_id: 20)
Broadcast.find(427).update(station_id: 36)
Broadcast.find(428).update(station_id: 5)
Broadcast.find(429).update(station_id: 46)
Broadcast.find(430).update(station_id: 48)
Broadcast.find(431).update(station_id: 37)
Broadcast.find(433).update(station_id: 46)
Broadcast.find(434).update(station_id: 55)
Broadcast.find(436).update(station_id: 48)
Broadcast.find(437).update(station_id: 46)
Broadcast.find(438).update(station_id: 44)
Broadcast.find(439).update(station_id: 9)
Broadcast.find(440).update(station_id: 25)
Broadcast.find(441).update(station_id: 6)
Broadcast.find(442).update(station_id: 37)
Broadcast.find(443).update(station_id: 48)
Broadcast.find(444).update(station_id: 36)
Broadcast.find(445).update(station_id: 40)
Broadcast.find(446).update(station_id: 48)
Broadcast.find(447).update(station_id: 15)
Broadcast.find(448).update(station_id: 37)
Broadcast.find(449).update(station_id: 5)
Broadcast.find(450).update(station_id: 46)
Broadcast.find(451).update(station_id: 44)
Broadcast.find(452).update(station_id: 27)
Broadcast.find(453).update(station_id: 27)
Broadcast.find(454).update(station_id: 48)
Broadcast.find(455).update(station_id: 48)
Broadcast.find(456).update(station_id: 16)
Broadcast.find(457).update(station_id: 36)
Broadcast.find(458).update(station_id: 48)
Broadcast.find(459).update(station_id: 29)
Broadcast.find(460).update(station_id: 40)
Broadcast.find(461).update(station_id: 48)
Broadcast.find(462).update(station_id: 48)
Broadcast.find(463).update(station_id: 48)
Broadcast.find(465).update(station_id: 48)
Broadcast.find(466).update(station_id: 48)
Broadcast.find(467).update(station_id: 7)
Broadcast.find(468).update(station_id: 22)
Broadcast.find(469).update(station_id: 18)
Broadcast.find(470).update(station_id: 46)
Broadcast.find(471).update(station_id: 5)
Broadcast.find(472).update(station_id: 26)
Broadcast.find(473).update(station_id: 6)
