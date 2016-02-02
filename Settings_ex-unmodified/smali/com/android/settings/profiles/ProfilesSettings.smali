.class public Lcom/android/settings/profiles/ProfilesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfilesSettings.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

.field private mAddProfileFab:Landroid/view/View;

.field mContainer:Landroid/view/ViewGroup;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    .line 81
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/android/settings/profiles/ProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/profiles/ProfilesSettings$1;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->addProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/profiles/ProfilesSettings;)Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    return-object v0
.end method

.method private addProfile()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "new_profile_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v1, "Profile"

    new-instance v4, Landroid/app/Profile;

    const v5, 0x7f090022

    invoke-virtual {p0, v5}, Lcom/android/settings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    .line 193
    .local v0, "pa":Lcom/android/settings/SubSettings;
    const-class v1, Lcom/android/settings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 195
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ab

    new-instance v2, Lcom/android/settings/profiles/ProfilesSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/ProfilesSettings$3;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    return-void
.end method

.method private updateProfilesEnabledState()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system_profiles_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    .line 220
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 222
    iget-object v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEmptyText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    return-void

    :cond_0
    move v1, v2

    .line 218
    goto :goto_0

    :cond_1
    move v1, v3

    .line 222
    goto :goto_1

    :cond_2
    move v1, v3

    .line 223
    goto :goto_2

    :cond_3
    move v3, v2

    .line 224
    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 171
    const/4 v0, 0x1

    const v1, 0x7f090028

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 175
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    iput-object p2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    .line 101
    const v1, 0x7f0400c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 103
    const v1, 0x7f0f019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEmptyText:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    new-instance v2, Lcom/android/settings/profiles/ProfilesSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/ProfilesSettings$2;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v1, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;-><init>(Lcom/android/settings/profiles/ProfilesSettings;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    .line 114
    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 116
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 166
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "profile_state"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    return-void

    .line 230
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 181
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->resetAll()V

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;->pause()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 141
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 156
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v0, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    const-string v3, "system_profiles_enabled"

    const/4 v4, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 158
    return-void
.end method
