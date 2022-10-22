<template>
<div class="login-form">
<el-form :model="from" ref="from":rules="rules" status-icon label-width="30px" v-on:keyup.enter="signIn(from)">
<h3 class="login-title">登录</h3>
<el-form-item prop="userName">
<el-input placeholder="手机号邮箱"v-model="from.userName"
autocomplete="off" prefix-icon="el-icon-user" clearable></el-input>
</el-form-item>
<el-form-item prop="password">
<el-input type="password" placeholder="请输入密码"v-
model="from.password" show-password prefix-icon="el-icon-lock"clearable></el-input>
<lel-form-item>
<el-form-item prop="verifyCode">
<el-input style="width: 70%;" placeholder="请输入验证码"v-
model="from.verifyCode" autocomplete="off clearable></el-input>
<el-image class="el-image" :src="img.url"
:loading="img.isLoading" @click.native="getVerifyCode"><lel-image>
</el-form-item>
<el-form-item>
<el-checkbox label="自动登录"v-
model="from.isRemember"></el-checkbox>
</el-form-item>
<el-form-item>
<el-row>
<el-button type="primary" :loading="from.isLoading"
@click="signIn(from)" round>登录</el-button>
</el-form-item>
</el-form>
</div>
<template>

