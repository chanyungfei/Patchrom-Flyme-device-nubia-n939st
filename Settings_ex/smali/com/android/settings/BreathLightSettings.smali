.class public Lcom/android/settings_ex/BreathLightSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BreathLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBreathlightForChargingSwith:Landroid/preference/SwitchPreference;

.field private mBreathlightForMsgSwitch:Landroid/preference/SwitchPreference;

.field private mBreathlightForThirdSwitch:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForChargingSwith:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "breath_light_for_charging_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "mode":I
    iget-object v4, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForChargingSwith:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 166
    .end local v0    # "mode":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForMsgSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "breath_light_for_msg_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    .restart local v0    # "mode":I
    iget-object v4, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForMsgSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    .end local v0    # "mode":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForThirdSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "breath_light_for_third_msg_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 175
    .restart local v0    # "mode":I
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForThirdSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 178
    .end local v0    # "mode":I
    :cond_2
    return-void

    .restart local v0    # "mode":I
    :cond_3
    move v1, v3

    .line 158
    goto :goto_0

    :cond_4
    move v1, v3

    .line 169
    goto :goto_1

    :cond_5
    move v2, v3

    .line 175
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/BreathLightSettings;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "breathlight_for_charging"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/BreathLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForChargingSwith:Landroid/preference/SwitchPreference;

    .line 102
    const-string v1, "breathlight_for_event_missing"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/BreathLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForMsgSwitch:Landroid/preference/SwitchPreference;

    .line 103
    const-string v1, "breathlight_for_third_msg"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/BreathLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForThirdSwitch:Landroid/preference/SwitchPreference;

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForChargingSwith:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForMsgSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForThirdSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForChargingSwith:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    .line 120
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 121
    .local v0, "auto":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breath_light_for_charging_switch"

    if-eqz v0, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    .end local v0    # "auto":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForMsgSwitch:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_1

    move-object v2, p2

    .line 130
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 131
    .restart local v0    # "auto":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breath_light_for_msg_switch"

    if-eqz v0, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    .end local v0    # "auto":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/BreathLightSettings;->mBreathlightForThirdSwitch:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 135
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 136
    .restart local v0    # "auto":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "breath_light_for_third_msg_switch"

    if-eqz v0, :cond_2

    move v4, v3

    :cond_2
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    .end local v0    # "auto":Z
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.breathlight_switch_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "mIntentLed":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/BreathLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return v3

    .end local v1    # "mIntentLed":Landroid/content/Intent;
    .restart local v0    # "auto":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    move v2, v4

    .line 121
    goto :goto_0

    :cond_5
    move v2, v4

    .line 131
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ex/BreathLightSettings;->updateState()V

    .line 150
    return-void
.end method
