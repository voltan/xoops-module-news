<?php
/*
 You may not change or alter any portion of this comment or credits
 of supporting developers from this source code or any supporting source code
 which is considered copyrighted (c) material of the original comment or credit authors.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

/**
 * News header file
 * Manage content page
 *
 * @copyright   The XOOPS Project http://sourceforge.net/projects/xoops/
 * @license     http://www.fsf.org/copyleft/gpl.html GNU public license
 * @author      Hossein Azizabadi (AKA Voltan)
 * @version     $Id$
 */

require_once dirname(dirname(dirname(dirname(__FILE__)))) . '/mainfile.php';

require_once XOOPS_ROOT_PATH . '/include/cp_header.php';
require_once XOOPS_ROOT_PATH . '/class/tree.php';
require_once XOOPS_ROOT_PATH . '/modules/news/include/functions.php';
require_once XOOPS_ROOT_PATH . '/modules/news/class/perm.php';
require_once XOOPS_ROOT_PATH . '/modules/news/class/utils.php';

if (file_exists($GLOBALS['xoops']->path('/Frameworks/moduleclasses/moduleadmin/moduleadmin.php'))) {
    include_once $GLOBALS['xoops']->path('/Frameworks/moduleclasses/moduleadmin/moduleadmin.php');
    //return true;
} else {
    redirect_header("../../../admin.php", 5, _AM_MODULEADMIN_MISSING, false);
    //return false;
}

xoops_load('xoopsformloader');

// Initialize content handler
$story_handler = xoops_getmodulehandler('story', 'news');
$topic_handler = xoops_getmodulehandler('topic', 'news');
$file_handler = xoops_getmodulehandler('file', 'news');

$handler = new NewsPermission;
$perm_handler = $handler->getHandler();
?>