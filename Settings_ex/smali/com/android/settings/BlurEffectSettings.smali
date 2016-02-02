.class public Lcom/android/settings_ex/BlurEffectSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BlurEffectSettings.java"


# instance fields
.field private mGlobalaction:Landroid/preference/CheckBoxPreference;

.field private mLockscreen:Landroid/preference/CheckBoxPreference;

.field private mVolumecontrol:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v4, 0x7f060013

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BlurEffectSettings;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/BlurEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 60
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "lockscreen"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BlurEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mLockscreen:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mLockscreen:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 62
    const-string v4, "blur_lockscreen"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v5

    .line 64
    .local v1, "lockScreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mLockscreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    .end local v1    # "lockScreen":Z
    :cond_0
    const-string v4, "globalaction"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BlurEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mGlobalaction:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mGlobalaction:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 68
    const-string v4, "blur_globalaction"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_4

    move v0, v5

    .line 70
    .local v0, "globalAction":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mGlobalaction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    .end local v0    # "globalAction":Z
    :cond_1
    const-string v4, "volumecontrol"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BlurEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mVolumecontrol:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mVolumecontrol:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 74
    const-string v4, "blur_volume"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5

    move v3, v5

    .line 76
    .local v3, "volumeControl":Z
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/BlurEffectSettings;->mVolumecontrol:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    .end local v3    # "volumeControl":Z
    :cond_2
    return-void

    :cond_3
    move v1, v6

    .line 62
    goto :goto_0

    :cond_4
    move v0, v6

    .line 68
    goto :goto_1

    :cond_5
    move v3, v6

    .line 74
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 82
    iget-object v3, p0, Lcom/android/settings_ex/BlurEffectSettings;->mLockscreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/android/settings_ex/BlurEffectSettings;->mLockscreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 84
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/BlurEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blur_lockscreen"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    .end local v0    # "value":Z
    :goto_0
    return v2

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/BlurEffectSettings;->mGlobalaction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/settings_ex/BlurEffectSettings;->mGlobalaction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 88
    .restart local v0    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/BlurEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blur_globalaction"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 90
    .end local v0    # "value":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/BlurEffectSettings;->mVolumecontrol:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 91
    iget-object v3, p0, Lcom/android/settings_ex/BlurEffectSettings;->mVolumecontrol:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 92
    .restart local v0    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/BlurEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blur_volume"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 95
    .end local v0    # "value":Z
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
