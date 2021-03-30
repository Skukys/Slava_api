-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 30 2021 г., 11:03
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `telegram`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id_1` bigint UNSIGNED NOT NULL,
  `user_id_2` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `chats`
--

INSERT INTO `chats` (`id`, `user_id_1`, `user_id_2`, `created_at`, `updated_at`) VALUES
(3, 2, 3, '2021-03-30 02:12:21', '2021-03-30 02:12:21'),
(4, 3, 1, '2021-03-30 02:18:46', '2021-03-30 02:18:46'),
(5, 2, 1, '2021-03-30 02:31:22', '2021-03-30 02:31:22');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` bigint UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` bigint UNSIGNED NOT NULL,
  `receiver` bigint UNSIGNED NOT NULL,
  `sender` bigint UNSIGNED NOT NULL,
  `reply` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `text`, `chat_id`, `receiver`, `sender`, `reply`, `created_at`, `updated_at`) VALUES
(2, 'first massage', 3, 3, 2, NULL, '2021-03-30 02:12:21', '2021-03-30 02:12:21'),
(3, 'second massage', 3, 3, 2, NULL, '2021-03-30 02:12:35', '2021-03-30 02:12:35'),
(4, 'third massage', 3, 2, 3, NULL, '2021-03-30 02:12:51', '2021-03-30 02:12:51'),
(5, 'third massage', 3, 2, 3, NULL, '2021-03-30 02:13:30', '2021-03-30 02:13:30'),
(6, 'first message', 4, 1, 3, NULL, '2021-03-30 02:18:46', '2021-03-30 02:18:46'),
(7, 'first message', 5, 1, 2, NULL, '2021-03-30 02:31:22', '2021-03-30 02:31:22'),
(8, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:36', '2021-03-30 02:55:36'),
(9, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:37', '2021-03-30 02:55:37'),
(10, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:38', '2021-03-30 02:55:38'),
(11, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:38', '2021-03-30 02:55:38'),
(12, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:38', '2021-03-30 02:55:38'),
(13, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:39', '2021-03-30 02:55:39'),
(14, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:39', '2021-03-30 02:55:39'),
(15, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:39', '2021-03-30 02:55:39'),
(16, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:40', '2021-03-30 02:55:40'),
(17, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:40', '2021-03-30 02:55:40'),
(18, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:40', '2021-03-30 02:55:40'),
(19, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:41', '2021-03-30 02:55:41'),
(20, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:41', '2021-03-30 02:55:41'),
(21, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:41', '2021-03-30 02:55:41'),
(22, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:42', '2021-03-30 02:55:42'),
(23, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:42', '2021-03-30 02:55:42'),
(24, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:43', '2021-03-30 02:55:43'),
(25, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:43', '2021-03-30 02:55:43'),
(26, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:43', '2021-03-30 02:55:43'),
(27, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:44', '2021-03-30 02:55:44'),
(28, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:44', '2021-03-30 02:55:44'),
(29, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:44', '2021-03-30 02:55:44'),
(30, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:45', '2021-03-30 02:55:45'),
(31, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:45', '2021-03-30 02:55:45'),
(32, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:46', '2021-03-30 02:55:46'),
(33, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:46', '2021-03-30 02:55:46'),
(34, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:46', '2021-03-30 02:55:46'),
(35, 'first message', 5, 1, 2, NULL, '2021-03-30 02:55:47', '2021-03-30 02:55:47');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_03_30_050432_create_chats_table', 1),
(3, '2021_03_30_050443_create_message_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `api_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `photo`, `password`, `bio`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Skukys', 'public/Bt8S53tJN14BgfvwnSxrDsjGLSUzmvTJhD9bUlN6.jpg', '$2y$10$c9H8rodwnriopMDrI4tHeusnF/qsz3e01ZrfGE4ign9CvQDtuyFiW', 'Я крутой', '93c32ad6-9c5f-45e0-bb70-d5f15dcd6dda', '2021-03-30 00:40:20', '2021-03-30 02:58:27'),
(2, 'Kruj', 'public/hlJyu85nqYxKQLfHr8vibr5Gi5ar0urCObOlzYaO.jpg', '$2y$10$xW6Cqe1eUgp3CJ6AGAZFIew41b5mnmyJenaDBfkOyBsLTZGJbA9KO', NULL, NULL, '2021-03-30 00:40:54', '2021-03-30 00:40:54'),
(3, 'uh', 'public/P2aWExjwD4jWnN8jT0IxamIwPSiZV7kDYw9p6y8r.jpg', '$2y$10$LKtoUnsTlkMFsi/lW8VPy.DJlVCYxs2ovknzq1RymxdXfOitWUQEa', NULL, NULL, '2021-03-30 00:52:31', '2021-03-30 00:52:31'),
(4, 'uha', 'public/nY0ojXxJfmOT9meXO5xJk3DcrdNmmNSJF9M1h1Rq.jpg', '$2y$10$xV5kfCYAs1QBI9rWWNZYb.x3MJCAgnVsmq5IHXAHLDhYkGkxAdxcC', NULL, NULL, '2021-03-30 00:52:35', '2021-03-30 00:52:35');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_1_foreign` (`user_id_1`),
  ADD KEY `chats_user_id_2_foreign` (`user_id_2`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_chat_id_foreign` (`chat_id`),
  ADD KEY `message_receiver_foreign` (`receiver`),
  ADD KEY `message_sender_foreign` (`sender`),
  ADD KEY `message_reply_foreign` (`reply`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_user_id_1_foreign` FOREIGN KEY (`user_id_1`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chats_user_id_2_foreign` FOREIGN KEY (`user_id_2`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`),
  ADD CONSTRAINT `message_receiver_foreign` FOREIGN KEY (`receiver`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `message_reply_foreign` FOREIGN KEY (`reply`) REFERENCES `message` (`id`),
  ADD CONSTRAINT `message_sender_foreign` FOREIGN KEY (`sender`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
