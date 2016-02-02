.class public Lcom/android/settings_ex/profiles/ProfilesList;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProfilesList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 114
    .local v1, "selectedUuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "selectedUuid":Ljava/util/UUID;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/ProfilesList;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    .line 48
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 104
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/profiles/ProfilesList;->setSelectedProfile(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->refreshList()V

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->refreshList()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 59
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 67
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040052

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "footer":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public refreshList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfilesList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 76
    .local v4, "plist":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 79
    iget-object v9, p0, Lcom/android/settings_ex/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v9}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v6

    .line 80
    .local v6, "prof":Landroid/app/Profile;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "selectedKey":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v9}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v1

    .local v1, "arr$":[Landroid/app/Profile;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v1, v2

    .line 83
    .local v7, "profile":Landroid/app/Profile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "Profile"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string v9, "new_profile_mode"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    new-instance v5, Lcom/android/settings_ex/profiles/ProfilesPreference;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ex/profiles/ProfilesPreference;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 88
    .local v5, "ppref":Lcom/android/settings_ex/profiles/ProfilesPreference;
    invoke-virtual {v7}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setKey(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v5, v11}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setPersistent(Z)V

    .line 91
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    invoke-virtual {v5, v10}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setSelectable(Z)V

    .line 93
    invoke-virtual {v5, v10}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setEnabled(Z)V

    .line 95
    invoke-virtual {v5}, Lcom/android/settings_ex/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 96
    invoke-virtual {v5, v10}, Lcom/android/settings_ex/profiles/ProfilesPreference;->setChecked(Z)V

    .line 99
    :cond_0
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "arr$":[Landroid/app/Profile;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "ppref":Lcom/android/settings_ex/profiles/ProfilesPreference;
    .end local v7    # "profile":Landroid/app/Profile;
    .end local v8    # "selectedKey":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 101
    .restart local v1    # "arr$":[Landroid/app/Profile;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v8    # "selectedKey":Ljava/lang/String;
    :cond_2
    return-void
.end method
