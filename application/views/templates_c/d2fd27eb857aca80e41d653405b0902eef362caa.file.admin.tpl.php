<?php /* Smarty version Smarty 3.1.4, created on 2011-11-02 10:59:23
         compiled from "application/views/templates/admin\admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:105174eb1222e428671-28901669%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd2fd27eb857aca80e41d653405b0902eef362caa' => 
    array (
      0 => 'application/views/templates/admin\\admin.tpl',
      1 => 1320231560,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '105174eb1222e428671-28901669',
  'function' => 
  array (
  ),
  'version' => 'Smarty 3.1.4',
  'unifunc' => 'content_4eb1222e4d648',
  'variables' => 
  array (
    'base_url' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eb1222e4d648')) {function content_4eb1222e4d648($_smarty_tpl) {?><?php if (!is_callable('smarty_function_ci_config')) include 'C:\Documents and Settings\User\My Documents\My Projects\Venuvu\venuvu.com\web\system\libraries\smarty\plugins\function.ci_config.php';
?><p>
	This is the admin template. It's in a sub-directory.
</p>

<?php echo smarty_function_ci_config(array('name'=>"base_url"),$_smarty_tpl);?>


<p>
	The base url is still: <?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>

</p><?php }} ?>