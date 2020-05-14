UPDATE `admin` SET `last_login` = '2020-05-07 23:37:27', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'KYBTG1', 'B0TASK', 'sohail', 'sohail', 'khan', 'sohail@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '4545457878787', '127.0.0.1', '1');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'WYITL9', 'KYBTG1', 'Kamal', 'Kamal', 'khan', 'kamal@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '45454545445', '127.0.0.1', '1');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'I4B39Q', 'KYBTG1', 'Jamal', 'jamal', 'khan', 'jamal@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '4574548787', '127.0.0.1', '1');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'I7RRKJ', 'KYBTG1', 'Kamal2', 'Kamal2', 'khan', 'kamal2@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '78787878', '127.0.0.1', '1');
UPDATE `admin` SET `last_logout` = '2020-05-08 01:34:57'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2020-05-08 01:35:09', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`, `about`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('', 'Admin', 'Admin', 'admin1@gmail.com', '2d37178054828abe0ceeecc3f5f966dd', 'testing admin', '', NULL, NULL, NULL, '1', 2);
DELETE FROM `admin`
WHERE `id` = '2'
AND `is_admin` NOT IN(1);
INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`, `about`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('', 'Admin1', 'Last1', 'admin1@gmail.com', 'd7b0e9ec927f31147eec8c0ddd657272', 'something', '', NULL, NULL, NULL, '1', 2);
UPDATE `admin` SET `last_logout` = '2020-05-08 02:06:40'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2020-05-08 02:06:52', `ip_address` = '127.0.0.1'
WHERE `id` = '3';
UPDATE `admin` SET `last_logout` = '2020-05-08 02:12:25'
WHERE `id` = '3';
UPDATE `admin` SET `last_login` = '2020-05-11 00:00:02', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@bdtask.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/98cd375fbb1020db917edfd662592140.png', `logo_web` = 'upload/settings/b92aebeef90d979f6e16137308595ccc.png', `favicon` = 'upload/settings/f170f93a5af84164c401d8d9c0f42a72.png', `language` = 'english', `time_zone` = 'Africa/Douala', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2018 © Copyright bdtask Treading System'
WHERE `setting_id` = '1';
UPDATE `setting` SET `setting_id` = '1', `title` = 'Crypto Currency Treading System', `description` = 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', `email` = 'info@2xpowers.com', `phone` = '+88-01817-584639', `logo` = 'upload/settings/98cd375fbb1020db917edfd662592140.png', `logo_web` = 'upload/settings/b92aebeef90d979f6e16137308595ccc.png', `favicon` = 'upload/settings/f170f93a5af84164c401d8d9c0f42a72.png', `language` = 'english', `time_zone` = 'Africa/Douala', `site_align` = 'LTR', `office_time` = 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>', `latitude` = '40.6700, -73.9400', `footer_text` = '2020 © Copyright @2xpowers.com'
WHERE `setting_id` = '1';
UPDATE `admin` SET `last_logout` = '2020-05-11 00:23:56'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-05-11 01:26:30'
WHERE `id` = '2';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'QQPV43', 'KYBTG1', 'Kamal232323', 'khan', '23343', 'kamal234@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '234234', '127.0.0.1', '1');
UPDATE `admin` SET `last_logout` = '2020-05-11 02:33:51'
WHERE `id` = '2';
UPDATE `admin` SET `last_login` = '2020-05-11 17:42:13', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `user_registration` SET `language` = 'english'
WHERE `user_id` = 'KYBTG1';
UPDATE `user_registration` SET `language` = 'english'
WHERE `user_id` = 'KYBTG1';
INSERT INTO `deposit` (`user_id`, `deposit_amount`, `deposit_method`, `fees`, `comments`, `deposit_date`, `deposit_ip`, `status`) VALUES ('KYBTG1', '500', 'admin', 0, 'Testing amount', '2020-05-11 06:01:54', '127.0.0.1', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('KYBTG1', 'deposit', 1, '500', 'Testing amount', '2020-05-11 06:01:54');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('KYBTG1', 0, 0, 1, '2020-05-11 06:02:05');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('KYBTG1', 0, 0, 1, '2020-05-11 06:02:05');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('KYBTG1', 'B0TASK', '1', '100', '2020-05-11', '1');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`) VALUES ('KYBTG1', 'investment', 1, '100', '2020-05-11 06:02:05');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'KYBTG1', 'Package Buy', 'You bought a 100 package successfully', '2020-05-11 06:02:07');
UPDATE `admin` SET `last_logout` = '2020-05-11 20:15:20'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2020-05-11 20:15:20'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2020-05-11 20:17:57', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'HTX7MF', 'WYITL9', 'left', 'I7RRKJ', 'Fakir', 'sohail', 'jamal', 'jamil@gmail.com', '2d37178054828abe0ceeecc3f5f966dd', '245454545', '127.0.0.1', '1');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'MXM0KD', 'I4B39Q', 'left', 'I4B39Q', 'jesse', 'jesse', 'lingard', 'jesse@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '2454751245', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponser_id`, `package_id`, `amount`, `invest_date`, `status`) VALUES ('MXM0KD', NULL, '1', '100', '2020-05-11', 1);
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'RNZQI1', 'I4B39Q', 'left', 'I4B39Q', 'michal', 'michal', 'waghn', 'michal@gmail.com', '1cd8e7658bb6db26fed1ce17940b7dbd', '03123545454', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponser_id`, `package_id`, `amount`, `invest_date`, `status`) VALUES ('RNZQI1', 'I4B39Q', '1', '100', '2020-05-11', 1);
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'OBFNHA', 'I4B39Q', 'left', 'I4B39Q', 'michal12', 'michal', 'waghn', 'michal12@gmail.com', 'bfd59291e825b5f2bbf1eb76569f8fe7', '03123545454', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `status`) VALUES ('OBFNHA', 'I4B39Q', '1', '100', '2020-05-11', 1);
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', '8T7TEP', 'I4B39Q', 'right', 'I4B39Q', 'michal123', 'michal', 'waghn', 'michal123@gmail.com', 'bfd59291e825b5f2bbf1eb76569f8fe7', '03123545454', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('8T7TEP', 'I4B39Q', '1', '100', '2020-05-11', 1);
INSERT INTO `transections` (`user_id`, `transaction_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('8T7TEP', 'investment', 2, '100', '2020-05-11', 1, 'User 8T7TEPAdded');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'X98DBZ', 'I4B39Q', 'left', 'I4B39Q', 'michal1234', 'michal1243', 'waghn', 'michal1234@gmail.com', 'bfd59291e825b5f2bbf1eb76569f8fe7', '03123545454', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('X98DBZ', 'I4B39Q', '1', '100', '2020-05-11', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('X98DBZ', 'investment', 3, '100', '2020-05-11', 1, 'User X98DBZAdded');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'TVE7BG', 'I4B39Q', 'left', 'I4B39Q', 'usman', 'Usman', 'Khan', 'usman@gmail.com', '03fe81da7bd87153a9a57980263f4a71', '031352528', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('TVE7BG', 'I4B39Q', '1', '100', '2020-05-11', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('TVE7BG', 'investment', 4, '100', '2020-05-11', 1, 'User TVE7BGAdded');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'WBAYK9', 'I4B39Q', 'left', 'I4B39Q', 'Ustad', 'Kamal', 'Kaman234', 'ustag@gmail.com', '03fe81da7bd87153a9a57980263f4a71', '21545451154', '127.0.0.1', '1');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('WBAYK9', 'I4B39Q', '1', '100', '2020-05-11', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('WBAYK9', 'investment', 5, '100', '2020-05-11', 1, 'User WBAYK9Added');
UPDATE `admin` SET `last_logout` = '2020-05-12 13:13:08'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2020-05-12 13:18:49', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `package` (`package_id`, `package_name`, `period`, `package_deatils`, `package_amount`, `daily_roi`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `total_percent`, `status`) VALUES ('', 'Testing by sohail', '400', 'Good one package for you', '400', '2', 0, 0, 0, '0', '1');
UPDATE `admin` SET `last_login` = '2020-05-12 14:58:44', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `package` SET `package_id` = '10', `package_name` = 'Testing by sohail', `period` = '400', `package_deatils` = 'Good one package for you', `package_amount` = '400', `daily_roi` = '5', `weekly_roi` = 0, `monthly_roi` = 0, `yearly_roi` = 0, `total_percent` = '0', `status` = '1'
WHERE `package_id` = '10';
UPDATE `package` SET `package_id` = '10', `package_name` = 'Testing by sohail', `period` = '400', `package_deatils` = 'Good one package for you', `package_amount` = '400', `daily_roi` = '5', `weekly_roi` = 0, `monthly_roi` = 0, `yearly_roi` = 0, `total_percent` = '0', `status` = '1'
WHERE `package_id` = '10';
UPDATE `admin` SET `last_logout` = '2020-05-12 15:26:56'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-05-12 15:28:39'
WHERE `id` = '2';
UPDATE `admin` SET `last_logout` = '2020-05-12 15:31:49'
WHERE `id` = '2';
UPDATE `admin` SET `last_login` = '2020-05-12 23:13:37', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `package` (`package_id`, `package_name`, `period`, `package_deatils`, `package_amount`, `daily_roi`, `points`, `direct_bonus`, `indirect_bonus`, `weekly_roi`, `monthly_roi`, `yearly_roi`, `total_percent`, `status`) VALUES ('', 'Testing Package', '300', 'Some good detaisl her', '500', '3', '400', '5', '2', 0, 0, 0, '0', '1');
UPDATE `admin` SET `last_logout` = '2020-05-13 12:22:39'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2020-05-13 15:16:06', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `verify_tbl` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('127.0.0.1', 'KYBTG1', 1, 'ZDQGN0', '{\"sender_user_id\":\"KYBTG1\",\"receiver_user_id\":\"WYITL9\",\"amount\":\"10\",\"fees\":0,\"request_ip\":\"127.0.0.1\",\"date\":\"2020-05-13 03:18:16\",\"comments\":\"Testing amount\",\"status\":1}');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('KYBTG1', 'WYITL9', '10', 0, '127.0.0.1', '2020-05-13 03:18:16', 'Testing amount', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('KYBTG1', 'transfer', 1, '10', 'Testing amount', '2020-05-13 03:24:05');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('WYITL9', 'reciver', 1, '10', 'Testing amount', '2020-05-13 03:24:05');
UPDATE `verify_tbl` SET `status` = 0
WHERE `id` = '1'
AND `session_id` = 1;
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'KYBTG1', 'Transfer', 'You successfully transfer the amount $10 to the account WYITL9. Your new balance is $390', '2020-05-13 03:24:09');
INSERT INTO `verify_tbl` (`ip_address`, `user_id`, `session_id`, `verify_code`, `data`) VALUES ('127.0.0.1', 'KYBTG1', 1, 'PKQNZ8', '{\"sender_user_id\":\"KYBTG1\",\"receiver_user_id\":\"WYITL9\",\"amount\":\"10\",\"fees\":0,\"request_ip\":\"127.0.0.1\",\"date\":\"2020-05-13 03:25:02\",\"comments\":\"test\",\"status\":1}');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('KYBTG1', 'WYITL9', '10', 0, '127.0.0.1', '2020-05-13 03:25:02', 'test', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('KYBTG1', 'transfer', 2, '10', 'test', '2020-05-13 03:26:16');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('WYITL9', 'reciver', 2, '10', 'test', '2020-05-13 03:26:16');
UPDATE `verify_tbl` SET `status` = 0
WHERE `id` = '2'
AND `session_id` = 1;
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'KYBTG1', 'Transfer', 'You successfully transfer the amount $10 to the account WYITL9. Your new balance is $380', '2020-05-13 03:26:19');
UPDATE `admin` SET `last_login` = '2020-05-14 04:34:10', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', '7NHRLR', 'MXM0KD', 'left', 'MXM0KD', 'sub_jessee', 'testing', 'Kamal', 'sub_jessee@gmail.com', '2d37178054828abe0ceeecc3f5f966dd', '23434342', '127.0.0.1', '1');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('MXM0KD', '7NHRLR', '100', 0, '127.0.0.1', '2020-05-14 04:43:52', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('MXM0KD', 'transfer', 3, '100', 'Initial transfer to 7NHRLR on account creation from parent', '2020-05-14 04:43:52');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('7NHRLR', 'reciver', 3, '100', 'Initial transfer to 7NHRLR on account creation from parent', '2020-05-14 04:43:52');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('7NHRLR', 'MXM0KD', '1', '100', '2020-05-14', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('7NHRLR', 'investment', 6, '100', '2020-05-14', 1, 'User 7NHRLR Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('7NHRLR', 0, 0, 1, '2020-05-14 04:43:52');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('7NHRLR', 0, 0, 1, '2020-05-14 04:43:52');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('MXM0KD', '7NHRLR', 'type1', '1', 0, '2020-05-14');
UPDATE `admin` SET `last_login` = '2020-05-14 17:47:52', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-05-14 17:48:56'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2020-05-14 18:37:19', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'R0KALA', 'RNZQI1', 'left', 'RNZQI1', 'sub michal', 'Kamal', 'Jamal', 'sub-michal@gmail.com', 'bfd59291e825b5f2bbf1eb76569f8fe7', '21545451154', '127.0.0.1', '1');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('RNZQI1', 'R0KALA', '400', 0, '127.0.0.1', '2020-05-14 07:46:47', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('RNZQI1', 'transfer', 4, '400', 'Initial transfer to R0KALA on account creation from parent', '2020-05-14 07:46:47');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('R0KALA', 'reciver', 4, '400', 'Initial transfer to R0KALA on account creation from parent', '2020-05-14 07:46:47');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('R0KALA', 'RNZQI1', '3', '400', '2020-05-14', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('R0KALA', 'investment', 7, '400', '2020-05-14', 1, 'User R0KALA Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('R0KALA', 0, 0, 1, '2020-05-14 07:46:47');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('R0KALA', 0, 0, 1, '2020-05-14 07:46:47');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('RNZQI1', 'R0KALA', 'type1', '3', 0, '2020-05-14');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', 'WFSYBC', 'MXM0KD', 'right', 'MXM0KD', 'jesse_right', 'right wing', 'for Jesse', 'jesse_right@gmail.com', 'bfd59291e825b5f2bbf1eb76569f8fe7', '234234234', '127.0.0.1', '1');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('MXM0KD', 'WFSYBC', '100', 0, '127.0.0.1', '2020-05-14 08:56:34', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('MXM0KD', 'transfer', 5, '100', 'Initial transfer to WFSYBC on account creation from parent', '2020-05-14 08:56:34');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('WFSYBC', 'reciver', 5, '100', 'Initial transfer to WFSYBC on account creation from parent', '2020-05-14 08:56:34');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('WFSYBC', 'MXM0KD', '1', '100', '2020-05-14', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('WFSYBC', 'investment', 8, '100', '2020-05-14', 1, 'User WFSYBC Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('WFSYBC', 0, 0, 1, '2020-05-14 08:56:34');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('WFSYBC', 0, 0, 1, '2020-05-14 08:56:34');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('MXM0KD', 'WFSYBC', 'type1', '1', 0, '2020-05-14');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`) VALUES ('', '764Y80', 'RNZQI1', 'right', 'RNZQI1', 'right_michal', 'right_wing', 'michal', 'right_michal@gmail.com', 'bfd59291e825b5f2bbf1eb76569f8fe7', '23424234', '127.0.0.1', '1');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('RNZQI1', '764Y80', '100', 0, '127.0.0.1', '2020-05-14 08:57:52', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('RNZQI1', 'transfer', 6, '100', 'Initial transfer to 764Y80 on account creation from parent', '2020-05-14 08:57:52');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('764Y80', 'reciver', 6, '100', 'Initial transfer to 764Y80 on account creation from parent', '2020-05-14 08:57:52');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('764Y80', 'RNZQI1', '1', '100', '2020-05-14', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('764Y80', 'investment', 9, '100', '2020-05-14', 1, 'User 764Y80 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('764Y80', 0, 0, 1, '2020-05-14 08:57:52');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('764Y80', 0, 0, 1, '2020-05-14 08:57:52');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('RNZQI1', '764Y80', 'type1', '1', 0, '2020-05-14');
