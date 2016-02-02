.class public Lcom/android/settings_ex/profiles/SetupActionsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final EXPANDED_DESKTOP_MAPPING:[I

.field private static final LOCKMODE_MAPPING:[I


# instance fields
.field mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/profiles/actions/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mNewProfileMode:Z

.field mProfile:Landroid/app/Profile;

.field mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->EXPANDED_DESKTOP_MAPPING:[I

    return-void

    .line 107
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profiles/SetupActionsFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->rebuildItemList()V

    return-void
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    return-object v0
.end method

.method private fillProfileFromCurrentSettings()V
    .locals 4

    .prologue
    .line 306
    new-instance v0, Lcom/android/settings_ex/profiles/SetupActionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$2;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/Profile;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/SetupActionsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method

.method private generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, p1}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v0

    .line 248
    .local v0, "settings":Landroid/app/ConnectionSettings;
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/app/ConnectionSettings;

    .end local v0    # "settings":Landroid/app/ConnectionSettings;
    invoke-direct {v0, p1}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 250
    .restart local v0    # "settings":Landroid/app/ConnectionSettings;
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 252
    :cond_0
    new-instance v1, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    invoke-direct {v1, p1, v0}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;-><init>(ILandroid/app/ConnectionSettings;)V

    return-object v1
.end method

.method private generateVolumeStreamItem(I)Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, p1}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v0

    .line 257
    .local v0, "settings":Landroid/app/StreamSettings;
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroid/app/StreamSettings;

    .end local v0    # "settings":Landroid/app/StreamSettings;
    invoke-direct {v0, p1}, Landroid/app/StreamSettings;-><init>(I)V

    .line 259
    .restart local v0    # "settings":Landroid/app/StreamSettings;
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 261
    :cond_0
    new-instance v1, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    invoke-direct {v1, p1, v0}, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;-><init>(ILandroid/app/StreamSettings;)V

    return-object v1
.end method

.method private openTriggersFragment(I)V
    .locals 7
    .param p1, "openTo"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 823
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 824
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "Profile"

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 825
    const-string v1, "new_profile_mode"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 826
    const-string v1, "current_item"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 828
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SubSettings;

    .line 829
    .local v0, "pa":Lcom/android/settings_ex/SubSettings;
    const-class v1, Lcom/android/settings_ex/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09003a

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 831
    return-void
.end method

.method private rebuildItemList()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/Header;

    const v3, 0x7f09001f

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/ProfileNameItem;

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/ProfileNameItem;-><init>(Landroid/app/Profile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/Header;

    const v3, 0x7f090032

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {}, Lcom/android/settings_ex/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;-><init>(ILandroid/app/ConnectionSettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 180
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/Header;

    const v3, 0x7f090033

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/Header;

    const v3, 0x7f090050

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v3}, Landroid/app/Profile;->getRingMode()Landroid/app/RingModeSettings;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;-><init>(Landroid/app/RingModeSettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v3}, Landroid/app/Profile;->getAirplaneMode()Landroid/app/AirplaneModeSettings;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;-><init>(Landroid/app/AirplaneModeSettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/profiles/actions/item/LockModeItem;

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/profiles/actions/item/LockModeItem;-><init>(Landroid/app/Profile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method private requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/AirplaneModeSettings;

    .prologue
    .line 470
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 475
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/app/AirplaneModeSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 477
    const/4 v2, 0x2

    .line 483
    :cond_0
    :goto_0
    const v3, 0x7f090058

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 484
    new-instance v3, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/AirplaneModeSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 510
    return-void

    .line 479
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 579
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null yo"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 581
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 586
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 588
    const/4 v2, 0x2

    .line 594
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 595
    new-instance v3, Lcom/android/settings_ex/profiles/SetupActionsFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment$8;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 621
    return-void

    .line 590
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestFillProfileFromSettingsDialog()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 294
    const v1, 0x7f0900d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v1, 0x7f0900d7

    new-instance v2, Lcom/android/settings_ex/profiles/SetupActionsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$1;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 303
    return-void
.end method

.method private requestLockscreenModeDialog()V
    .locals 6

    .prologue
    .line 441
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "lockEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 446
    .local v1, "defaultIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings_ex/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 447
    sget-object v4, Lcom/android/settings_ex/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 448
    move v1, v2

    .line 453
    :cond_0
    const v4, 0x7f090051

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 454
    new-instance v4, Lcom/android/settings_ex/profiles/SetupActionsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$5;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 467
    return-void

    .line 446
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null yo"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 627
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x5

    .line 632
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v2

    .line 636
    :cond_1
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 637
    new-instance v3, Lcom/android/settings_ex/profiles/SetupActionsFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/profiles/SetupActionsFragment$9;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 658
    return-void
.end method

.method private requestProfileName()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 717
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400c6

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 719
    .local v1, "dialogView":Landroid/view/View;
    const v4, 0x7f0f002b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 720
    .local v2, "entry":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 721
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 723
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090023

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/profiles/SetupActionsFragment$14;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment$14;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 738
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/settings_ex/profiles/SetupActionsFragment$15;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$15;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 758
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 759
    return-void
.end method

.method private requestRemoveProfileDialog()V
    .locals 6

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    .line 413
    .local v1, "current":Landroid/app/Profile;
    iget-object v2, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v2, 0x7f0901d0

    new-instance v3, Lcom/android/settings_ex/profiles/SetupActionsFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$3;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 438
    :goto_0
    return-void

    .line 426
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    const v2, 0x7f0900d7

    new-instance v3, Lcom/android/settings_ex/profiles/SetupActionsFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$4;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    const v2, 0x7f0900d8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private requestRingModeDialog(Landroid/app/RingModeSettings;)V
    .locals 6
    .param p1, "setting"    # Landroid/app/RingModeSettings;

    .prologue
    .line 527
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 532
    .local v1, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    const/4 v1, 0x0

    .line 544
    :cond_0
    :goto_0
    const v4, 0x7f090002

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 545
    new-instance v4, Lcom/android/settings_ex/profiles/SetupActionsFragment$7;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment$7;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/RingModeSettings;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 575
    return-void

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    const/4 v1, 0x1

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    const/4 v1, 0x2

    goto :goto_0

    .line 541
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private updateProfile()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 280
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900b9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 289
    return-void

    .line 286
    :cond_0
    const v0, 0x7f0900ba

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 523
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 524
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    iput-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_profile_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mNewProfileMode:Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 140
    new-instance v0, Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/profiles/actions/ItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->setHasOptionsMenu(Z)V

    .line 144
    iget-boolean v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 149
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 218
    iget-boolean v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v0, :cond_0

    .line 219
    const v0, 0x7f0900ac

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 226
    const/4 v0, 0x2

    const v1, 0x7f09001c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 764
    const v1, 0x7f04005d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 766
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    .line 767
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 768
    iget-boolean v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_0

    .line 769
    const v1, 0x7f0f00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/profiles/SetupActionsFragment$16;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$16;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    const v1, 0x7f0f00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/profiles/SetupActionsFragment$17;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$17;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    :goto_0
    return-object v0

    .line 787
    :cond_0
    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/profiles/actions/item/Item;

    .line 796
    .local v1, "itemAtPosition":Lcom/android/settings_ex/profiles/actions/item/Item;
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 797
    check-cast v0, Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;

    .line 798
    .local v0, "item":Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;->getSettings()Landroid/app/AirplaneModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V

    .line 820
    .end local v0    # "item":Lcom/android/settings_ex/profiles/actions/item/AirplaneModeItem;
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/LockModeItem;

    if-eqz v2, :cond_2

    .line 800
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestLockscreenModeDialog()V

    goto :goto_0

    .line 801
    :cond_2
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 802
    check-cast v0, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;

    .line 803
    .local v0, "item":Lcom/android/settings_ex/profiles/actions/item/RingModeItem;
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;->getSettings()Landroid/app/RingModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestRingModeDialog(Landroid/app/RingModeSettings;)V

    goto :goto_0

    .line 804
    .end local v0    # "item":Lcom/android/settings_ex/profiles/actions/item/RingModeItem;
    :cond_3
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 805
    check-cast v0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;

    .line 806
    .local v0, "item":Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getConnectionType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 807
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getSettings()Landroid/app/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V

    goto :goto_0

    .line 809
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getSettings()Landroid/app/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V

    goto :goto_0

    .line 811
    .end local v0    # "item":Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;
    :cond_5
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 812
    check-cast v0, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;

    .line 813
    .local v0, "item":Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;->getStreamType()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;->getSettings()Landroid/app/StreamSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V

    goto :goto_0

    .line 814
    .end local v0    # "item":Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;
    :cond_6
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/ProfileNameItem;

    if-eqz v2, :cond_7

    .line 815
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestProfileName()V

    goto :goto_0

    .line 816
    :cond_7
    instance-of v2, v1, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 817
    check-cast v0, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;

    .line 818
    .local v0, "item":Lcom/android/settings_ex/profiles/actions/item/TriggerItem;
    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->getTriggerType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->openTriggersFragment(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 237
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestRemoveProfileDialog()V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 209
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 268
    iget-boolean v2, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 269
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    .local v1, "descPadding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    const v2, 0x7f0900c0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 276
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "descPadding":I
    :cond_0
    return-void
.end method

.method public requestVolumeDialog(ILandroid/app/StreamSettings;)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Landroid/app/StreamSettings;

    .prologue
    const/4 v9, 0x0

    .line 662
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/android/settings_ex/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 665
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 666
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 667
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04004c

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 668
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f0f00bd

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 669
    .local v4, "seekBar":Landroid/widget/SeekBar;
    const v7, 0x7f0f00b5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 670
    .local v3, "override":Landroid/widget/CheckBox;
    invoke-virtual {p2}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 671
    new-instance v7, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;

    invoke-direct {v7, p0, p2, v4}, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/StreamSettings;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 682
    invoke-virtual {p2}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 683
    new-instance v6, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, p1, v9, v9}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 685
    .local v6, "volumizer":Landroid/preference/SeekBarVolumizer;
    invoke-virtual {v6, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 686
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 687
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings_ex/profiles/SetupActionsFragment$11;

    invoke-direct {v8, p0, v4, p2}, Lcom/android/settings_ex/profiles/SetupActionsFragment$11;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Landroid/app/StreamSettings;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings_ex/profiles/SetupActionsFragment$12;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/profiles/SetupActionsFragment$12;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 704
    new-instance v7, Lcom/android/settings_ex/profiles/SetupActionsFragment$13;

    invoke-direct {v7, p0, v6}, Lcom/android/settings_ex/profiles/SetupActionsFragment$13;-><init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 712
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 713
    return-void
.end method
