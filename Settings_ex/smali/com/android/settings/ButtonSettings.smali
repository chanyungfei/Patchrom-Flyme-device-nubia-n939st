.class public Lcom/android/settings_ex/ButtonSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCallAction:Landroid/preference/CheckBoxPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mPowerKeyEndCallAction:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyWakeControl:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    .line 334
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 335
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 336
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ex/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    return-void
.end method

.method private handleCheckBoxChange(Landroid/preference/CheckBoxPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/CheckBoxPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    .line 320
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 321
    .local v1, "value":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 322
    .local v0, "intValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    return-void

    .line 321
    .end local v0    # "intValue":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCheckBox(Ljava/lang/String;Z)Landroid/preference/CheckBoxPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/ButtonSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 282
    .local v0, "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 286
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v22, 0x7f060015

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ButtonSettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 115
    .local v18, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 116
    .local v19, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 118
    .local v17, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10e0053

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 121
    .local v5, "deviceKeys":I
    const/16 v22, 0x1a

    invoke-static/range {v22 .. v22}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v10

    .line 122
    .local v10, "hasPowerKey":Z
    and-int/lit8 v22, v5, 0x1

    if-eqz v22, :cond_4

    const/4 v8, 0x1

    .line 123
    .local v8, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v22, v5, 0x4

    if-eqz v22, :cond_5

    const/4 v9, 0x1

    .line 124
    .local v9, "hasMenuKey":Z
    :goto_1
    and-int/lit8 v22, v5, 0x8

    if-eqz v22, :cond_6

    const/4 v7, 0x1

    .line 126
    .local v7, "hasAssistKey":Z
    :goto_2
    const/4 v6, 0x0

    .line 127
    .local v6, "hasAnyBindableKey":Z
    const-string v22, "home_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 130
    .local v11, "homeCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    const-string v22, "menu_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 136
    .local v14, "menuCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 141
    if-eqz v10, :cond_0

    .line 142
    const/4 v4, 0x0

    .line 143
    .local v4, "defaultPowerAction":I
    const-string v22, "incall_power_button_behavior"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 146
    .local v16, "powerEndCall":I
    const-string v23, "hardware_keys_power_key_end_call"

    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/ButtonSettings;->initCheckBox(Ljava/lang/String;Z)Landroid/preference/CheckBoxPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/ButtonSettings;->mPowerKeyEndCallAction:Landroid/preference/CheckBoxPreference;

    .line 150
    .end local v4    # "defaultPowerAction":I
    .end local v16    # "powerEndCall":I
    :cond_0
    const-string v22, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ButtonSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/SearchManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, -0x2

    invoke-virtual/range {v22 .. v25}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v12

    .line 152
    .local v12, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    .line 153
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 154
    .local v15, "pm":Landroid/content/pm/PackageManager;
    if-eqz v12, :cond_1

    .line 155
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 157
    :cond_1
    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_8

    const/4 v3, 0x1

    .line 158
    .local v3, "assistAvailable":Z
    :goto_4
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "intent":Landroid/content/Intent;
    const-string v22, "android.intent.action.SEARCH_LONG_PRESS"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v12    # "intent":Landroid/content/Intent;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 160
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    const/16 v20, 0x1

    .line 162
    .local v20, "voiceAssistAvailable":Z
    :goto_5
    if-eqz v8, :cond_a

    .line 222
    :goto_6
    if-eqz v9, :cond_b

    .line 263
    :goto_7
    const-string v22, "volume_wake_screen"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 265
    .local v21, "wakeControlAction":I
    const-string v23, "volume_key_wake_device"

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const/16 v22, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/ButtonSettings;->initCheckBox(Ljava/lang/String;Z)Landroid/preference/CheckBoxPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/ButtonSettings;->mVolumeKeyWakeControl:Landroid/preference/CheckBoxPreference;

    .line 267
    if-eqz v11, :cond_2

    .line 268
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_2
    if-eqz v14, :cond_3

    .line 274
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_3
    return-void

    .line 122
    .end local v3    # "assistAvailable":Z
    .end local v6    # "hasAnyBindableKey":Z
    .end local v7    # "hasAssistKey":Z
    .end local v8    # "hasHomeKey":Z
    .end local v9    # "hasMenuKey":Z
    .end local v11    # "homeCategory":Landroid/preference/PreferenceCategory;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "menuCategory":Landroid/preference/PreferenceCategory;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "voiceAssistAvailable":Z
    .end local v21    # "wakeControlAction":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 123
    .restart local v8    # "hasHomeKey":Z
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 124
    .restart local v9    # "hasMenuKey":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 146
    .restart local v4    # "defaultPowerAction":I
    .restart local v6    # "hasAnyBindableKey":Z
    .restart local v7    # "hasAssistKey":Z
    .restart local v11    # "homeCategory":Landroid/preference/PreferenceCategory;
    .restart local v14    # "menuCategory":Landroid/preference/PreferenceCategory;
    .restart local v16    # "powerEndCall":I
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 157
    .end local v4    # "defaultPowerAction":I
    .end local v16    # "powerEndCall":I
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 160
    .restart local v3    # "assistAvailable":Z
    :cond_9
    const/16 v20, 0x0

    goto :goto_5

    .line 219
    .restart local v20    # "voiceAssistAvailable":Z
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 260
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 265
    .restart local v21    # "wakeControlAction":I
    :cond_c
    const/16 v22, 0x0

    goto :goto_8
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 343
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v4, "key_home_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/settings_ex/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    :goto_0
    return v2

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v4, "key_home_double_tap_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/settings_ex/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 351
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v4, "key_menu_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/settings_ex/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v4, "key_menu_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/settings_ex/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mVolumeKeyWakeControl:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_4

    .line 359
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mVolumeKeyWakeControl:Landroid/preference/CheckBoxPreference;

    const-string v4, "volume_wake_screen"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/settings_ex/ButtonSettings;->handleCheckBoxChange(Landroid/preference/CheckBoxPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mHomeAnswerCallAction:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_5

    .line 363
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mHomeAnswerCallAction:Landroid/preference/CheckBoxPreference;

    const-string v4, "key_home_answer_ringing_call"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/settings_ex/ButtonSettings;->handleCheckBoxChange(Landroid/preference/CheckBoxPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/ButtonSettings;->mPowerKeyEndCallAction:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_7

    move-object v1, p2

    .line 367
    check-cast v1, Ljava/lang/Boolean;

    .line 368
    .local v1, "value":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x2

    .line 370
    .local v0, "intValue":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "incall_power_button_behavior"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0    # "intValue":I
    :cond_6
    move v0, v2

    .line 368
    goto :goto_1

    .line 374
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method
