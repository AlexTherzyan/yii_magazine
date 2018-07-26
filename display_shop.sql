-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 19 2018 г., 16:20
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `display_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `all_products`
--

CREATE TABLE `all_products` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `details` int(11) NOT NULL,
  `product_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_group`
--

CREATE TABLE `attribute_group` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='нужна для фильтров';

--
-- Дамп данных таблицы `attribute_group`
--

INSERT INTO `attribute_group` (`id`, `title`) VALUES
(1, 'Категория'),
(2, 'Диагональ'),
(3, 'Разрешение'),
(4, 'f'),
(5, 'v');

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_product`
--

CREATE TABLE `attribute_product` (
  `attr_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_product`
--

INSERT INTO `attribute_product` (`attr_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(3, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attr_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='нужна для фильтров';

--
-- Дамп данных таблицы `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attr_group_id`) VALUES
(1, 'Авиационные дисплеи', 1),
(2, 'Видеомониторы межвидового применения', 1),
(3, 'Промышленные видеомониторы', 1),
(4, 'Микродисплейные системы индикации', 1),
(5, 'ЭВМ специального назначения', 1),
(6, 'Защищенные компьютеры', 1),
(7, 'IT-решения для визуализации', 1),
(8, 'ЖК-матрицы', 1),
(9, 'Прочая продукция', 1),
(10, 'Каучуковый', 2),
(11, 'Полимерный', 3),
(12, 'Нержавеющая сталь', 4),
(13, 'Титановый сплав', 4),
(14, 'Латунь', 4),
(15, 'Полимер', 4),
(16, 'Керамика', 4),
(17, 'Алюминий', 4),
(18, 'Аналоговые', 5),
(19, 'Цифровые', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `aviation_disp_form_1_1`
--

CREATE TABLE `aviation_disp_form_1_1` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text,
  `product_name` varchar(255) DEFAULT NULL,
  `parameter_1` varchar(255) DEFAULT NULL,
  `parameter_2` varchar(255) DEFAULT NULL,
  `parameter_3` varchar(255) DEFAULT NULL,
  `parameter_4` varchar(255) DEFAULT NULL,
  `parameter_5` varchar(255) DEFAULT NULL,
  `parameter_6` varchar(255) DEFAULT NULL,
  `parameter_7` varchar(255) DEFAULT NULL,
  `parameter_8` varchar(255) DEFAULT NULL,
  `parameter_9` varchar(255) DEFAULT NULL,
  `parameter_10` varchar(255) DEFAULT NULL,
  `parameter_11` varchar(255) DEFAULT NULL,
  `parameter_12` varchar(255) DEFAULT NULL,
  `parameter_13` varchar(255) DEFAULT NULL,
  `parameter_14` varchar(255) DEFAULT NULL,
  `parameter_15` varchar(255) DEFAULT NULL,
  `parameter_16` varchar(255) DEFAULT NULL,
  `parameter_17` varchar(255) DEFAULT NULL,
  `parameter_18` varchar(255) DEFAULT NULL,
  `parameter_19` varchar(255) DEFAULT NULL,
  `parameter_20` varchar(255) DEFAULT NULL,
  `parameter_21` varchar(255) DEFAULT NULL,
  `parameter_22` varchar(255) DEFAULT NULL,
  `parameter_23` varchar(255) DEFAULT NULL,
  `parameter_24` varchar(255) DEFAULT NULL,
  `parameter_25` varchar(255) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aviation_disp_form_1_1`
--

INSERT INTO `aviation_disp_form_1_1` (`id`, `title`, `image`, `details`, `product_name`, `parameter_1`, `parameter_2`, `parameter_3`, `parameter_4`, `parameter_5`, `parameter_6`, `parameter_7`, `parameter_8`, `parameter_9`, `parameter_10`, `parameter_11`, `parameter_12`, `parameter_13`, `parameter_14`, `parameter_15`, `parameter_16`, `parameter_17`, `parameter_18`, `parameter_19`, `parameter_20`, `parameter_21`, `parameter_22`, `parameter_23`, `parameter_24`, `parameter_25`, `manual`) VALUES
(1, 'МЦД-034', 'https://fit-exzample.000webhostapp.com/image/aviation_display/format_1_1/мцд-034-min.png', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', 'Диагональ: 7.9 см, 3.1″ (2.2x2.2″)', 'Яркость изображения: 1000(кд/м2)	', 'Контрастность: 300:1', 'Угол обзора: +/-80, +/-80(Г/В)', 'Угол обзора: +/-80, +/-80(Г/В)', 'Разрешение: 480x480\r\n', 'Интерфейс: цифровой 6 бит', 'Напряжение питания: +12, +3.3(В)', 'Потребляемая мощность: 5(Вт)', 'Масса: 	0.3(кг)', 'Габариты: 78/78/50 ширина/высота/глубина (мм)', 'Условия эксплуатации:\r\nГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', 'Температура окружающей среды (°С)\r\nрабочая:    -55…+60\r\nпредельная: -55…+85	\r\n', 'Влажность:	98%, 35°С', 'Вибрация:	10…300Гц, 3g', 'Удары (g)\r\nодиночный: 30\r\nмногократный: 15	\r\n', '', '', '', '', '', '', '', '', '', 'https://kbdisplay.by/data/docs.pdf'),
(2, 'УД-400 Тип 3', 'https://fit-exzample.000webhostapp.com/image/aviation_display/format_1_1/уд-400 тип3-min.png', 'Модуль дисплейный выполнен в стандартном конструктиве 4ATI. Ключевой особенностью модуля является его оснащение многоцветной светодиодной системой подсветки, обеспечивающей в режиме «Ночь» совместимость с прибором ночного видения по MIL-STD-3009 при сохранении всей палитры цветов.', 'УД-400 Тип 3', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1100', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1', '', '', '', '', '', '', '', '', '', 'https://kbdisplay.by/data/docs.pdf'),
(3, 'МД-055Н', 'https://fit-exzample.000webhostapp.com/image/aviation_display/format_1_1/мд-055н-min.png', 'Модуль дисплейный МД-055Н обеспечивает качественное отображение информации в любых условиях, в том числе при солнечном освещении. Многоцветная светодиодная система подсветки обеспечивает в режиме «Ночь» совместимость с очками ночного видения по MIL-STD-3009 при сохранении качественной цветопередачи. Конструкция подсветки запатентована.', 'МД-055Н', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'ВМ-18', 'https://fit-exzample.000webhostapp.com/image/aviation_display/format_1_1/вм-18-min.png', 'Видеомонитор ВМ-18 предназначен для отображения видеоинформации, поступающей по аналоговому VGA входу от бортового вычислителя. Отличительными особенностями изделия являются наличие функциональной клавиатуры, информационный обмен с которой осуществляется по интерфейсу ARINC-429, ручная и автоматическая регулировка яркости изображения, формирование внутреннего тестового изображения.', 'ВМ-18', 'Диагональ: 7.9 см, 3.1″ (2.2x2.2″)', 'Яркость изображения: 1000(кд/м2)	', 'Контрастность: 300:1', 'Угол обзора: +/-80, +/-80(Г/В)', 'Угол обзора: +/-80, +/-80(Г/В)', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ВМ-18 с ТТ', 'https://fit-exzample.000webhostapp.com/image/aviation_display/format_1_1/вм-18 с тт-min.png', 'Высокая яркость изображения при небольшой потребляемой мощности, малая толщина корпуса, обеспечиваемые торцевой светодиодной подсветкой, а также широкие углы обзора – вот отличительные черты ВМ-18 с ТТ.', 'ВМ-18 с ТТ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'МЦД-066М', 'https://fit-exzample.000webhostapp.com/image/aviation_display/format_1_1/мцд-066м-min.png', 'Модуль цветной дисплейный МЦД-066М предназначен для отображения графической информации при работе в составе многофункционального индикатора.', 'МЦД-066М', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', NULL, 'Hello!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `aviation_disp_form_4_3`
--

CREATE TABLE `aviation_disp_form_4_3` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text,
  `product_name` varchar(255) DEFAULT NULL,
  `parameter_1` varchar(255) DEFAULT NULL,
  `parameter_2` varchar(255) DEFAULT NULL,
  `parameter_3` varchar(255) DEFAULT NULL,
  `parameter_4` varchar(255) DEFAULT NULL,
  `parameter_5` varchar(255) DEFAULT NULL,
  `parameter_6` varchar(255) DEFAULT NULL,
  `parameter_7` varchar(255) DEFAULT NULL,
  `parameter_8` varchar(255) DEFAULT NULL,
  `parameter_9` varchar(255) DEFAULT NULL,
  `parameter_10` varchar(255) DEFAULT NULL,
  `parameter_11` varchar(255) DEFAULT NULL,
  `parameter_12` varchar(255) DEFAULT NULL,
  `parameter_13` varchar(255) DEFAULT NULL,
  `parameter_14` varchar(255) DEFAULT NULL,
  `parameter_15` varchar(255) DEFAULT NULL,
  `parameter_16` varchar(255) DEFAULT NULL,
  `parameter_17` varchar(255) DEFAULT NULL,
  `parameter_18` varchar(255) DEFAULT NULL,
  `parameter_19` varchar(255) DEFAULT NULL,
  `parameter_20` varchar(255) DEFAULT NULL,
  `parameter_21` varchar(255) DEFAULT NULL,
  `parameter_22` varchar(255) DEFAULT NULL,
  `parameter_23` varchar(255) DEFAULT NULL,
  `parameter_24` varchar(255) DEFAULT NULL,
  `parameter_25` varchar(255) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aviation_disp_form_4_3`
--

INSERT INTO `aviation_disp_form_4_3` (`id`, `title`, `image`, `details`, `product_name`, `parameter_1`, `parameter_2`, `parameter_3`, `parameter_4`, `parameter_5`, `parameter_6`, `parameter_7`, `parameter_8`, `parameter_9`, `parameter_10`, `parameter_11`, `parameter_12`, `parameter_13`, `parameter_14`, `parameter_15`, `parameter_16`, `parameter_17`, `parameter_18`, `parameter_19`, `parameter_20`, `parameter_21`, `parameter_22`, `parameter_23`, `parameter_24`, `parameter_25`, `manual`) VALUES
(1, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', 'Диагональ: 7.9 см, 3.1″ (2.2x2.2″)', 'Яркость изображения: 1000(кд/м2)	', 'Контрастность: 300:1', 'Угол обзора: +/-80, +/-80(Г/В)', 'Угол обзора: +/-80, +/-80(Г/В)', 'Разрешение: 480x480\r\n', 'Интерфейс: цифровой 6 бит', 'Напряжение питания: +12, +3.3(В)', 'Потребляемая мощность: 5(Вт)', 'Масса: 	0.3(кг)', 'Габариты: 78/78/50 ширина/высота/глубина (мм)', 'Условия эксплуатации:\r\nГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', 'Температура окружающей среды (°С)\r\nрабочая:    -55…+60\r\nпредельная: -55…+85	\r\n', 'Влажность:	98%, 35°С', 'Вибрация:	10…300Гц, 3g', 'Удары (g)\r\nодиночный: 30\r\nмногократный: 15	\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', '11Модуль цветной дисплейный МЦД-0354 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1100', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `aviation_disp_form_16_9`
--

CREATE TABLE `aviation_disp_form_16_9` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text,
  `product_name` varchar(255) DEFAULT NULL,
  `parameter_1` varchar(255) DEFAULT NULL,
  `parameter_2` varchar(255) DEFAULT NULL,
  `parameter_3` varchar(255) DEFAULT NULL,
  `parameter_4` varchar(255) DEFAULT NULL,
  `parameter_5` varchar(255) DEFAULT NULL,
  `parameter_6` varchar(255) DEFAULT NULL,
  `parameter_7` varchar(255) DEFAULT NULL,
  `parameter_8` varchar(255) DEFAULT NULL,
  `parameter_9` varchar(255) DEFAULT NULL,
  `parameter_10` varchar(255) DEFAULT NULL,
  `parameter_11` varchar(255) DEFAULT NULL,
  `parameter_12` varchar(255) DEFAULT NULL,
  `parameter_13` varchar(255) DEFAULT NULL,
  `parameter_14` varchar(255) DEFAULT NULL,
  `parameter_15` varchar(255) DEFAULT NULL,
  `parameter_16` varchar(255) DEFAULT NULL,
  `parameter_17` varchar(255) DEFAULT NULL,
  `parameter_18` varchar(255) DEFAULT NULL,
  `parameter_19` varchar(255) DEFAULT NULL,
  `parameter_20` varchar(255) DEFAULT NULL,
  `parameter_21` varchar(255) DEFAULT NULL,
  `parameter_22` varchar(255) DEFAULT NULL,
  `parameter_23` varchar(255) DEFAULT NULL,
  `parameter_24` varchar(255) DEFAULT NULL,
  `parameter_25` varchar(255) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aviation_disp_form_16_9`
--

INSERT INTO `aviation_disp_form_16_9` (`id`, `title`, `image`, `details`, `product_name`, `parameter_1`, `parameter_2`, `parameter_3`, `parameter_4`, `parameter_5`, `parameter_6`, `parameter_7`, `parameter_8`, `parameter_9`, `parameter_10`, `parameter_11`, `parameter_12`, `parameter_13`, `parameter_14`, `parameter_15`, `parameter_16`, `parameter_17`, `parameter_18`, `parameter_19`, `parameter_20`, `parameter_21`, `parameter_22`, `parameter_23`, `parameter_24`, `parameter_25`, `manual`) VALUES
(1, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', 'Диагональ: 7.9 см, 3.1″ (2.2x2.2″)', 'Яркость изображения: 1000(кд/м2)	', 'Контрастность: 300:1', 'Угол обзора: +/-80, +/-80(Г/В)', 'Угол обзора: +/-80, +/-80(Г/В)', 'Разрешение: 480x480\r\n', 'Интерфейс: цифровой 6 бит', 'Напряжение питания: +12, +3.3(В)', 'Потребляемая мощность: 5(Вт)', 'Масса: 	0.3(кг)', 'Габариты: 78/78/50 ширина/высота/глубина (мм)', 'Условия эксплуатации:\r\nГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', 'Температура окружающей среды (°С)\r\nрабочая:    -55…+60\r\nпредельная: -55…+85	\r\n', 'Влажность:	98%, 35°С', 'Вибрация:	10…300Гц, 3g', 'Удары (g)\r\nодиночный: 30\r\nмногократный: 15	\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://kbdisplay.by/data/docs.pdf'),
(2, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', '11Модуль цветной дисплейный МЦД-0354 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1100', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://kbdisplay.by/data/docs.pdf'),
(3, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'brand_no_image.jpg',
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `title`, `alias`, `image`, `description`) VALUES
(1, 'ЭВМ специального назначения', 'evm', '1.jpg', 'lorem ipsum'),
(2, 'Микродисплейные системы индикации', 'evm', '1.jpg', 'lorem ipsum'),
(3, 'Авиационные дисплеи', 'evm', '1.jpg', 'lorem ipsum'),
(4, 'Видеомониторы межвидового применения', 'evm', '2.png', 'lorem ipsum'),
(5, 'Промышленные видеомониторы', 'evm', '2.png', 'lorem ipsum'),
(6, 'Защищенные компьютеры', 'evm', '1.jpg', 'lorem ipsum'),
(7, 'IT-решения для визуализации', 'evm', '1.jpg', 'lorem ipsum'),
(8, 'ЖК-матрицы', 'evm', '1.jpg', 'lorem ipsum'),
(9, 'Прочая продукция', 'evm', '1.jpg', 'lorem ipsum');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `parent_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `alias`, `parent_id`, `keywords`, `description`) VALUES
(1, 'Авиационные дисплеи', 'aviation-display', 0, 'Авиационные дисплеи', 'Авиационные дисплеи'),
(2, 'Видеомониторы межвидового применения', 'megvid-prim-display', 0, 'Видеомониторы межвидового применения', 'Видеомониторы межвидового применения'),
(3, 'формат 1:1', 'format-1-1', 1, 'Авиационные дисплеи формат 1:1', 'Авиационные дисплеи формат 1:1'),
(4, 'формат 16:9', 'format-16-9', 1, 'Авиационные дисплеи формат 16:9', 'Авиационные дисплеи формат 16:9'),
(5, 'формат 4:3', 'format-4-3', 1, 'Авиационные дисплеи формат 4:3', 'Авиационные дисплеи формат 4:3'),
(6, 'формат 4:3', 'format-4-3m', 2, 'Видеомониторы межвидового применения формат 4:3', 'Видеомониторы межвидового применения формат 4:3'),
(7, 'формат 16:9', 'format-16-9m', 2, 'Видеомониторы межвидового применения формат 16:9', 'Видеомониторы межвидового применения 16:9'),
(8, 'Бескорпусные', 'format-corpus-none', 2, 'Видеомониторы межвидового применения бескорпусные', 'Видеомониторы межвидового применения бескорпусные'),
(9, 'Промышленные видеомониторы', 'industrial-monitor', 0, 'Промышленные видеомониторы', 'видеомониторы'),
(10, 'Микродисплейные системы индикации', 'mikrodisp-indication', 0, 'Микродисплейные системы индикации', 'Микродисплейные системы индикации'),
(11, 'ЭВМ специального назначения', 'evm', 0, 'ЭВМ специального назначения', 'ЭВМ специального назначения'),
(12, 'Защищенные компьютеры', 'rugged-computer', 0, 'Защищенные', 'Защищенные'),
(13, 'IT-решения для визуализации', 'it', 0, 'IT-решения для визуализации', 'IT-решения для визуализации'),
(14, 'ЖК-матрицы', 'lcd', 0, 'ЖК-матрицы', 'ЖК-матрицы'),
(15, 'Прочая продукция', 'other-product', 0, 'продукция', 'продукция'),
(16, 'Категории', 'category', 0, NULL, NULL),
(17, 'Монокулярные', 'monocular', 10, 'монокулярные', 'монокулярные'),
(18, 'Бинокулярные', 'binocular', 10, 'Бинокулярные', 'Бинокулярные'),
(19, 'Бескорпусные', 'none-corpus', 10, 'Бескорпусные', 'Бескорпусные'),
(20, 'Планшетные', 'tablet', 11, 'Планшетные', 'Планшетные'),
(21, 'Носимые', 'nosimye', 11, 'Носимые', 'Носимые'),
(22, 'Панельные', 'panel', 11, 'Панельные', 'Панельные'),
(23, 'Системные блоки', 'system-block', 11, 'Системные блоки', 'Системные блоки'),
(24, 'Авиационные', 'aviation', 11, 'Авиационные', 'Авиационные'),
(25, 'Уницфицированные панельные ЭВМ', 'yni-tablet-evm', 11, 'Уницфицированные панельные ЭВМ', 'Уницфицированные панельные ЭВМ'),
(26, 'Формат 16:9', 'format-16-9p', 9, 'Промышленные видеомониторы Формат 16:9', 'Промышленные видеомониторы Формат 16:9'),
(27, 'Формат 4:3', 'format-4-3p', 9, 'Промышленные видеомониторы Формат 4:3', 'Промышленные видеомониторы Формат 4:3'),
(28, 'Формат 4:3', 'format-4-3r', 12, 'Защищенные компьютеры Формат 4:3', 'Защищенные компьютеры Формат 4:3'),
(29, 'Формат 16:9', 'format-16-9r', 12, 'Защищенные компьютеры Формат 16:9', 'Защищенные компьютеры Формат 16:9');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(10) NOT NULL,
  `symbol_right` varchar(10) NOT NULL,
  `value` float NOT NULL,
  `base` enum('0','1') NOT NULL COMMENT 'является ли базовой'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица валют';

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `value`, `base`) VALUES
(1, 'Доллар', 'USD', '$', '', 1, '1'),
(2, 'Евро', 'EUR', '', 'евро', 0.88, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='картинки галереи';

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `img`) VALUES
(1, 1, 'aviation_display/format_1_1/mcd-034/mcd034-1.png'),
(2, 1, 'aviation_display/format_1_1/mcd-034/mcd034-2.png'),
(3, 1, 'aviation_display/format_1_1/mcd-034/mcd034-3.png'),
(4, 1, 'aviation_display/format_1_1/mcd-034/mcd034-4.png'),
(5, 1, 'aviation_display/format_1_1/mcd-034/mcd034-5.png'),
(6, 2, 'aviation_display/format_1_1/mcd-034/mcd034-2.png'),
(7, 2, 'aviation_display/format_1_1/mcd-034/mcd034-2.png'),
(8, 2, 'aviation_display/format_1_1/mcd-034/mcd034-2.png'),
(9, 2, 'aviation_display/format_1_1/mcd-034/mcd034-2.png'),
(10, 2, 'aviation_display/format_1_1/mcd-034/mcd034-2.png');

-- --------------------------------------------------------

--
-- Структура таблицы `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longtitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `location`
--

INSERT INTO `location` (`id`, `latitude`, `longtitude`) VALUES
(8, '55.166064420067904', '30.230805192370216');

-- --------------------------------------------------------

--
-- Структура таблицы `megvid_prim_form_4_3`
--

CREATE TABLE `megvid_prim_form_4_3` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text,
  `product_name` varchar(255) DEFAULT NULL,
  `parameter_1` varchar(255) DEFAULT NULL,
  `parameter_2` varchar(255) DEFAULT NULL,
  `parameter_3` varchar(255) DEFAULT NULL,
  `parameter_4` varchar(255) DEFAULT NULL,
  `parameter_5` varchar(255) DEFAULT NULL,
  `parameter_6` varchar(255) DEFAULT NULL,
  `parameter_7` varchar(255) DEFAULT NULL,
  `parameter_8` varchar(255) DEFAULT NULL,
  `parameter_9` varchar(255) DEFAULT NULL,
  `parameter_10` varchar(255) DEFAULT NULL,
  `parameter_11` varchar(255) DEFAULT NULL,
  `parameter_12` varchar(255) DEFAULT NULL,
  `parameter_13` varchar(255) DEFAULT NULL,
  `parameter_14` varchar(255) DEFAULT NULL,
  `parameter_15` varchar(255) DEFAULT NULL,
  `parameter_16` varchar(255) DEFAULT NULL,
  `parameter_17` varchar(255) DEFAULT NULL,
  `parameter_18` varchar(255) DEFAULT NULL,
  `parameter_19` varchar(255) DEFAULT NULL,
  `parameter_20` varchar(255) DEFAULT NULL,
  `parameter_21` varchar(255) DEFAULT NULL,
  `parameter_22` varchar(255) DEFAULT NULL,
  `parameter_23` varchar(255) DEFAULT NULL,
  `parameter_24` varchar(255) DEFAULT NULL,
  `parameter_25` varchar(255) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `megvid_prim_form_4_3`
--

INSERT INTO `megvid_prim_form_4_3` (`id`, `title`, `image`, `details`, `product_name`, `parameter_1`, `parameter_2`, `parameter_3`, `parameter_4`, `parameter_5`, `parameter_6`, `parameter_7`, `parameter_8`, `parameter_9`, `parameter_10`, `parameter_11`, `parameter_12`, `parameter_13`, `parameter_14`, `parameter_15`, `parameter_16`, `parameter_17`, `parameter_18`, `parameter_19`, `parameter_20`, `parameter_21`, `parameter_22`, `parameter_23`, `parameter_24`, `parameter_25`, `manual`) VALUES
(1, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', 'Диагональ: 7.9 см, 3.1″ (2.2x2.2″)', 'Яркость изображения: 1000(кд/м2)	', 'Контрастность: 300:1', 'Угол обзора: +/-80, +/-80(Г/В)', 'Угол обзора: +/-80, +/-80(Г/В)', 'Разрешение: 480x480\r\n', 'Интерфейс: цифровой 6 бит', 'Напряжение питания: +12, +3.3(В)', 'Потребляемая мощность: 5(Вт)', 'Масса: 	0.3(кг)', 'Габариты: 78/78/50 ширина/высота/глубина (мм)', 'Условия эксплуатации:\r\nГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', 'Температура окружающей среды (°С)\r\nрабочая:    -55…+60\r\nпредельная: -55…+85	\r\n', 'Влажность:	98%, 35°С', 'Вибрация:	10…300Гц, 3g', 'Удары (g)\r\nодиночный: 30\r\nмногократный: 15	\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://kbdisplay.by/data/docs.pdf'),
(2, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', '11Модуль цветной дисплейный МЦД-0354 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1100', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://kbdisplay.by/data/docs.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `modification`
--

CREATE TABLE `modification` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица вариантов товара';

--
-- Дамп данных таблицы `modification`
--

INSERT INTO `modification` (`id`, `product_id`, `title`, `price`) VALUES
(1, 1, 'green', 300),
(2, 1, 'black', 400);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `more_info` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `more_info`, `date`) VALUES
(1, 'Открыт Филиал кафедр БГУИР', 'https://fit-exzample.000webhostapp.com/image/news/BGUIR.jpg', 'На базе открытого акционерного общества «Конструкторское бюро «Дисплей» 3 марта 2018 г. был открыт Филиал кафедр: \r\n\r\n- Инфокоммуникационных технологий (ИКТ),\r\n\r\n- Информационных радиотехнологий (ИРТ),\r\n\r\n- Электронных вычислительных средств (ЭВМ) \r\n\r\nУО «Белорусский государственный университет информатики и радиоэлектроники».\r\n\r\nВ церемонии приняли участие:от  ОАО «Конструкторское бюро «Дисплей»:\r\nдиректор Войтенков А.С.,\r\nпервый заместитель директора – главный инженер Вайсенблюм В.Э.,\r\nзаместитель главного инженера Щеглов С.А.,\r\nначальник отдела оптико-механических разработок Вильчиков А.И.,\r\nи.о. руководителя кадровой группы Титов В.В.;\r\n\r\nот УО «БГУИР»:\r\nзаведующий кафедрой заведующий кафедрой инфокоммуникационных технологий, доктор технических наук, доцент Цветков В.Ю.\r\nзаведующий кафедрой информационных радиотехнологий, доктор технических наук, профессор Листопад Н.А.;\r\nдоктор технических наук, профессор Конопелько Валерий Константинович;\r\nстарший преподаватель кафедры инфокоммуникационных технологий, кандидат технических наук, доцент Сиротко И.И.\r\n \r\nСоздание филиала кафедр направлено на развитие сотрудничества в области подготовки квалифицированных кадров. Деятельность филиала позволит совершенствовать технологии и качество обучения путём эффективного использования материально-технической и производственной базы. Планируется проведение профильных занятий у студентов, а также привлечение представителей предприятия к разработке тем курсовых, дипломных работ с учетом потребностей организации и с дальнейшим внедрением результатов научных исследований в практическую деятельность КБ. Кроме того, функционирование филиала будет способствовать методическому обеспечению учебных дисциплин, разработке современных учебно-методических комплексов, изданию и обмену литературой. На базе филиала будут проводиться научные и научно-практические мероприятия, производственная практика, способствующая адаптации обучающихся к конкретным производственным условиям.', '2018-03-12'),
(2, 'Военные атташе посетили ОАО «Конструкторское бюро ', 'https://fit-exzample.000webhostapp.com/image/news/news-1.jpg', '', '2018-03-12'),
(3, 'Поздравление c Международным женским днем – 8 марта!', 'https://fit-exzample.000webhostapp.com/image/news/news-1.jpg', '', '2018-03-02'),
(4, 'Военные атташе посетили ОАО «Конструкторское бюро ', 'https://fit-exzample.000webhostapp.com/image/news/news-1.jpg', '', '2018-03-12'),
(5, 'Поздравление c Международным женским днем – 8 марта!', 'https://fit-exzample.000webhostapp.com/image/news/news-1.jpg', '', '2018-03-02');

-- --------------------------------------------------------

--
-- Структура таблицы `orderr`
--

CREATE TABLE `orderr` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'активный неактивный заказ',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата заказа',
  `update_at` timestamp NOT NULL,
  `currency` varchar(10) NOT NULL COMMENT 'валюта заказа',
  `note` text NOT NULL COMMENT 'примечание к товару'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='заказ';

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `user_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `info` text CHARACTER SET utf8 NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`user_id`, `status`, `info`, `location`, `created_at`, `updated_at`, `order_id`) VALUES
(10, 0, 'sad', '', NULL, NULL, 1),
(10, 1, 'sad', '', NULL, NULL, 2),
(10, 0, 'sad', '', NULL, NULL, 3),
(8, 1, 'sad', '', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='записываются заказанные товары';

-- --------------------------------------------------------

--
-- Структура таблицы `ords`
--

CREATE TABLE `ords` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ords`
--

INSERT INTO `ords` (`id`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', '', NULL, NULL),
(9, '11233', 'qwe', 'ee', 'wq', 'qe', '2018-07-10 04:58:05', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `other_products`
--

CREATE TABLE `other_products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_21` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_22` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_23` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_24` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_25` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manual` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `other_products`
--

INSERT INTO `other_products` (`id`, `title`, `image`, `details`, `product_name`, `parameter_1`, `parameter_2`, `parameter_3`, `parameter_4`, `parameter_5`, `parameter_6`, `parameter_7`, `parameter_8`, `parameter_9`, `parameter_10`, `parameter_11`, `parameter_12`, `parameter_13`, `parameter_14`, `parameter_15`, `parameter_16`, `parameter_17`, `parameter_18`, `parameter_19`, `parameter_20`, `parameter_21`, `parameter_22`, `parameter_23`, `parameter_24`, `parameter_25`, `manual`) VALUES
(1, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', 'Диагональ: 7.9 см, 3.1″ (2.2x2.2″)', 'Яркость изображения: 1000(кд/м2)	', 'Контрастность: 300:1', 'Угол обзора: +/-80, +/-80(Г/В)', 'Угол обзора: +/-80, +/-80(Г/В)', 'Разрешение: 480x480\r\n', 'Интерфейс: цифровой 6 бит', 'Напряжение питания: +12, +3.3(В)', 'Потребляемая мощность: 5(Вт)', 'Масса: 	0.3(кг)', 'Габариты: 78/78/50 ширина/высота/глубина (мм)', 'Условия эксплуатации:\r\nГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', 'Температура окружающей среды (°С)\r\nрабочая:    -55…+60\r\nпредельная: -55…+85	\r\n', 'Влажность:	98%, 35°С', 'Вибрация:	10…300Гц, 3g', 'Удары (g)\r\nодиночный: 30\r\nмногократный: 15	\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://kbdisplay.by/data/docs.pdf'),
(2, NULL, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', '11Модуль цветной дисплейный МЦД-0354 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1100', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://kbdisplay.by/data/docs.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `parse`
--

CREATE TABLE `parse` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `parse`
--

INSERT INTO `parse` (`id`, `title`, `image`, `details`) VALUES
(1, 'qweasd', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.'),
(2, 'asdas', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'kajsdkjahsdkjhasdjeqwequidhsd\r\nasdloaskdlasjdklasjdklasjdklasd'),
(3, 'asdas', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'kajsdkjahsdkjhasdjeqwequidhsd\r\nasdloaskdlasjdklasjdklasjdklasd');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `name`, `email`, `text`) VALUES
(1, 'Автор', 'buey@aisdj.com', 'текст'),
(2, 'Автор', 'buey@aisdj.com', 'текст'),
(3, 'Автор', 'buey@aisdj.com', 'текст'),
(4, 'Автор', 'buey@aisdj.com', 'текст'),
(5, 'Автор', 'buey@aisdj.com', 'текст'),
(6, 'Автор', 'buey@aisdj.com', 'текст'),
(7, 'Автор', 'buey@aisdj.com', 'текст'),
(8, 'Автор', 'buey@aisdj.com', 'текст'),
(9, 'Автор', 'buey@aisdj.com', 'текст'),
(10, 'Автор', 'buey@aisdj.com', 'текст'),
(11, 'Автор', 'buey@aisdj.com', 'текст'),
(12, 'Автор', 'buey@aisdj.com', 'текст'),
(13, 'Автор', 'buey@aisdj.com', 'текст'),
(14, 'Автор', 'buey@aisdj.com', 'текст'),
(15, 'Автор', 'buey@aisdj.com', 'текст'),
(16, 'Автор', 'buey@aisdj.com', 'текст'),
(17, 'Автор', 'buey@aisdj.com', '<p style=\"text-align: center;\">Привет саня&nbsp;<img alt=\"frown\" src=\"http://yii/web/assets/79e149f/plugins/smiley/images/confused_smile.png\" style=\"height:23px; width:23px\" title=\"frown\" /></p>\r\n'),
(18, 'Автор', 'buey@aisdj.com', 'текст'),
(19, 'Автор', 'buey@aisdj.com', '<p><img alt=\"heart\" src=\"http://yii/web/assets/79e149f/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n'),
(20, 'Автор', 'buey@aisdj.com', 'текст'),
(21, 'Автор', 'buey@aisdj.com', '<p>й</p>\r\n'),
(22, 'Автор', 'buey@aisdj.com', 'текст'),
(23, 'Автор', 'buey@aisdj.com', '<p>текст</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand_id` tinyint(3) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `short_content` varchar(255) DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `old_price` float NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT 'показывать товар или нет',
  `keywords` varchar(255) NOT NULL COMMENT 'метаданные',
  `description` varchar(255) NOT NULL COMMENT 'метаданные',
  `img` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `hit` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'является ли товар новинкой',
  `equipment` text NOT NULL COMMENT 'комплектация',
  `manual` varchar(255) NOT NULL COMMENT 'ссылка на мануал',
  `characteristics` text NOT NULL COMMENT 'тех. характеристики'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `brand_id`, `category_id`, `title`, `alias`, `content`, `short_content`, `price`, `old_price`, `status`, `keywords`, `description`, `img`, `hit`, `equipment`, `manual`, `characteristics`) VALUES
(1, 2, 3, 'МЦД-034', 'mcd-034', 'Модуль дисплейный выполнен в стандартном конструктиве 4ATI. Ключевой особенностью модуля является его оснащение многоцветной светодиодной системой подсветки, обеспечивающей в режиме «Ночь» совместимость с прибором ночного видения по MIL-STD-3009 при сохранении всей палитры цветов.', 'Модуль цветной дисплейный МЦД-034...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '', 'https://kbdisplay.by/data/docs.pdf', '<table class=\"table table-light\">\r\n	<thead>	\r\n		<tr>\r\n			<th scope=\"col\">Параметр</th>\r\n			<th scope=\"col\">Значение</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n    <tr>  <td>Диагональ</td> <td>7.9 см, 3.1″ (2.2x2.2″)</td> </tr>\r\n\r\n	<tr>  <td>Яркость изображения (кд/м2)</td><td>1000</td> </tr>   	\r\n   \r\n    <tr>  <td>Контрастность</td><td>300:1</td> </tr>\r\n\r\n    <tr>  <td>Угол обзора (°) Г/В</td><td>+/-80 +/-80</td> </tr>\r\n\r\n    <tr>  <td>Разрешение</td><td>480x480</td> </tr>\r\n\r\n    <tr>  <td>Интерфейс</td><td>цифровой 6 бит</td> </tr>\r\n\r\n	<tr>  <td>Напряжение питания (В)</td><td>+12, +3.3</td> </tr>\r\n\r\n	<tr>  <td>Потребляемая мощность (Вт)</td><td>5</td> </tr>\r\n\r\n	<tr>  <td>Масса (кг)</td><td>0.3</td> </tr>\r\n\r\n	<tr>  <td>Габариты: ширина/высота/глубина (мм)</td><td>78/78/50</td> </tr>\r\n\r\n	<tr>  <td>Условия эксплуатации</td><td>ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3</td> </tr>\r\n\r\n	<tr>  \r\n		<td>Температура окружающей среды (°С)</td>\r\n		<td>рабочая: -55…+60 <br>предельная: -55…+85</td> 	\r\n	</tr>\r\n\r\n	<tr>  <td>Влажность (%)</td><td>98%, 35°С</td> </tr>\r\n\r\n	<tr>  <td>Удары (g)</td><td>одиночный: 30 <br> многократный: 15</td> </tr>\r\n	\r\n	</tbody>\r\n   \r\n  \r\n</table>'),
(2, 2, 3, 'УД-400 Тип 3', 'yd-400-type-3', 'Модуль дисплейный выполнен в стандартном конструктиве 4ATI. Ключевой особенностью модуля является его оснащение многоцветной светодиодной системой подсветки, обеспечивающей в режиме «Ночь» совместимость с прибором ночного видения по MIL-STD-3009 при сохранении всей палитры цветов.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'УД-400 Тип 3', 'УД-400 Тип 3', 'aviation_display/format_1_1/yd-400-type-3/yd-400-type-3.png', '1', '2', 'https://kbdisplay.by/data/docs.pdf', '1'),
(3, 2, 3, 'МЦД-0342', 'mcd-0342', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '3', 'https://kbdisplay.by/data/docs.pdf', '3'),
(4, 2, 3, 'МЦД-0343', 'mcd-0343', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '3', 'https://kbdisplay.by/data/docs.pdf', '3'),
(5, 2, 3, 'МЦД-0343', 'mcd-0344', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '3', 'https://kbdisplay.by/data/docs.pdf', '3'),
(6, 2, 3, 'МЦД-0343', 'mcd-0345', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '3', 'https://kbdisplay.by/data/docs.pdf', '3'),
(7, 2, 3, 'МЦД-0343', 'mcd-0346', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '3', 'https://kbdisplay.by/data/docs.pdf', '3'),
(8, 2, 3, 'МЦД-0343', 'mcd-0347', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI...', 100, 70, '1', 'МЦД-034', 'МЦД-034', 'aviation_display/format_1_1/mcd-034/mcd034.png', '1', '3', 'https://kbdisplay.by/data/docs.pdf', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `image`, `category_name`) VALUES
(1, 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Авиационные дисплеи'),
(2, 'https://kbdisplay.by/image.php?image=%2Fdata%2Fmonitors_interspecific_application.png&width=207&height=120', 'Видеомониторы межвидового применения'),
(3, 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Промышленные видеомониторы'),
(4, 'https://api.androidhive.info/json/movies/baahubali2.jpg', 'Микродисплейные системы индикации'),
(5, 'https://api.androidhive.info/json/movies/baahubali2.jpg', 'ЭВМ специального назначения'),
(6, 'https://api.androidhive.info/json/movies/baahubali2.jpg', 'Защищенные компьютеры'),
(17, 'https://api.androidhive.info/json/movies/baahubali2.jpg', 'IT-решения для визуализации'),
(19, 'https://api.androidhive.info/json/movies/baahubali2.jpg', 'ЖК-матрицы'),
(20, 'https://api.androidhive.info/json/movies/baahubali2.jpg', 'Прочая продукция');

-- --------------------------------------------------------

--
-- Структура таблицы `related_product`
--

CREATE TABLE `related_product` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'товар который мы просматриваем',
  `related_id` int(10) UNSIGNED NOT NULL COMMENT 'похожие товары'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='нужна для показа связанных товаров';

--
-- Дамп данных таблицы `related_product`
--

INSERT INTO `related_product` (`product_id`, `related_id`) VALUES
(1, 3),
(1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `specifications_product`
--

CREATE TABLE `specifications_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'короткое содержание продукта',
  `image` varchar(255) NOT NULL COMMENT 'ссылка на изображение',
  `details` text NOT NULL COMMENT 'описание продукта',
  `product_name` varchar(255) NOT NULL COMMENT 'Имя продукта:',
  `parameters` varchar(255) NOT NULL COMMENT 'Параметр:',
  `diagonal` varchar(255) NOT NULL COMMENT 'Диагональ:',
  `image_brightness` varchar(255) NOT NULL COMMENT 'яркость',
  `view_angle` varchar(255) NOT NULL COMMENT 'угол обзора',
  `resolution` varchar(255) NOT NULL COMMENT 'разрешение',
  `interface` varchar(255) NOT NULL COMMENT 'интерфейс',
  `supply_voltage` varchar(255) NOT NULL COMMENT 'напряжение питания',
  `power_consumption` varchar(255) NOT NULL COMMENT 'потребляемая мощность',
  `weight` varchar(255) NOT NULL COMMENT 'масса',
  `dimensions` varchar(255) NOT NULL COMMENT 'габариты',
  `terms_of_use` varchar(255) NOT NULL COMMENT 'условия эксплуатцации',
  `ambient_temperature` varchar(255) NOT NULL COMMENT 'температура окружающей среды',
  `humidity` varchar(255) NOT NULL COMMENT 'влажность',
  `vibration` varchar(255) NOT NULL COMMENT 'вибрация',
  `blows` varchar(255) NOT NULL COMMENT 'удары',
  `contrast` varchar(255) NOT NULL COMMENT 'контрастность'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specifications_product`
--

INSERT INTO `specifications_product` (`id`, `title`, `image`, `details`, `product_name`, `parameters`, `diagonal`, `image_brightness`, `view_angle`, `resolution`, `interface`, `supply_voltage`, `power_consumption`, `weight`, `dimensions`, `terms_of_use`, `ambient_temperature`, `humidity`, `vibration`, `blows`, `contrast`) VALUES
(1, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1000', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1'),
(2, 'МЦД-034', 'https://kbdisplay.by/image.php?image=%2Fdata%2Faviation_displays.png&width=207&height=120', 'Модуль цветной дисплейный МЦД-034 выполнен в стандартном конструктиве 3ATI. Высокая разрешающая способность 480х480 точек и светодиодная подсветка обеспечивают яркое насыщенное изображение, прекрасно читаемое при солнечном освещении кабины.', 'МЦД-034', '-', '7.9 см, 3.1″ (2.2x2.2″)', '1000', '+/-80\r\n+/-80', '480x480', 'цифровой 6 бит', '+12, +3.3', '5', '0.3', '78/78/50', 'ГОСТ РВ 20.39.304- 98 гр. 3.1.2, 3.2.3, 3.3.3', '\r\n-55…+60\r\n-55…+85', '98%, 35°С', '10…300Гц, 3g', '\r\n30\r\n15', '300:1');

-- --------------------------------------------------------

--
-- Структура таблицы `specifications_product_name`
--

CREATE TABLE `specifications_product_name` (
  `id` int(11) NOT NULL,
  `column_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specifications_product_name`
--

INSERT INTO `specifications_product_name` (`id`, `column_name`) VALUES
(1, 'Диагональ:'),
(2, 'Яркость изображения (кд/м2)'),
(3, 'Контрастность'),
(4, 'Угол обзора (°) Г/В'),
(5, 'Разрешение'),
(6, 'Интерфейс'),
(7, 'Напряжение питания (В)'),
(8, 'Потребляемая мощность (Вт)'),
(9, 'Масса (кг)'),
(10, 'Габариты: ширина/высота/глубина (мм)'),
(11, 'Условия эксплуатации'),
(12, 'Температура окружающей среды (°С)\r\nрабочая\r\nпредельная'),
(13, 'Влажность (%)'),
(14, 'Вибрация	'),
(15, 'Удары (g)\r\nодиночный\r\nмногократный');

-- --------------------------------------------------------

--
-- Структура таблицы `template`
--

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL COMMENT 'Название шаблона',
  `msg_title` varchar(255) NOT NULL COMMENT 'Тема письма',
  `email` varchar(255) NOT NULL COMMENT 'Адрес получателя',
  `msg_text` varchar(255) NOT NULL COMMENT 'Текст сообщения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `template`
--

INSERT INTO `template` (`id`, `template_name`, `msg_title`, `email`, `msg_text`) VALUES
(1, 'Приветствие', 'Привет мир', '', 'Hello World!');

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `title`) VALUES
(1, 'Hello'),
(2, 'Hello');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `name`, `address`, `role`) VALUES
(1, 'ф', '$2y$10$8A33Ha8MRWp0yuzrra3Xk.N8W3cWCwMtPLbcdaz5tCrOPgbP2Yis6', 'buyka@tut.by', 'фвы', 'фывфыв', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`) VALUES
(1, '1', 'Alex', 'buyka@tut.by', 'shadow', '123', NULL, NULL),
(8, '5ab0e94d0db2f9.63227634', 'Tanya', 'asd', 'M3eauu0CIzTjquAQVNBlpp0meTljMDkxYjc3NGNm', 'c091b774cf', '2018-03-20 10:58:21', NULL),
(9, '5ab0ea062643f1.86647411', 'Alex', 'basd', 'YoNgPe1OdeqdCCeFRg+F9PEQUaEwMTBiOTU5MGM1', '010b9590c5', '2018-03-20 11:01:26', NULL),
(10, '5b30db0f6f6ec6.69093857', 'Александр Терзян', 'buyka@tut.by1', 'CHy6v8XM69Y/T4MuxOgmTG099u5jMTMyYTgxZTY3', 'c132a81e67', '2018-06-25 12:07:43', NULL),
(11, '', '', 'buyka@tut.by2', '$2y$10$9xpn/cUYMmyiChhJBbc54ObPUnIuDm3I75OFomo1jaelgBGQ1Qfxu', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `userstest`
--

CREATE TABLE `userstest` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `userstest`
--

INSERT INTO `userstest` (`id`, `email`, `password`, `encrypted_password`) VALUES
(1, 'buyka@tut.by', '$2y$10$4JXSjaroWgpPP/rgBYb9s.ZrVJS7uzb8yudIyXPDvD1XBcxodMrFC', NULL),
(2, 'buyka@tut.by3', NULL, '$2y$10$VDBYL5c1z6H5F/XDmbLkn.dhJmcZc7QMmbUQR438RsqaJhhZV9UMu'),
(3, 'buyka@tut.by4', '$2y$10$m02TqQrtBew9nVgLXE1tteQvSNrS2uFN8d8kMrbh6skUrkBWmPgxW', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aviation_disp_form_1_1`
--
ALTER TABLE `aviation_disp_form_1_1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aviation_disp_form_4_3`
--
ALTER TABLE `aviation_disp_form_4_3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aviation_disp_form_16_9`
--
ALTER TABLE `aviation_disp_form_16_9`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `megvid_prim_form_4_3`
--
ALTER TABLE `megvid_prim_form_4_3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modification`
--
ALTER TABLE `modification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);
ALTER TABLE `orders` ADD FULLTEXT KEY `search_order` (`info`);
ALTER TABLE `orders` ADD FULLTEXT KEY `search_order1` (`info`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ords`
--
ALTER TABLE `ords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `other_products`
--
ALTER TABLE `other_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `parse`
--
ALTER TABLE `parse`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `related_product`
--
ALTER TABLE `related_product`
  ADD PRIMARY KEY (`product_id`,`related_id`) USING BTREE;

--
-- Индексы таблицы `specifications_product`
--
ALTER TABLE `specifications_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specifications_product_name`
--
ALTER TABLE `specifications_product_name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id` (`id`);
ALTER TABLE `users` ADD FULLTEXT KEY `search_order2` (`name`);
ALTER TABLE `users` ADD FULLTEXT KEY `search_order` (`name`);

--
-- Индексы таблицы `userstest`
--
ALTER TABLE `userstest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `aviation_disp_form_1_1`
--
ALTER TABLE `aviation_disp_form_1_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `aviation_disp_form_4_3`
--
ALTER TABLE `aviation_disp_form_4_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `aviation_disp_form_16_9`
--
ALTER TABLE `aviation_disp_form_16_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `megvid_prim_form_4_3`
--
ALTER TABLE `megvid_prim_form_4_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modification`
--
ALTER TABLE `modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `orderr`
--
ALTER TABLE `orderr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ords`
--
ALTER TABLE `ords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `other_products`
--
ALTER TABLE `other_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `parse`
--
ALTER TABLE `parse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `specifications_product`
--
ALTER TABLE `specifications_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `specifications_product_name`
--
ALTER TABLE `specifications_product_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `userstest`
--
ALTER TABLE `userstest`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
