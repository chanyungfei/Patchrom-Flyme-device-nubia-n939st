.class public Lcom/android/settings/profiles/SetupTriggersFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SetupTriggersFragment.java"


# instance fields
.field mAdapter:Lcom/android/settings/profiles/TriggerPagerAdapter;

.field mNewProfileMode:Z

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPreselectedItem:I

.field mProfile:Landroid/app/Profile;

.field mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 85
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-boolean v2, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 86
    const v2, 0x7f0900b7

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    const v2, 0x7f0900b8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/profiles/SetupTriggersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 164
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->finishFragment()V

    .line 169
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    iput-object v0, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mProfile:Landroid/app/Profile;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_profile_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_item"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mPreselectedItem:I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v9, 0x7f04005e

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 106
    .local v7, "root":Landroid/view/View;
    const v9, 0x7f0f00da

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager;

    iput-object v9, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 107
    new-instance v9, Lcom/android/settings/profiles/TriggerPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/settings/profiles/TriggerPagerAdapter;-><init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    iput-object v9, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mAdapter:Lcom/android/settings/profiles/TriggerPagerAdapter;

    .line 109
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v6, "profileArgs":Landroid/os/Bundle;
    const-string v9, "Profile"

    iget-object v10, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    invoke-static {}, Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;->values()[Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;

    move-result-object v2

    .line 115
    .local v2, "fragments":[Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 116
    .local v1, "fragment":Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;
    invoke-virtual {v1}, Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/android/settings/profiles/triggers/NfcTriggerFragment;

    if-ne v9, v10, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.nfc"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 115
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v9, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mAdapter:Lcom/android/settings/profiles/TriggerPagerAdapter;

    invoke-virtual {v1}, Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;->getTitleRes()I

    move-result v11

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/settings/profiles/TriggerPagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_1

    .line 126
    .end local v1    # "fragment":Lcom/android/settings/profiles/TriggerPagerAdapter$TriggerFragments;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mAdapter:Lcom/android/settings/profiles/TriggerPagerAdapter;

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 128
    const v9, 0x7f0f001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/PagerTabStrip;

    .line 129
    .local v8, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v9, 0x7f080033

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 131
    iget-boolean v9, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    if-eqz v9, :cond_2

    .line 132
    const v9, 0x7f0f00db

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 133
    .local v5, "nextButton":Landroid/widget/Button;
    new-instance v9, Lcom/android/settings/profiles/SetupTriggersFragment$1;

    invoke-direct {v9, p0}, Lcom/android/settings/profiles/SetupTriggersFragment$1;-><init>(Lcom/android/settings/profiles/SetupTriggersFragment;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v9, 0x7f0f00d7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/android/settings/profiles/SetupTriggersFragment$2;

    invoke-direct {v10, p0}, Lcom/android/settings/profiles/SetupTriggersFragment$2;-><init>(Lcom/android/settings/profiles/SetupTriggersFragment;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .end local v5    # "nextButton":Landroid/widget/Button;
    :goto_2
    return-object v7

    .line 155
    :cond_2
    const v9, 0x7f0f00d6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/android/settings/profiles/SetupTriggersFragment;->mPreselectedItem:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 98
    return-void
.end method
