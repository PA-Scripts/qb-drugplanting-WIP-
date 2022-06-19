CREATE TABLE `player_drugs` (
  `id` int(11) NOT NULL,
  `coords` longtext,
  `seed` varchar(100) NOT NULL,
  `water` double NOT NULL,
  `food` double NOT NULL,
  `stage` double NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `player_drugs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `player_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
