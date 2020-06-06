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
UPDATE `admin` SET `last_login` = '2020-05-16 13:07:44', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2020-05-17 00:00:55', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
DELETE from transections Where
				transection_catetory IN('reciver','transfer')
				AND releted_id=;
DELETE from transections Where
				transection_catetory IN('reciver','transfer')
				AND releted_id=;
DELETE from transections Where
				transection_catetory IN('reciver','transfer')
				AND releted_id=6;
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=6;
DELETE FROM `investment`
WHERE `user_id` = '764Y80';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=6;
DELETE FROM `investment`
WHERE `user_id` = '764Y80';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=5;
DELETE FROM `investment`
WHERE `user_id` = 'WFSYBC';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=6;
DELETE FROM `investment`
WHERE `user_id` = '764Y80';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=6;
DELETE FROM `investment`
WHERE `user_id` = '764Y80';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=6;
DELETE FROM `transfer`
WHERE `sender_user_id` = '764Y80'
OR `receiver_user_id` = '764Y80';
DELETE FROM `transfer`
WHERE `sender_user_id` = '764Y80'
OR `receiver_user_id` = '764Y80';
DELETE FROM `transfer`
WHERE `sender_user_id` = '764Y80'
OR `receiver_user_id` = '764Y80';
DELETE FROM `investment`
WHERE `user_id` = '764Y80';
DELETE FROM `transections`
WHERE `user_id` = '764Y80'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = '764Y80';
DELETE FROM `team_bonus_details`
WHERE `user_id` = '764Y80';
DELETE FROM `team_bonus`
WHERE `user_id` = '764Y80';
DELETE FROM `user_registration`
WHERE `user_id` = '764Y80';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=4;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'R0KALA'
OR `receiver_user_id` = 'R0KALA';
DELETE FROM `investment`
WHERE `user_id` = 'R0KALA';
DELETE FROM `transections`
WHERE `user_id` = 'R0KALA'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'R0KALA';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'R0KALA';
DELETE FROM `team_bonus`
WHERE `user_id` = 'R0KALA';
DELETE FROM `user_registration`
WHERE `user_id` = 'R0KALA';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=5;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'WFSYBC'
OR `receiver_user_id` = 'WFSYBC';
DELETE FROM `investment`
WHERE `user_id` = 'WFSYBC';
DELETE FROM `transections`
WHERE `user_id` = 'WFSYBC'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'WFSYBC';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'WFSYBC';
DELETE FROM `team_bonus`
WHERE `user_id` = 'WFSYBC';
DELETE FROM `user_registration`
WHERE `user_id` = 'WFSYBC';
UPDATE `admin` SET `last_login` = '2020-05-17 16:34:09', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`) VALUES ('', 'UHSUXU', 'RNZQI1', 'right', 'RNZQI1', 'right_michal', 'Right ', 'michal', 'right_michal@gmail.com', '29bb8e660de8d51d13e4cd4035cc0e5f', '2342424233', '127.0.0.1', 1, '0');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('RNZQI1', 'UHSUXU', '400', 0, '127.0.0.1', '2020-05-17 05:29:40', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('RNZQI1', 'transfer', 4, '400', 'Initial transfer to UHSUXU on account creation from parent', '2020-05-17 05:29:40');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('UHSUXU', 'reciver', 4, '400', 'Initial transfer to UHSUXU on account creation from parent', '2020-05-17 05:29:40');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('UHSUXU', 'RNZQI1', '3', '400', '2020-05-17', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('UHSUXU', 'investment', 7, '400', '2020-05-17', 1, 'User UHSUXU Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('UHSUXU', 0, 0, 1, '2020-05-17 05:29:40');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('UHSUXU', 0, 0, 1, '2020-05-17 05:29:40');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('RNZQI1', 'UHSUXU', 'type1', '3', 0, '2020-05-17');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`) VALUES ('', 'NFFFJL', 'I4B39Q', 'left', 'RNZQI1', 'left_michal', 'Left ', 'michal', 'left_michal@gmail.com', '755744c24764b507de47d526da3d9499', '343434', '127.0.0.1', 1, '400');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('I4B39Q', 'NFFFJL', '500', 0, '127.0.0.1', '2020-05-17 05:30:43', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('I4B39Q', 'transfer', 5, '500', 'Initial transfer to NFFFJL on account creation from parent', '2020-05-17 05:30:43');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('NFFFJL', 'reciver', 5, '500', 'Initial transfer to NFFFJL on account creation from parent', '2020-05-17 05:30:43');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('NFFFJL', 'I4B39Q', '11', '500', '2020-05-17', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('NFFFJL', 'investment', 8, '500', '2020-05-17', 1, 'User NFFFJL Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('NFFFJL', 0, 0, 1, '2020-05-17 05:30:43');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('NFFFJL', 0, 0, 1, '2020-05-17 05:30:43');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('I4B39Q', 'NFFFJL', 'type1', '11', 0, '2020-05-17');
UPDATE `admin` SET `last_login` = '2020-05-17 22:23:11', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=5;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'NFFFJL'
OR `receiver_user_id` = 'NFFFJL';
DELETE FROM `investment`
WHERE `user_id` = 'NFFFJL';
DELETE FROM `transections`
WHERE `user_id` = 'NFFFJL'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'NFFFJL';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'NFFFJL';
DELETE FROM `team_bonus`
WHERE `user_id` = 'NFFFJL';
DELETE FROM `user_registration`
WHERE `user_id` = 'NFFFJL';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=4;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'UHSUXU'
OR `receiver_user_id` = 'UHSUXU';
DELETE FROM `investment`
WHERE `user_id` = 'UHSUXU';
DELETE FROM `transections`
WHERE `user_id` = 'UHSUXU'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'UHSUXU';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'UHSUXU';
DELETE FROM `team_bonus`
WHERE `user_id` = 'UHSUXU';
DELETE FROM `user_registration`
WHERE `user_id` = 'UHSUXU';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=3;
DELETE FROM `transfer`
WHERE `sender_user_id` = '7NHRLR'
OR `receiver_user_id` = '7NHRLR';
DELETE FROM `investment`
WHERE `user_id` = '7NHRLR';
DELETE FROM `transections`
WHERE `user_id` = '7NHRLR'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = '7NHRLR';
DELETE FROM `team_bonus_details`
WHERE `user_id` = '7NHRLR';
DELETE FROM `team_bonus`
WHERE `user_id` = '7NHRLR';
DELETE FROM `user_registration`
WHERE `user_id` = '7NHRLR';
DELETE FROM `transfer`
WHERE `sender_user_id` = 'RNZQI1'
OR `receiver_user_id` = 'RNZQI1';
DELETE FROM `investment`
WHERE `user_id` = 'RNZQI1';
DELETE FROM `transections`
WHERE `user_id` = 'RNZQI1'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'RNZQI1';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'RNZQI1';
DELETE FROM `team_bonus`
WHERE `user_id` = 'RNZQI1';
DELETE FROM `user_registration`
WHERE `user_id` = 'RNZQI1';
DELETE FROM `transfer`
WHERE `sender_user_id` = 'MXM0KD'
OR `receiver_user_id` = 'MXM0KD';
DELETE FROM `investment`
WHERE `user_id` = 'MXM0KD';
DELETE FROM `transections`
WHERE `user_id` = 'MXM0KD'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'MXM0KD';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'MXM0KD';
DELETE FROM `team_bonus`
WHERE `user_id` = 'MXM0KD';
DELETE FROM `user_registration`
WHERE `user_id` = 'MXM0KD';
DELETE FROM `transfer`
WHERE `sender_user_id` = 'I4B39Q'
OR `receiver_user_id` = 'I4B39Q';
DELETE FROM `investment`
WHERE `user_id` = 'I4B39Q';
DELETE FROM `transections`
WHERE `user_id` = 'I4B39Q'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'I4B39Q';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'I4B39Q';
DELETE FROM `team_bonus`
WHERE `user_id` = 'I4B39Q';
DELETE FROM `user_registration`
WHERE `user_id` = 'I4B39Q';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=1;
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=2;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'KYBTG1'
OR `receiver_user_id` = 'KYBTG1';
DELETE FROM `investment`
WHERE `user_id` = 'KYBTG1';
DELETE FROM `transections`
WHERE `user_id` = 'KYBTG1'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'KYBTG1';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'KYBTG1';
DELETE FROM `team_bonus`
WHERE `user_id` = 'KYBTG1';
DELETE FROM `user_registration`
WHERE `user_id` = 'KYBTG1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`) VALUES ('', 'UE64ZP', '2XPOWR', 'left', '2XPOWR', 'left_2xpowers', 'left', '2xpowers', 'left_2xpowers@gmail.com', 'bc7d5bcfb05f05ca1da22f0f2b9f6ebb', '2234234243', '127.0.0.1', '1', '0');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'UE64ZP', '100', 0, '127.0.0.1', '2020-05-17 11:01:29', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 6, '100', 'Initial transfer to UE64ZP on account creation from parent', '2020-05-17 11:01:29');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('UE64ZP', 'reciver', 6, '100', 'Initial transfer to UE64ZP on account creation from parent', '2020-05-17 11:01:29');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('UE64ZP', '2XPOWR', '1', '100', '2020-05-17', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('UE64ZP', 'investment', 9, '100', '2020-05-17', 1, 'User UE64ZP Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('UE64ZP', 0, 0, 1, '2020-05-17 11:01:29');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('UE64ZP', 0, 0, 1, '2020-05-17 11:01:29');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'UE64ZP', 'type1', '1', 0, '2020-05-17');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`) VALUES ('', '6EJ2SH', '2XPOWR', 'right', '2XPOWR', 'right_2xpowers', 'right', '2xpowers', 'right_2xpowers@gmail.comm', 'd652c4063708949e89ba2b2bc9ad49e4', '23423424', '127.0.0.1', '1', '0');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '6EJ2SH', '1600', 0, '127.0.0.1', '2020-05-17 11:02:31', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 7, '1600', 'Initial transfer to 6EJ2SH on account creation from parent', '2020-05-17 11:02:31');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('6EJ2SH', 'reciver', 7, '1600', 'Initial transfer to 6EJ2SH on account creation from parent', '2020-05-17 11:02:31');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('6EJ2SH', '2XPOWR', '5', '1600', '2020-05-17', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('6EJ2SH', 'investment', 10, '1600', '2020-05-17', 1, 'User 6EJ2SH Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('6EJ2SH', 0, 0, 1, '2020-05-17 11:02:31');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('6EJ2SH', 0, 0, 1, '2020-05-17 11:02:31');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '6EJ2SH', 'type1', '5', 0, '2020-05-17');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`) VALUES ('', 'B7W6FX', 'UE64ZP', 'left', 'UE64ZP', 'c1_left_2xp', 'c1_left', '_2xp', 'c1_left_2xp@gmail.com', 'df24a01c4c2d4f4019e5f5eee8a25631', '2342342424', '127.0.0.1', '1', '0');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('UE64ZP', 'B7W6FX', '6400', 0, '127.0.0.1', '2020-05-17 11:04:08', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('UE64ZP', 'transfer', 8, '6400', 'Initial transfer to B7W6FX on account creation from parent', '2020-05-17 11:04:08');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('B7W6FX', 'reciver', 8, '6400', 'Initial transfer to B7W6FX on account creation from parent', '2020-05-17 11:04:08');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('B7W6FX', 'UE64ZP', '7', '6400', '2020-05-17', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('B7W6FX', 'investment', 11, '6400', '2020-05-17', 1, 'User B7W6FX Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('B7W6FX', 0, 0, 1, '2020-05-17 11:04:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('B7W6FX', 0, 0, 1, '2020-05-17 11:04:08');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('UE64ZP', 'B7W6FX', 'type1', '7', 0, '2020-05-17');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`) VALUES ('', 'EHOSCN', 'UE64ZP', 'right', 'UE64ZP', 'c2_left_2xp', 'c2_left', '_2xp', 'c2_left_2xp@gmail.com', '07d908cb82b3e920b2058782b3c1eb76', '234242342', '127.0.0.1', '1', '0');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('UE64ZP', 'EHOSCN', '3200', 0, '127.0.0.1', '2020-05-17 11:05:02', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('UE64ZP', 'transfer', 9, '3200', 'Initial transfer to EHOSCN on account creation from parent', '2020-05-17 11:05:02');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('EHOSCN', 'reciver', 9, '3200', 'Initial transfer to EHOSCN on account creation from parent', '2020-05-17 11:05:02');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('EHOSCN', 'UE64ZP', '6', '3200', '2020-05-17', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('EHOSCN', 'investment', 12, '3200', '2020-05-17', 1, 'User EHOSCN Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('EHOSCN', 0, 0, 1, '2020-05-17 11:05:02');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('EHOSCN', 0, 0, 1, '2020-05-17 11:05:02');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('UE64ZP', 'EHOSCN', 'type1', '6', 0, '2020-05-17');
UPDATE `admin` SET `last_login` = '2020-05-21 02:17:57', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `deposit` (`user_id`, `deposit_amount`, `deposit_method`, `fees`, `comments`, `deposit_date`, `deposit_ip`, `status`) VALUES ('2XPOWR', '100000', 'admin', 0, 'testing amount', '2020-05-21 02:41:32', '127.0.0.1', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'deposit', 1, '100000', 'testing amount', '2020-05-21 02:41:32');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'QVCFII', '2XPOWR', 'left', '6EJ2SH', 'testing343', 'Kamal', 'ustad', 'testing343@gmail.com', '618de19d24e5c0a6d2b5111c3459bb9f', '34234234234', '127.0.0.1', '1', '0', '2020-05-21 02:43:30', '2020-05-21 02:43:30');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'QVCFII', '100', 0, '127.0.0.1', '2020-05-21 02:43:30', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 10, '100', 'Initial transfer to QVCFII on account creation from parent', '2020-05-21 02:43:30');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('QVCFII', 'reciver', 10, '100', 'Initial transfer to QVCFII on account creation from parent', '2020-05-21 02:43:30');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('QVCFII', '2XPOWR', '1', '100', '2020-05-21', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('QVCFII', 'investment', 13, '100', '2020-05-21', 1, 'User QVCFII Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('QVCFII', 0, 0, 1, '2020-05-21 02:43:30');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('QVCFII', 0, 0, 1, '2020-05-21 02:43:30');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'QVCFII', 'type1', '1', 0, '2020-05-21');
UPDATE `admin` SET `last_login` = '2020-05-27 12:01:28', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('EHOSCN', 'EHOSCN', 'type2', '6', '12', '0', '2020-05-27');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'EHOSCN', 'Payout', 'You received your payout. Your new balance is $0', '2020-05-27 12:01:41');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('B7W6FX', 'B7W6FX', 'type2', '7', '11', '0', '2020-05-27');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'B7W6FX', 'Payout', 'You received your payout. Your new balance is $0', '2020-05-27 12:01:44');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('6EJ2SH', '6EJ2SH', 'type2', '5', '10', '0', '2020-05-27');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, '6EJ2SH', 'Payout', 'You received your payout. Your new balance is $0', '2020-05-27 12:01:45');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('UE64ZP', 'UE64ZP', 'type2', '1', '9', '0', '2020-05-27');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'UE64ZP', 'Payout', 'You received your payout. Your new balance is $-9600', '2020-05-27 12:01:47');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('EHOSCN', 'EHOSCN', 'type2', '6', '12', '0', '2020-05-25');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'EHOSCN', 'Payout', 'You received your payout. Your new balance is $0', '2020-05-25 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('B7W6FX', 'B7W6FX', 'type2', '7', '11', '0', '2020-05-25');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'B7W6FX', 'Payout', 'You received your payout. Your new balance is $0', '2020-05-25 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('6EJ2SH', '6EJ2SH', 'type2', '5', '10', '0', '2020-05-25');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, '6EJ2SH', 'Payout', 'You received your payout. Your new balance is $0', '2020-05-25 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('UE64ZP', 'UE64ZP', 'type2', '1', '9', '0', '2020-05-25');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'UE64ZP', 'Payout', 'You received your payout. Your new balance is $-9600', '2020-05-25 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('QVCFII', 'QVCFII', 'type2', '1', '13', '0', '2020-06-01');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'QVCFII', 'Payout', 'You received your payout. Your new balance is $0', '2020-06-01 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('EHOSCN', 'EHOSCN', 'type2', '6', '12', '0', '2020-06-01');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'EHOSCN', 'Payout', 'You received your payout. Your new balance is $0', '2020-06-01 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('B7W6FX', 'B7W6FX', 'type2', '7', '11', '0', '2020-06-01');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'B7W6FX', 'Payout', 'You received your payout. Your new balance is $0', '2020-06-01 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('6EJ2SH', '6EJ2SH', 'type2', '5', '10', '0', '2020-06-01');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, '6EJ2SH', 'Payout', 'You received your payout. Your new balance is $0', '2020-06-01 12:00:00');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `order_id`, `amount`, `date`) VALUES ('UE64ZP', 'UE64ZP', 'type2', '1', '9', '0', '2020-06-01');
INSERT INTO `message` (`sender_id`, `receiver_id`, `subject`, `message`, `datetime`) VALUES (1, 'UE64ZP', 'Payout', 'You received your payout. Your new balance is $-9600', '2020-06-01 12:00:00');
INSERT INTO `cron_jobs` (`name`, `log`) VALUES ('payout', '<br> Adding ROI for user QVCFII on Package 1 for date 2020-06-01<br> Adding ROI for user EHOSCN on Package 6 for date 2020-06-01<br> Adding ROI for user B7W6FX on Package 7 for date 2020-06-01<br> Adding ROI for user 6EJ2SH on Package 5 for date 2020-06-01<br> Adding ROI for user UE64ZP on Package 1 for date 2020-06-01');
INSERT INTO `cron_jobs` (`name`, `log`) VALUES ('payout', '<br> ROI already exists for user QVCFII on Package 1 for date 2020-06-01<br> ROI already exists for user EHOSCN on Package 6 for date 2020-06-01<br> ROI already exists for user B7W6FX on Package 7 for date 2020-06-01<br> ROI already exists for user 6EJ2SH on Package 5 for date 2020-06-01<br> ROI already exists for user UE64ZP on Package 1 for date 2020-06-01');
INSERT INTO `cron_jobs` (`name`, `log`) VALUES ('payout', '<br> ROI already exists for user QVCFII on Package 1 for date 2020-06-01<br> ROI already exists for user EHOSCN on Package 6 for date 2020-06-01<br> ROI already exists for user B7W6FX on Package 7 for date 2020-06-01<br> ROI already exists for user 6EJ2SH on Package 5 for date 2020-06-01<br> ROI already exists for user UE64ZP on Package 1 for date 2020-06-01');
INSERT INTO `cron_jobs` (`name`, `log`) VALUES ('payout', '<br> ROI already exists for user QVCFII on Package 1 for date 2020-06-01<br> ROI already exists for user EHOSCN on Package 6 for date 2020-06-01<br> ROI already exists for user B7W6FX on Package 7 for date 2020-06-01<br> ROI already exists for user 6EJ2SH on Package 5 for date 2020-06-01<br> ROI already exists for user UE64ZP on Package 1 for date 2020-06-01');
UPDATE `admin` SET `last_login` = '2020-06-02 23:59:15', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-06-03 17:28:20'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_logout` = '2020-06-03 17:28:23'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2020-06-03 22:04:34', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `admin` SET `last_login` = '2020-06-03 22:04:54', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-06-03 22:05:01'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-06-04 14:00:41'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2020-06-04 14:00:45', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'Z0IBC9', '2XPOWR', 'right', 'QVCFII', 'test23', 'test', 'test23', 'test23@gmail.com', 'b48cca5aebb82a328227b78d899506f5', '2342424', '127.0.0.1', '1', '0', '2020-06-04 15:04:08', '2020-06-04 15:04:08');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'Z0IBC9', '100', 0, '127.0.0.1', '2020-06-04 03:04:08', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 11, '100', 'Initial transfer to Z0IBC9 on account creation from parent', '2020-06-04 03:04:08');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('Z0IBC9', 'reciver', 11, '100', 'Initial transfer to Z0IBC9 on account creation from parent', '2020-06-04 03:04:08');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('Z0IBC9', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('Z0IBC9', 'investment', 14, '100', '2020-06-04', 1, 'User Z0IBC9 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Z0IBC9', 0, 0, 1, '2020-06-04 03:04:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Z0IBC9', 0, 0, 1, '2020-06-04 03:04:08');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'Z0IBC9', 'type1', '1', 0, '2020-06-04');
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=11;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'Z0IBC9'
OR `receiver_user_id` = 'Z0IBC9';
DELETE FROM `investment`
WHERE `user_id` = 'Z0IBC9';
DELETE FROM `transections`
WHERE `user_id` = 'Z0IBC9'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'Z0IBC9';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'Z0IBC9';
DELETE FROM `team_bonus`
WHERE `user_id` = 'Z0IBC9';
DELETE FROM `user_registration`
WHERE `user_id` = 'Z0IBC9';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', '2RMZLF', '2XPOWR', 'right', 'QVCFII', 'test123', 'testing12', 'last', 'test123@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '23424', '127.0.0.1', '1', '0', '2020-06-04 15:10:03', '2020-06-04 15:10:03');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', '8SH7AY', '2XPOWR', 'right', 'QVCFII', 'test123', 'testing12', 'last', 'test123@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '23424', '127.0.0.1', '1', '0', '2020-06-04 15:10:24', '2020-06-04 15:10:24');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'PNZE95', '2XPOWR', 'right', 'QVCFII', 'test123', 'testing12', 'last', 'test123@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '23424', '127.0.0.1', '1', '0', '2020-06-04 15:10:29', '2020-06-04 15:10:29');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'V349Q8', '2XPOWR', 'right', 'QVCFII', 'test123', 'testing12', 'last', 'test123@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '23424', '127.0.0.1', '1', '0', '2020-06-04 15:11:08', '2020-06-04 15:11:08');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'V349Q8', '100', 0, '127.0.0.1', '2020-06-04 03:11:08', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 12, '100', 'Initial transfer to V349Q8 on account creation from parent', '2020-06-04 03:11:08');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('V349Q8', 'reciver', 12, '100', 'Initial transfer to V349Q8 on account creation from parent', '2020-06-04 03:11:08');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('V349Q8', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('V349Q8', 'investment', 15, '100', '2020-06-04', 1, 'User V349Q8 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('V349Q8', 0, 0, 1, '2020-06-04 03:11:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('V349Q8', 0, 0, 1, '2020-06-04 03:11:08');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'V349Q8', 'type1', '1', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 0, 0, '2020-06-04 03:11:08');
UPDATE `team_bonus` SET `sponser_commission` = 0, `team_commission` = 0, `last_update` = '2020-06-04 03:11:08'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:11:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:11:08');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'Q7G0FD', '2XPOWR', 'left', 'QVCFII', 'testing123', 'Kamal', 'Khan', 'testing123@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '234243', '127.0.0.1', '1', '0', '2020-06-04 15:12:39', '2020-06-04 15:12:39');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'Q7G0FD', '200', 0, '127.0.0.1', '2020-06-04 03:12:39', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 13, '200', 'Initial transfer to Q7G0FD on account creation from parent', '2020-06-04 03:12:39');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('Q7G0FD', 'reciver', 13, '200', 'Initial transfer to Q7G0FD on account creation from parent', '2020-06-04 03:12:39');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('Q7G0FD', '2XPOWR', '2', '200', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('Q7G0FD', 'investment', 16, '200', '2020-06-04', 1, 'User Q7G0FD Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Q7G0FD', 0, 0, 1, '2020-06-04 03:12:39');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Q7G0FD', 0, 0, 1, '2020-06-04 03:12:39');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'Q7G0FD', 'type1', '2', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 0, 0, '2020-06-04 03:12:39');
UPDATE `team_bonus` SET `sponser_commission` = 0, `team_commission` = 0, `last_update` = '2020-06-04 03:12:39'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:12:39');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:12:39');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'OT3VNG', '2XPOWR', 'left', 'QVCFII', 'testing123', 'Kamal', 'Khan', 'testing123@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '234343434', '127.0.0.1', '1', '0', '2020-06-04 15:14:57', '2020-06-04 15:14:57');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'OT3VNG', '100', 0, '127.0.0.1', '2020-06-04 03:14:57', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 14, '100', 'Initial transfer to OT3VNG on account creation from parent', '2020-06-04 03:14:57');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('OT3VNG', 'reciver', 14, '100', 'Initial transfer to OT3VNG on account creation from parent', '2020-06-04 03:14:57');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('OT3VNG', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('OT3VNG', 'investment', 17, '100', '2020-06-04', 1, 'User OT3VNG Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('OT3VNG', 0, 0, 1, '2020-06-04 03:14:57');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('OT3VNG', 0, 0, 1, '2020-06-04 03:14:57');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'OT3VNG', 'type1', '1', 0, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'O60G1R', '2XPOWR', 'left', 'QVCFII', 'testing123', 'Kamal', 'Khan', 'testing123@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '234343434', '127.0.0.1', '1', '0', '2020-06-04 15:19:07', '2020-06-04 15:19:07');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'O60G1R', '100', 0, '127.0.0.1', '2020-06-04 03:19:07', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 15, '100', 'Initial transfer to O60G1R on account creation from parent', '2020-06-04 03:19:07');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('O60G1R', 'reciver', 15, '100', 'Initial transfer to O60G1R on account creation from parent', '2020-06-04 03:19:07');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('O60G1R', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('O60G1R', 'investment', 19, '100', '2020-06-04', 1, 'User O60G1R Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('O60G1R', 0, 0, 1, '2020-06-04 03:19:07');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('O60G1R', 0, 0, 1, '2020-06-04 03:19:07');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'O60G1R', 'type1', '1', 0, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'KGAQTW', '2XPOWR', 'left', 'QVCFII', 'testing123', 'Kamal', 'Khan', 'testing123@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '234343434', '127.0.0.1', '1', '0', '2020-06-04 15:19:37', '2020-06-04 15:19:37');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'KGAQTW', '100', 0, '127.0.0.1', '2020-06-04 03:19:37', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 16, '100', 'Initial transfer to KGAQTW on account creation from parent', '2020-06-04 03:19:37');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('KGAQTW', 'reciver', 16, '100', 'Initial transfer to KGAQTW on account creation from parent', '2020-06-04 03:19:37');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('KGAQTW', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('KGAQTW', 'investment', 20, '100', '2020-06-04', 1, 'User KGAQTW Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('KGAQTW', 0, 0, 1, '2020-06-04 03:19:37');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('KGAQTW', 0, 0, 1, '2020-06-04 03:19:37');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'KGAQTW', 'type1', '1', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 0, 0, '2020-06-04 03:19:37');
UPDATE `team_bonus` SET `sponser_commission` = 0, `team_commission` = 0, `last_update` = '2020-06-04 03:19:37'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:19:37');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:19:37');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'Q1CX3Z', '2XPOWR', 'left', 'QVCFII', 'testing123', '23423', 'Kamal', 'testing@gmail.com', '14e967506c2c0fbcd5e9610f11198529', '23424243', '127.0.0.1', '1', '0', '2020-06-04 15:21:35', '2020-06-04 15:21:35');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'Q1CX3Z', '400', 0, '127.0.0.1', '2020-06-04 03:21:35', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 17, '400', 'Initial transfer to Q1CX3Z on account creation from parent', '2020-06-04 03:21:35');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('Q1CX3Z', 'reciver', 17, '400', 'Initial transfer to Q1CX3Z on account creation from parent', '2020-06-04 03:21:35');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('Q1CX3Z', '2XPOWR', '3', '400', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('Q1CX3Z', 'investment', 21, '400', '2020-06-04', 1, 'User Q1CX3Z Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Q1CX3Z', 0, 0, 1, '2020-06-04 03:21:35');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Q1CX3Z', 0, 0, 1, '2020-06-04 03:21:35');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'Q1CX3Z', 'type1', '3', 0, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'T3DXOP', '2XPOWR', 'left', 'QVCFII', 'testing123', '23423', 'Kamal', 'testing@gmail.com', '14e967506c2c0fbcd5e9610f11198529', '23424243', '127.0.0.1', '1', '0', '2020-06-04 15:22:05', '2020-06-04 15:22:05');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'T3DXOP', '400', 0, '127.0.0.1', '2020-06-04 03:22:05', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 18, '400', 'Initial transfer to T3DXOP on account creation from parent', '2020-06-04 03:22:05');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('T3DXOP', 'reciver', 18, '400', 'Initial transfer to T3DXOP on account creation from parent', '2020-06-04 03:22:05');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('T3DXOP', '2XPOWR', '3', '400', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('T3DXOP', 'investment', 22, '400', '2020-06-04', 1, 'User T3DXOP Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('T3DXOP', 0, 0, 1, '2020-06-04 03:22:05');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('T3DXOP', 0, 0, 1, '2020-06-04 03:22:05');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'T3DXOP', 'type1', '3', 0, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'XVD8V8', '2XPOWR', 'left', 'QVCFII', 'testing123', '23423', 'Kamal', 'testing@gmail.com', '14e967506c2c0fbcd5e9610f11198529', '23424243', '127.0.0.1', '1', '0', '2020-06-04 15:22:52', '2020-06-04 15:22:52');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'XVD8V8', '400', 0, '127.0.0.1', '2020-06-04 03:22:52', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 19, '400', 'Initial transfer to XVD8V8 on account creation from parent', '2020-06-04 03:22:52');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('XVD8V8', 'reciver', 19, '400', 'Initial transfer to XVD8V8 on account creation from parent', '2020-06-04 03:22:52');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('XVD8V8', '2XPOWR', '3', '400', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('XVD8V8', 'investment', 23, '400', '2020-06-04', 1, 'User XVD8V8 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('XVD8V8', 0, 0, 1, '2020-06-04 03:22:52');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('XVD8V8', 0, 0, 1, '2020-06-04 03:22:52');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'XVD8V8', 'type1', '3', 0, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'KW1QA1', '2XPOWR', 'left', 'QVCFII', 'testing123', '23423', 'Kamal', 'testing@gmail.com', '14e967506c2c0fbcd5e9610f11198529', '23424243', '127.0.0.1', '1', '0', '2020-06-04 15:23:08', '2020-06-04 15:23:08');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'KW1QA1', '400', 0, '127.0.0.1', '2020-06-04 03:23:08', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 20, '400', 'Initial transfer to KW1QA1 on account creation from parent', '2020-06-04 03:23:08');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('KW1QA1', 'reciver', 20, '400', 'Initial transfer to KW1QA1 on account creation from parent', '2020-06-04 03:23:08');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('KW1QA1', '2XPOWR', '3', '400', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('KW1QA1', 'investment', 24, '400', '2020-06-04', 1, 'User KW1QA1 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('KW1QA1', 0, 0, 1, '2020-06-04 03:23:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('KW1QA1', 0, 0, 1, '2020-06-04 03:23:08');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'KW1QA1', 'type1', '3', 0, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'TFEN82', '2XPOWR', 'left', 'QVCFII', 'testing123', '23423', 'Kamal', 'testing@gmail.com', '14e967506c2c0fbcd5e9610f11198529', '23424243', '127.0.0.1', '1', '0', '2020-06-04 15:23:20', '2020-06-04 15:23:20');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'TFEN82', '400', 0, '127.0.0.1', '2020-06-04 03:23:20', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 21, '400', 'Initial transfer to TFEN82 on account creation from parent', '2020-06-04 03:23:20');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('TFEN82', 'reciver', 21, '400', 'Initial transfer to TFEN82 on account creation from parent', '2020-06-04 03:23:20');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('TFEN82', '2XPOWR', '3', '400', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('TFEN82', 'investment', 25, '400', '2020-06-04', 1, 'User TFEN82 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('TFEN82', 0, 0, 1, '2020-06-04 03:23:20');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('TFEN82', 0, 0, 1, '2020-06-04 03:23:20');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'TFEN82', 'type1', '3', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 40, 40, '2020-06-04 03:23:20');
UPDATE `team_bonus` SET `sponser_commission` = 40, `team_commission` = 40, `last_update` = '2020-06-04 03:23:20'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:23:20');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:23:20');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', '1CFD49', '2XPOWR', 'left', 'QVCFII', 'testing234', 'test', 'last', 'testing234@gmail.com', '3dffa56bb72050f8104ef987ebd06cee', '23423424', '127.0.0.1', '1', '0', '2020-06-04 15:24:30', '2020-06-04 15:24:30');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '1CFD49', '100', 0, '127.0.0.1', '2020-06-04 03:24:30', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 22, '100', 'Initial transfer to 1CFD49 on account creation from parent', '2020-06-04 03:24:30');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('1CFD49', 'reciver', 22, '100', 'Initial transfer to 1CFD49 on account creation from parent', '2020-06-04 03:24:30');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('1CFD49', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('1CFD49', 'investment', 26, '100', '2020-06-04', 1, 'User 1CFD49 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('1CFD49', 0, 0, 1, '2020-06-04 03:24:30');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('1CFD49', 0, 0, 1, '2020-06-04 03:24:30');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '1CFD49', 'type1', '1', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 10, 10, '2020-06-04 03:24:30');
UPDATE `team_bonus` SET `sponser_commission` = 10, `team_commission` = 10, `last_update` = '2020-06-04 03:24:30'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:24:30');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:24:30');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `created`, `modified`) VALUES ('', 'FYS1WU', '2XPOWR', 'left', 'QVCFII', 'testing234', 'test', 'last', 'testing234@gmail.com', '25fa3efcd86beac75ee4d74179296cd4', '234234324', '127.0.0.1', '1', '0', '2020-06-04 15:26:11', '2020-06-04 15:26:11');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'FYS1WU', '100', 0, '127.0.0.1', '2020-06-04 03:26:11', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 23, '100', 'Initial transfer to FYS1WU on account creation from parent', '2020-06-04 03:26:11');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('FYS1WU', 'reciver', 23, '100', 'Initial transfer to FYS1WU on account creation from parent', '2020-06-04 03:26:11');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('FYS1WU', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('FYS1WU', 'investment', 27, '100', '2020-06-04', 1, 'User FYS1WU Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('FYS1WU', 0, 0, 1, '2020-06-04 03:26:11');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('FYS1WU', 0, 0, 1, '2020-06-04 03:26:11');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'FYS1WU', 'type1', '1', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 10, 10, '2020-06-04 03:26:11');
UPDATE `team_bonus` SET `sponser_commission` = 10, `team_commission` = 10, `last_update` = '2020-06-04 03:26:11'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:26:11');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 10, 10, '2020-06-04 03:26:11');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'DHE6WK', '2XPOWR', 'right', 'FYS1WU', 'testing_12', 'testing', '_234', 'testing_12@gmail.com', '976e3cc83ba07bc50bf10aea42270359', '234234234', '127.0.0.1', '1', 0, 0, '2020-06-04 16:38:37', '2020-06-04 16:38:37');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'DHE6WK', '100', 0, '127.0.0.1', '2020-06-04 04:38:37', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 24, '100', 'Initial transfer to DHE6WK on account creation from parent', '2020-06-04 04:38:37');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('DHE6WK', 'reciver', 24, '100', 'Initial transfer to DHE6WK on account creation from parent', '2020-06-04 04:38:37');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('DHE6WK', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('DHE6WK', 'investment', 28, '100', '2020-06-04', 1, 'User DHE6WK Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('DHE6WK', 0, 0, 1, '2020-06-04 04:38:37');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('DHE6WK', 0, 0, 1, '2020-06-04 04:38:37');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'DHE6WK', 'type1', '1', 0, '2020-06-04');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('QVCFII', 10, 10, '2020-06-04 04:38:37');
UPDATE `team_bonus` SET `sponser_commission` = 10, `team_commission` = 10, `last_update` = '2020-06-04 04:38:37'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('6EJ2SH', 10, 10, '2020-06-04 04:38:37');
UPDATE `team_bonus` SET `sponser_commission` = 10, `team_commission` = 10, `last_update` = '2020-06-04 04:38:37'
WHERE `user_id` IS NULL;
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 20, 20, '2020-06-04 04:38:37');
UPDATE `team_bonus` SET `sponser_commission` = 20, `team_commission` = 20, `last_update` = '2020-06-04 04:38:37'
WHERE `user_id` IS NULL;
UPDATE `package` SET `package_id` = '9', `package_name` = 'Abuja', `period` = '365', `package_deatils` = 'Package 9', `package_amount` = '25600', `daily_roi` = '0', `points` = '0', `direct_bonus` = '10', `indirect_bonus` = '0', `weekly_roi` = 0, `monthly_roi` = 0, `yearly_roi` = 0, `total_percent` = '220', `status` = '1'
WHERE `package_id` = '9';
UPDATE `package` SET `package_id` = '9', `package_name` = 'Abuja', `period` = '365', `package_deatils` = 'Package 9', `package_amount` = '25600', `daily_roi` = '0', `points` = '0', `direct_bonus` = '10', `indirect_bonus` = '10', `weekly_roi` = 0, `monthly_roi` = 0, `yearly_roi` = 0, `total_percent` = '220', `status` = '1'
WHERE `package_id` = '9';
UPDATE `package` SET `package_id` = '4', `package_name` = 'Ex-Pro', `period` = '365', `package_deatils` = 'Package 4', `package_amount` = '800', `daily_roi` = '0', `points` = '0', `direct_bonus` = '0', `indirect_bonus` = '10', `weekly_roi` = 0, `monthly_roi` = 0, `yearly_roi` = 0, `total_percent` = '190', `status` = '1'
WHERE `package_id` = '4';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=24;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'DHE6WK'
OR `receiver_user_id` = 'DHE6WK';
DELETE FROM `investment`
WHERE `user_id` = 'DHE6WK';
DELETE FROM `transections`
WHERE `user_id` = 'DHE6WK'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'DHE6WK';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'DHE6WK';
DELETE FROM `team_bonus`
WHERE `user_id` = 'DHE6WK';
DELETE FROM `user_registration`
WHERE `user_id` = 'DHE6WK';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=23;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'FYS1WU'
OR `receiver_user_id` = 'FYS1WU';
DELETE FROM `investment`
WHERE `user_id` = 'FYS1WU';
DELETE FROM `transections`
WHERE `user_id` = 'FYS1WU'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'FYS1WU';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'FYS1WU';
DELETE FROM `team_bonus`
WHERE `user_id` = 'FYS1WU';
DELETE FROM `user_registration`
WHERE `user_id` = 'FYS1WU';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=10;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'QVCFII'
OR `receiver_user_id` = 'QVCFII';
DELETE FROM `investment`
WHERE `user_id` = 'QVCFII';
DELETE FROM `transections`
WHERE `user_id` = 'QVCFII'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'QVCFII';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'QVCFII';
DELETE FROM `team_bonus`
WHERE `user_id` = 'QVCFII';
DELETE FROM `user_registration`
WHERE `user_id` = 'QVCFII';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=9;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'EHOSCN'
OR `receiver_user_id` = 'EHOSCN';
DELETE FROM `investment`
WHERE `user_id` = 'EHOSCN';
DELETE FROM `transections`
WHERE `user_id` = 'EHOSCN'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'EHOSCN';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'EHOSCN';
DELETE FROM `team_bonus`
WHERE `user_id` = 'EHOSCN';
DELETE FROM `user_registration`
WHERE `user_id` = 'EHOSCN';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=8;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'B7W6FX'
OR `receiver_user_id` = 'B7W6FX';
DELETE FROM `investment`
WHERE `user_id` = 'B7W6FX';
DELETE FROM `transections`
WHERE `user_id` = 'B7W6FX'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'B7W6FX';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'B7W6FX';
DELETE FROM `team_bonus`
WHERE `user_id` = 'B7W6FX';
DELETE FROM `user_registration`
WHERE `user_id` = 'B7W6FX';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=7;
DELETE FROM `transfer`
WHERE `sender_user_id` = '6EJ2SH'
OR `receiver_user_id` = '6EJ2SH';
DELETE FROM `investment`
WHERE `user_id` = '6EJ2SH';
DELETE FROM `transections`
WHERE `user_id` = '6EJ2SH'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = '6EJ2SH';
DELETE FROM `team_bonus_details`
WHERE `user_id` = '6EJ2SH';
DELETE FROM `team_bonus`
WHERE `user_id` = '6EJ2SH';
DELETE FROM `user_registration`
WHERE `user_id` = '6EJ2SH';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=6;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'UE64ZP'
OR `receiver_user_id` = 'UE64ZP';
DELETE FROM `investment`
WHERE `user_id` = 'UE64ZP';
DELETE FROM `transections`
WHERE `user_id` = 'UE64ZP'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'UE64ZP';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'UE64ZP';
DELETE FROM `team_bonus`
WHERE `user_id` = 'UE64ZP';
DELETE FROM `user_registration`
WHERE `user_id` = 'UE64ZP';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'S09FLB', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'Left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '2342424', '127.0.0.1', '1', '0', 0, '2020-06-04 19:32:32', '2020-06-04 19:32:32');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'S09FLB', '100', 0, '127.0.0.1', '2020-06-04 07:32:32', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 25, '100', 'Initial transfer to S09FLB on account creation from parent', '2020-06-04 07:32:32');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('S09FLB', 'reciver', 25, '100', 'Initial transfer to S09FLB on account creation from parent', '2020-06-04 07:32:32');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('S09FLB', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('S09FLB', 'investment', 29, '100', '2020-06-04', 1, 'User S09FLB Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('S09FLB', 0, 0, 1, '2020-06-04 07:32:32');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('S09FLB', 0, 0, 1, '2020-06-04 07:32:32');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'S09FLB', 'type1', '1', 10, '2020-06-04');
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=25;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'S09FLB'
OR `receiver_user_id` = 'S09FLB';
DELETE FROM `investment`
WHERE `user_id` = 'S09FLB';
DELETE FROM `transections`
WHERE `user_id` = 'S09FLB'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'S09FLB';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'S09FLB';
DELETE FROM `team_bonus`
WHERE `user_id` = 'S09FLB';
DELETE FROM `user_registration`
WHERE `user_id` = 'S09FLB';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'SXUXKE', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234243234', '127.0.0.1', '1', '0', 0, '2020-06-04 19:40:29', '2020-06-04 19:40:29');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'SXUXKE', '200', 0, '127.0.0.1', '2020-06-04 07:40:29', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 26, '200', 'Initial transfer to SXUXKE on account creation from parent', '2020-06-04 07:40:29');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('SXUXKE', 'reciver', 26, '200', 'Initial transfer to SXUXKE on account creation from parent', '2020-06-04 07:40:29');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('SXUXKE', '2XPOWR', '2', '200', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('SXUXKE', 'investment', 30, '200', '2020-06-04', 1, 'User SXUXKE Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('SXUXKE', 0, 0, 1, '2020-06-04 07:40:29');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('SXUXKE', 0, 0, 1, '2020-06-04 07:40:29');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'SXUXKE', 'type1', '2', 20, '2020-06-04');
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=26;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'SXUXKE'
OR `receiver_user_id` = 'SXUXKE';
DELETE FROM `investment`
WHERE `user_id` = 'SXUXKE';
DELETE FROM `transections`
WHERE `user_id` = 'SXUXKE'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'SXUXKE';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'SXUXKE';
DELETE FROM `team_bonus`
WHERE `user_id` = 'SXUXKE';
DELETE FROM `user_registration`
WHERE `user_id` = 'SXUXKE';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'DZY8O4', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', ' 234343343', '127.0.0.1', '1', '0', 0, '2020-06-04 19:43:17', '2020-06-04 19:43:17');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'DZY8O4', '100', 0, '127.0.0.1', '2020-06-04 07:43:17', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 27, '100', 'Initial transfer to DZY8O4 on account creation from parent', '2020-06-04 07:43:17');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('DZY8O4', 'reciver', 27, '100', 'Initial transfer to DZY8O4 on account creation from parent', '2020-06-04 07:43:17');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('DZY8O4', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('DZY8O4', 'investment', 31, '100', '2020-06-04', 1, 'User DZY8O4 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('DZY8O4', 0, 0, 1, '2020-06-04 07:43:17');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('DZY8O4', 0, 0, 1, '2020-06-04 07:43:17');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'DZY8O4', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '0'
WHERE `user_id` = '2XPOWR';
UPDATE `user_registration` SET `business_points` = NULL
WHERE `user_id` = '2XPOWR';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=27;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'DZY8O4'
OR `receiver_user_id` = 'DZY8O4';
DELETE FROM `investment`
WHERE `user_id` = 'DZY8O4';
DELETE FROM `transections`
WHERE `user_id` = 'DZY8O4'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'DZY8O4';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'DZY8O4';
DELETE FROM `team_bonus`
WHERE `user_id` = 'DZY8O4';
DELETE FROM `user_registration`
WHERE `user_id` = 'DZY8O4';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'XINNQX', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234234234', '127.0.0.1', '1', '160', 0, '2020-06-04 19:47:27', '2020-06-04 19:47:27');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'XINNQX', '200', 0, '127.0.0.1', '2020-06-04 07:47:27', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 28, '200', 'Initial transfer to XINNQX on account creation from parent', '2020-06-04 07:47:27');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('XINNQX', 'reciver', 28, '200', 'Initial transfer to XINNQX on account creation from parent', '2020-06-04 07:47:27');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('XINNQX', '2XPOWR', '2', '200', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('XINNQX', 'investment', 32, '200', '2020-06-04', 1, 'User XINNQX Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('XINNQX', 0, 0, 1, '2020-06-04 07:47:27');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('XINNQX', 0, 0, 1, '2020-06-04 07:47:27');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'XINNQX', 'type1', '2', 20, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '160'
WHERE `user_id` = '2XPOWR';
UPDATE `user_registration` SET `business_points` = NULL
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'ZBFF8U', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'righ', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '223424242', '127.0.0.1', '1', '80', 0, '2020-06-04 19:49:32', '2020-06-04 19:49:32');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'ZBFF8U', '100', 0, '127.0.0.1', '2020-06-04 07:49:32', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 29, '100', 'Initial transfer to ZBFF8U on account creation from parent', '2020-06-04 07:49:32');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('ZBFF8U', 'reciver', 29, '100', 'Initial transfer to ZBFF8U on account creation from parent', '2020-06-04 07:49:32');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('ZBFF8U', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('ZBFF8U', 'investment', 33, '100', '2020-06-04', 1, 'User ZBFF8U Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ZBFF8U', 0, 0, 1, '2020-06-04 07:49:32');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ZBFF8U', 0, 0, 1, '2020-06-04 07:49:32');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'ZBFF8U', 'type1', '1', 10, '2020-06-04');
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=28;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'XINNQX'
OR `receiver_user_id` = 'XINNQX';
DELETE FROM `investment`
WHERE `user_id` = 'XINNQX';
DELETE FROM `transections`
WHERE `user_id` = 'XINNQX'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'XINNQX';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'XINNQX';
DELETE FROM `team_bonus`
WHERE `user_id` = 'XINNQX';
DELETE FROM `user_registration`
WHERE `user_id` = 'XINNQX';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'JBRABK', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'righ', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '223424242', '127.0.0.1', '1', '80', 0, '2020-06-04 19:50:11', '2020-06-04 19:50:11');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'JBRABK', '100', 0, '127.0.0.1', '2020-06-04 07:50:11', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 30, '100', 'Initial transfer to JBRABK on account creation from parent', '2020-06-04 07:50:11');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('JBRABK', 'reciver', 30, '100', 'Initial transfer to JBRABK on account creation from parent', '2020-06-04 07:50:11');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('JBRABK', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('JBRABK', 'investment', 34, '100', '2020-06-04', 1, 'User JBRABK Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('JBRABK', 0, 0, 1, '2020-06-04 07:50:11');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('JBRABK', 0, 0, 1, '2020-06-04 07:50:11');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'JBRABK', 'type1', '1', 10, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', '9M4BRE', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'righ', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '223424242', '127.0.0.1', '1', '80', 0, '2020-06-04 19:51:08', '2020-06-04 19:51:08');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '9M4BRE', '100', 0, '127.0.0.1', '2020-06-04 07:51:08', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 31, '100', 'Initial transfer to 9M4BRE on account creation from parent', '2020-06-04 07:51:08');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('9M4BRE', 'reciver', 31, '100', 'Initial transfer to 9M4BRE on account creation from parent', '2020-06-04 07:51:08');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('9M4BRE', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('9M4BRE', 'investment', 35, '100', '2020-06-04', 1, 'User 9M4BRE Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('9M4BRE', 0, 0, 1, '2020-06-04 07:51:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('9M4BRE', 0, 0, 1, '2020-06-04 07:51:08');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '9M4BRE', 'type1', '1', 10, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'HZ8QEJ', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'righ', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '223424242', '127.0.0.1', '1', '80', 0, '2020-06-04 19:52:06', '2020-06-04 19:52:06');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'HZ8QEJ', '100', 0, '127.0.0.1', '2020-06-04 07:52:06', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 32, '100', 'Initial transfer to HZ8QEJ on account creation from parent', '2020-06-04 07:52:06');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('HZ8QEJ', 'reciver', 32, '100', 'Initial transfer to HZ8QEJ on account creation from parent', '2020-06-04 07:52:06');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('HZ8QEJ', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('HZ8QEJ', 'investment', 36, '100', '2020-06-04', 1, 'User HZ8QEJ Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('HZ8QEJ', 0, 0, 1, '2020-06-04 07:52:06');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('HZ8QEJ', 0, 0, 1, '2020-06-04 07:52:06');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'HZ8QEJ', 'type1', '1', 10, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', '92KORU', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234234234', '127.0.0.1', '1', '80', 0, '2020-06-04 19:55:08', '2020-06-04 19:55:08');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '92KORU', '100', 0, '127.0.0.1', '2020-06-04 07:55:08', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 33, '100', 'Initial transfer to 92KORU on account creation from parent', '2020-06-04 07:55:08');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('92KORU', 'reciver', 33, '100', 'Initial transfer to 92KORU on account creation from parent', '2020-06-04 07:55:08');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('92KORU', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('92KORU', 'investment', 37, '100', '2020-06-04', 1, 'User 92KORU Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('92KORU', 0, 0, 1, '2020-06-04 07:55:08');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('92KORU', 0, 0, 1, '2020-06-04 07:55:08');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '92KORU', 'type1', '1', 10, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'ET85BT', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234234234', '127.0.0.1', '1', '80', 0, '2020-06-04 19:56:50', '2020-06-04 19:56:50');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'ET85BT', '100', 0, '127.0.0.1', '2020-06-04 07:56:50', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 34, '100', 'Initial transfer to ET85BT on account creation from parent', '2020-06-04 07:56:50');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('ET85BT', 'reciver', 34, '100', 'Initial transfer to ET85BT on account creation from parent', '2020-06-04 07:56:50');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('ET85BT', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('ET85BT', 'investment', 38, '100', '2020-06-04', 1, 'User ET85BT Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ET85BT', 0, 0, 1, '2020-06-04 07:56:50');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ET85BT', 0, 0, 1, '2020-06-04 07:56:50');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'ET85BT', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', '3EK7CO', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234243234', '127.0.0.1', '1', '80', 0, '2020-06-04 20:00:13', '2020-06-04 20:00:13');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '3EK7CO', '100', 0, '127.0.0.1', '2020-06-04 08:00:13', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 35, '100', 'Initial transfer to 3EK7CO on account creation from parent', '2020-06-04 08:00:13');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('3EK7CO', 'reciver', 35, '100', 'Initial transfer to 3EK7CO on account creation from parent', '2020-06-04 08:00:13');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('3EK7CO', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('3EK7CO', 'investment', 39, '100', '2020-06-04', 1, 'User 3EK7CO Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('3EK7CO', 0, 0, 1, '2020-06-04 08:00:13');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('3EK7CO', 0, 0, 1, '2020-06-04 08:00:13');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '3EK7CO', 'type1', '1', 10, '2020-06-04');
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', '6S1YYV', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234243234', '127.0.0.1', '1', '80', 0, '2020-06-04 20:01:27', '2020-06-04 20:01:27');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '6S1YYV', '100', 0, '127.0.0.1', '2020-06-04 08:01:27', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 36, '100', 'Initial transfer to 6S1YYV on account creation from parent', '2020-06-04 08:01:27');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('6S1YYV', 'reciver', 36, '100', 'Initial transfer to 6S1YYV on account creation from parent', '2020-06-04 08:01:27');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('6S1YYV', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('6S1YYV', 'investment', 40, '100', '2020-06-04', 1, 'User 6S1YYV Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('6S1YYV', 0, 0, 1, '2020-06-04 08:01:27');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('6S1YYV', 0, 0, 1, '2020-06-04 08:01:27');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '6S1YYV', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'ZJWY5O', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234243234', '127.0.0.1', '1', '80', 0, '2020-06-04 20:03:05', '2020-06-04 20:03:05');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'ZJWY5O', '100', 0, '127.0.0.1', '2020-06-04 08:03:05', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 37, '100', 'Initial transfer to ZJWY5O on account creation from parent', '2020-06-04 08:03:05');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('ZJWY5O', 'reciver', 37, '100', 'Initial transfer to ZJWY5O on account creation from parent', '2020-06-04 08:03:05');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('ZJWY5O', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('ZJWY5O', 'investment', 41, '100', '2020-06-04', 1, 'User ZJWY5O Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ZJWY5O', 0, 0, 1, '2020-06-04 08:03:05');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ZJWY5O', 0, 0, 1, '2020-06-04 08:03:05');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'ZJWY5O', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = '2XPOWR';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=37;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'ZJWY5O'
OR `receiver_user_id` = 'ZJWY5O';
DELETE FROM `investment`
WHERE `user_id` = 'ZJWY5O';
DELETE FROM `transections`
WHERE `user_id` = 'ZJWY5O'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'ZJWY5O';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'ZJWY5O';
DELETE FROM `team_bonus`
WHERE `user_id` = 'ZJWY5O';
DELETE FROM `user_registration`
WHERE `user_id` = 'ZJWY5O';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'QJ7AF7', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '343434', '127.0.0.1', '1', '80', 0, '2020-06-04 20:03:57', '2020-06-04 20:03:57');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'QJ7AF7', '100', 0, '127.0.0.1', '2020-06-04 08:03:57', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 38, '100', 'Initial transfer to QJ7AF7 on account creation from parent', '2020-06-04 08:03:57');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('QJ7AF7', 'reciver', 38, '100', 'Initial transfer to QJ7AF7 on account creation from parent', '2020-06-04 08:03:57');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('QJ7AF7', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('QJ7AF7', 'investment', 42, '100', '2020-06-04', 1, 'User QJ7AF7 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('QJ7AF7', 0, 0, 1, '2020-06-04 08:03:57');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('QJ7AF7', 0, 0, 1, '2020-06-04 08:03:57');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'QJ7AF7', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'N2U3Q7', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'right', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '2342424', '127.0.0.1', '1', '80', 0, '2020-06-04 20:04:38', '2020-06-04 20:04:38');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'N2U3Q7', '100', 0, '127.0.0.1', '2020-06-04 08:04:38', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 39, '100', 'Initial transfer to N2U3Q7 on account creation from parent', '2020-06-04 08:04:38');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('N2U3Q7', 'reciver', 39, '100', 'Initial transfer to N2U3Q7 on account creation from parent', '2020-06-04 08:04:38');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('N2U3Q7', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('N2U3Q7', 'investment', 43, '100', '2020-06-04', 1, 'User N2U3Q7 Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('N2U3Q7', 0, 0, 1, '2020-06-04 08:04:38');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('N2U3Q7', 0, 0, 1, '2020-06-04 08:04:38');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'N2U3Q7', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = 0
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 20, 20, '2020-06-04 08:04:38');
UPDATE `team_bonus` SET `sponser_commission` = 20, `team_commission` = 20, `last_update` = '2020-06-04 08:04:38'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'E1LWJR', '2XPOWR', 'left', 'QJ7AF7', 'test_left', 'test', 'left', 'test_left@gmail.com', '86549fb08f3df106339cb8ecda9ad131', '234242', '127.0.0.1', '1', '80', 0, '2020-06-04 20:05:54', '2020-06-04 20:05:54');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'E1LWJR', '100', 0, '127.0.0.1', '2020-06-04 08:05:54', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 40, '100', 'Initial transfer to E1LWJR on account creation from parent', '2020-06-04 08:05:54');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('E1LWJR', 'reciver', 40, '100', 'Initial transfer to E1LWJR on account creation from parent', '2020-06-04 08:05:54');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('E1LWJR', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('E1LWJR', 'investment', 44, '100', '2020-06-04', 1, 'User E1LWJR Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('E1LWJR', 0, 0, 1, '2020-06-04 08:05:54');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('E1LWJR', 0, 0, 1, '2020-06-04 08:05:54');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'E1LWJR', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = 'QJ7AF7';
UPDATE `user_registration` SET `business_points` = 0
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 30, 30, '2020-06-04 08:05:54');
UPDATE `team_bonus` SET `sponser_commission` = 30, `team_commission` = 30, `last_update` = '2020-06-04 08:05:54'
WHERE `user_id` = '2XPOWR';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=40;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'E1LWJR'
OR `receiver_user_id` = 'E1LWJR';
DELETE FROM `investment`
WHERE `user_id` = 'E1LWJR';
DELETE FROM `transections`
WHERE `user_id` = 'E1LWJR'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'E1LWJR';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'E1LWJR';
DELETE FROM `team_bonus`
WHERE `user_id` = 'E1LWJR';
DELETE FROM `user_registration`
WHERE `user_id` = 'E1LWJR';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=39;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'N2U3Q7'
OR `receiver_user_id` = 'N2U3Q7';
DELETE FROM `investment`
WHERE `user_id` = 'N2U3Q7';
DELETE FROM `transections`
WHERE `user_id` = 'N2U3Q7'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'N2U3Q7';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'N2U3Q7';
DELETE FROM `team_bonus`
WHERE `user_id` = 'N2U3Q7';
DELETE FROM `user_registration`
WHERE `user_id` = 'N2U3Q7';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=38;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'QJ7AF7'
OR `receiver_user_id` = 'QJ7AF7';
DELETE FROM `investment`
WHERE `user_id` = 'QJ7AF7';
DELETE FROM `transections`
WHERE `user_id` = 'QJ7AF7'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'QJ7AF7';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'QJ7AF7';
DELETE FROM `team_bonus`
WHERE `user_id` = 'QJ7AF7';
DELETE FROM `user_registration`
WHERE `user_id` = 'QJ7AF7';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'YKSXQX', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '23423234', '127.0.0.1', '1', '80', 0, '2020-06-04 20:23:31', '2020-06-04 20:23:31');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'YKSXQX', '100', 0, '127.0.0.1', '2020-06-04 08:23:31', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 41, '100', 'Initial transfer to YKSXQX on account creation from parent', '2020-06-04 08:23:31');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('YKSXQX', 'reciver', 41, '100', 'Initial transfer to YKSXQX on account creation from parent', '2020-06-04 08:23:31');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('YKSXQX', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('YKSXQX', 'investment', 45, '100', '2020-06-04', 1, 'User YKSXQX Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('YKSXQX', 0, 0, 1, '2020-06-04 08:23:31');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('YKSXQX', 0, 0, 1, '2020-06-04 08:23:31');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'YKSXQX', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'Q7SE0N', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'right', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '234243243', '127.0.0.1', '1', '80', 0, '2020-06-04 20:25:06', '2020-06-04 20:25:06');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'Q7SE0N', '100', 0, '127.0.0.1', '2020-06-04 08:25:06', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 42, '100', 'Initial transfer to Q7SE0N on account creation from parent', '2020-06-04 08:25:06');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('Q7SE0N', 'reciver', 42, '100', 'Initial transfer to Q7SE0N on account creation from parent', '2020-06-04 08:25:06');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('Q7SE0N', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('Q7SE0N', 'investment', 46, '100', '2020-06-04', 1, 'User Q7SE0N Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Q7SE0N', 0, 0, 1, '2020-06-04 08:25:06');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('Q7SE0N', 0, 0, 1, '2020-06-04 08:25:06');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'Q7SE0N', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = 0
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 40, 40, '2020-06-04 08:25:07');
UPDATE `team_bonus` SET `sponser_commission` = 40, `team_commission` = 40, `last_update` = '2020-06-04 08:25:07'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', '0K7E5K', '2XPOWR', 'left', 'YKSXQX', 'test_left', 'test', 'left', 'test_left@gmail.com', '86549fb08f3df106339cb8ecda9ad131', '234234', '127.0.0.1', '1', '1280', 0, '2020-06-04 20:26:17', '2020-06-04 20:26:17');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '0K7E5K', '1600', 0, '127.0.0.1', '2020-06-04 08:26:17', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 43, '1600', 'Initial transfer to 0K7E5K on account creation from parent', '2020-06-04 08:26:17');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('0K7E5K', 'reciver', 43, '1600', 'Initial transfer to 0K7E5K on account creation from parent', '2020-06-04 08:26:17');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('0K7E5K', '2XPOWR', '5', '1600', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('0K7E5K', 'investment', 47, '1600', '2020-06-04', 1, 'User 0K7E5K Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('0K7E5K', 0, 0, 1, '2020-06-04 08:26:17');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('0K7E5K', 0, 0, 1, '2020-06-04 08:26:17');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '0K7E5K', 'type1', '5', 160, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '1280'
WHERE `user_id` = 'YKSXQX';
UPDATE `user_registration` SET `business_points` = 1280
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 200, 200, '2020-06-04 08:26:17');
UPDATE `team_bonus` SET `sponser_commission` = 200, `team_commission` = 200, `last_update` = '2020-06-04 08:26:17'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'ES3P5X', '2XPOWR', 'left', 'Q7SE0N', 'test_right', 'test', 'right1', 'test_right@gmail.com', 'a9425345e25d73581bea92556773508e', '23424234', '127.0.0.1', '1', '80', 0, '2020-06-04 20:27:14', '2020-06-04 20:27:14');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'ES3P5X', '100', 0, '127.0.0.1', '2020-06-04 08:27:14', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 44, '100', 'Initial transfer to ES3P5X on account creation from parent', '2020-06-04 08:27:14');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('ES3P5X', 'reciver', 44, '100', 'Initial transfer to ES3P5X on account creation from parent', '2020-06-04 08:27:14');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('ES3P5X', '2XPOWR', '1', '100', '2020-06-04', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('ES3P5X', 'investment', 48, '100', '2020-06-04', 1, 'User ES3P5X Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ES3P5X', 0, 0, 1, '2020-06-04 08:27:14');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('ES3P5X', 0, 0, 1, '2020-06-04 08:27:14');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'ES3P5X', 'type1', '1', 10, '2020-06-04');
UPDATE `user_registration` SET `business_points` = '80'
WHERE `user_id` = 'Q7SE0N';
UPDATE `user_registration` SET `business_points` = 1200
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 210, 210, '2020-06-04 08:27:14');
UPDATE `team_bonus` SET `sponser_commission` = 210, `team_commission` = 210, `last_update` = '2020-06-04 08:27:14'
WHERE `user_id` = '2XPOWR';
UPDATE `admin` SET `last_login` = '2020-06-06 21:20:50', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
UPDATE `admin` SET `last_logout` = '2020-06-06 23:26:07'
WHERE `id` IS NULL;
UPDATE `admin` SET `last_login` = '2020-06-06 23:26:11', `ip_address` = '127.0.0.1'
WHERE `id` = '1';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=44;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'ES3P5X'
OR `receiver_user_id` = 'ES3P5X';
DELETE FROM `investment`
WHERE `user_id` = 'ES3P5X';
DELETE FROM `transections`
WHERE `user_id` = 'ES3P5X'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'ES3P5X';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'ES3P5X';
DELETE FROM `team_bonus`
WHERE `user_id` = 'ES3P5X';
DELETE FROM `user_registration`
WHERE `user_id` = 'ES3P5X';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=43;
DELETE FROM `transfer`
WHERE `sender_user_id` = '0K7E5K'
OR `receiver_user_id` = '0K7E5K';
DELETE FROM `investment`
WHERE `user_id` = '0K7E5K';
DELETE FROM `transections`
WHERE `user_id` = '0K7E5K'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = '0K7E5K';
DELETE FROM `team_bonus_details`
WHERE `user_id` = '0K7E5K';
DELETE FROM `team_bonus`
WHERE `user_id` = '0K7E5K';
DELETE FROM `user_registration`
WHERE `user_id` = '0K7E5K';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=42;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'Q7SE0N'
OR `receiver_user_id` = 'Q7SE0N';
DELETE FROM `investment`
WHERE `user_id` = 'Q7SE0N';
DELETE FROM `transections`
WHERE `user_id` = 'Q7SE0N'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'Q7SE0N';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'Q7SE0N';
DELETE FROM `team_bonus`
WHERE `user_id` = 'Q7SE0N';
DELETE FROM `user_registration`
WHERE `user_id` = 'Q7SE0N';
DELETE from transections Where
				transection_category IN('reciver','transfer')
				AND releted_id=41;
DELETE FROM `transfer`
WHERE `sender_user_id` = 'YKSXQX'
OR `receiver_user_id` = 'YKSXQX';
DELETE FROM `investment`
WHERE `user_id` = 'YKSXQX';
DELETE FROM `transections`
WHERE `user_id` = 'YKSXQX'
AND `transection_category` = 'investment';
DELETE FROM `earnings`
WHERE `user_id` = 'YKSXQX';
DELETE FROM `team_bonus_details`
WHERE `user_id` = 'YKSXQX';
DELETE FROM `team_bonus`
WHERE `user_id` = 'YKSXQX';
DELETE FROM `user_registration`
WHERE `user_id` = 'YKSXQX';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', 'F3FREC', '2XPOWR', 'left', '2XPOWR', 'left_2xp', 'left', '2xp', 'left_2xp@gmail.com', '36983538dbe63e7200bdd6269c03f55c', '234234', '127.0.0.1', '1', '10240', 0, '2020-06-06 23:27:32', '2020-06-06 23:27:32');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', 'F3FREC', '12800', 0, '127.0.0.1', '2020-06-06 11:27:32', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 45, '12800', 'Initial transfer to F3FREC on account creation from parent', '2020-06-06 11:27:32');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('F3FREC', 'reciver', 45, '12800', 'Initial transfer to F3FREC on account creation from parent', '2020-06-06 11:27:32');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('F3FREC', '2XPOWR', '8', '12800', '2020-06-06', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('F3FREC', 'investment', 49, '12800', '2020-06-06', 1, 'User F3FREC Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('F3FREC', 0, 0, 1, '2020-06-06 11:27:32');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('F3FREC', 0, 0, 1, '2020-06-06 11:27:32');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', 'F3FREC', 'type1', '8', 1280, '2020-06-06');
UPDATE `user_registration` SET `business_points` = '10240', `power_leg` = 'left'
WHERE `user_id` = '2XPOWR';
INSERT INTO `user_registration` (`uid`, `user_id`, `sponsor_id`, `position`, `parent`, `username`, `f_name`, `l_name`, `email`, `password`, `phone`, `reg_ip`, `status`, `points`, `business_points`, `created`, `modified`) VALUES ('', '303NWX', '2XPOWR', 'right', '2XPOWR', 'right_2xp', 'right', '2xp', 'right_2xp@gmail.com', '97dc8f54459155110a245b012d71b7df', '234243', '127.0.0.1', '1', '1280', 0, '2020-06-06 23:28:34', '2020-06-06 23:28:34');
INSERT INTO `transfer` (`sender_user_id`, `receiver_user_id`, `amount`, `fees`, `request_ip`, `date`, `comments`, `status`) VALUES ('2XPOWR', '303NWX', '1600', 0, '127.0.0.1', '2020-06-06 11:28:34', 'Initial account create transfer from parent to child', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('2XPOWR', 'transfer', 46, '1600', 'Initial transfer to 303NWX on account creation from parent', '2020-06-06 11:28:34');
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `comments`, `transection_date_timestamp`) VALUES ('303NWX', 'reciver', 46, '1600', 'Initial transfer to 303NWX on account creation from parent', '2020-06-06 11:28:34');
INSERT INTO `investment` (`user_id`, `sponsor_id`, `package_id`, `amount`, `invest_date`, `day`) VALUES ('303NWX', '2XPOWR', '5', '1600', '2020-06-06', 1);
INSERT INTO `transections` (`user_id`, `transection_category`, `releted_id`, `amount`, `transection_date_timestamp`, `status`, `comments`) VALUES ('303NWX', 'investment', 50, '1600', '2020-06-06', 1, 'User 303NWX Added');
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('303NWX', 0, 0, 1, '2020-06-06 11:28:34');
INSERT INTO `team_bonus` (`user_id`, `sponser_commission`, `team_commission`, `level`, `last_update`) VALUES ('303NWX', 0, 0, 1, '2020-06-06 11:28:34');
INSERT INTO `earnings` (`user_id`, `Purchaser_id`, `earning_type`, `package_id`, `amount`, `date`) VALUES ('2XPOWR', '303NWX', 'type1', '5', 160, '2020-06-06');
UPDATE `user_registration` SET `business_points` = 8960, `power_leg` = 'left'
WHERE `user_id` = '2XPOWR';
INSERT INTO `team_bonus_details` (`user_id`, `sponser_commission`, `team_commission`, `last_update`) VALUES ('2XPOWR', 1234, 1234, '2020-06-06 11:28:34');
UPDATE `team_bonus` SET `sponser_commission` = 1234, `team_commission` = 1234, `last_update` = '2020-06-06 11:28:34'
WHERE `user_id` = '2XPOWR';
