.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field static final PHONE_COUNT:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;

.field private static mDefaultDataSubId:I

.field private static mNotDefaultDataSubId:I

.field private static mNumSlots:I

.field private static mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closeHandler:Landroid/os/Handler;

.field private dataDisableToastDisplayed:Z

.field private inActivity:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallState:[I

.field private mChangeCount:I

.field private mChangeStartPos:I

.field private mContext:Landroid/content/Context;

.field private mDataEnable:Z

.field private mDataHandler:Landroid/os/Handler;

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHasCDMACard:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:I

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mRadioReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryConnect:I

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private nameText:Landroid/widget/EditText;

.field private needUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 120
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 158
    sput v1, Lcom/android/settings/sim/SimSettings;->mDefaultDataSubId:I

    .line 159
    sput v1, Lcom/android/settings/sim/SimSettings;->mNotDefaultDataSubId:I

    .line 701
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/settings/sim/SimSettings;->PHONE_COUNT:I

    .line 1098
    new-instance v0, Lcom/android/settings/sim/SimSettings$6;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1198
    const-string v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/SimSettings;->URI_PHONE_FEATURE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 128
    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 129
    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 131
    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 132
    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->needUpdate:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 155
    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 157
    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 161
    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mDataEnable:Z

    .line 162
    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mRetryConnect:I

    .line 163
    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mHasCDMACard:Z

    .line 254
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mRadioReceiver:Landroid/content/BroadcastReceiver;

    .line 681
    new-instance v0, Lcom/android/settings/sim/SimSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$4;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->closeHandler:Landroid/os/Handler;

    .line 1115
    new-instance v0, Lcom/android/settings/sim/SimSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$7;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 1161
    new-instance v0, Lcom/android/settings/sim/SimSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$8;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mDataHandler:Landroid/os/Handler;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->closeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/settings/sim/SimSettings;->mDefaultDataSubId:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 91
    sput p0, Lcom/android/settings/sim/SimSettings;->mDefaultDataSubId:I

    return p0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/settings/sim/SimSettings;->mNotDefaultDataSubId:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 91
    sput p0, Lcom/android/settings/sim/SimSettings;->mNotDefaultDataSubId:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mDataEnable:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/sim/SimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings;->mDataEnable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->getPrimarySlot()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/sim/SimSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->saveDualSimUserSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->needUpdate:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/sim/SimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings;->needUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/sim/SimSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/sim/SimSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/sim/SimSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->isLTEMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mRetryConnect:I

    return v0
.end method

.method static synthetic access$2508(Lcom/android/settings/sim/SimSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mRetryConnect:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mRetryConnect:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/sim/SimSettings;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSettings;->setUserPrefDataSubIdInDb(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initLTEPreference()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mHasCDMACard:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/sim/SimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings;->mHasCDMACard:Z

    return p1
.end method

.method private callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 1202
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/sim/SimSettings;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1205
    :cond_0
    return-object v0
.end method

.method private createPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 327
    const v4, 0x7f06004b

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 329
    const-string v4, "select_primary_sub"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 330
    const-string v4, "sim_cards"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 331
    .local v1, "simCards":Landroid/preference/PreferenceCategory;
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 334
    .local v2, "simEnablers":Landroid/preference/PreferenceCategory;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 335
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 338
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-le v4, v8, :cond_1

    .line 340
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v5, Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v3, v7, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 342
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const-string v4, "sim_cards"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private getCharacterVisualLength(Ljava/lang/String;I)I
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 1087
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1088
    .local v0, "cp":I
    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 1089
    const/4 v1, 0x1

    .line 1091
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getIccid(I)Ljava/lang/String;
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 873
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 874
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 875
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 876
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 882
    .end local v1    # "subId":[I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0

    .line 882
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "subId":[I
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1145
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 381
    move v0, p1

    .line 382
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 390
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 657
    const/4 v0, -0x1

    .line 659
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 663
    :goto_0
    return v0

    .line 661
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPreferredNetworkFromDb(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 692
    const/4 v0, -0x1

    .line 694
    .local v0, "nwMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 698
    :goto_0
    return v0

    .line 696
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPrimarySlot()I
    .locals 3

    .prologue
    .line 704
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/settings/sim/SimSettings;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 705
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPreferredNetworkFromDb(I)I

    move-result v0

    .line 706
    .local v0, "current":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 710
    .end local v0    # "current":I
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 704
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "current":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private initLTEPreference()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 603
    const-string v10, "persist.radio.primarycard"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 606
    .local v2, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "config_primary_sub_setable"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v4, v8

    .line 609
    .local v4, "primarySetable":Z
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPrimarySubFeatureEnable :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " primarySetable :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 612
    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    .line 613
    :cond_0
    const-string v8, "sim_activities"

    invoke-virtual {p0, v8}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 615
    .local v6, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 643
    .end local v6    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v4    # "primarySetable":Z
    :cond_1
    move v4, v9

    .line 606
    goto :goto_0

    .line 619
    .restart local v4    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v5

    .line 621
    .local v5, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "config_lte_sub_select_mode"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_3

    move v1, v8

    .line 624
    .local v1, "isManualMode":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init LTE primary slot : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isManualMode :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 625
    const/4 v8, -0x1

    if-eq v8, v5, :cond_7

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 630
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v8, "zh"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 632
    if-nez v7, :cond_4

    .line 638
    .local v3, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v8, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 642
    .end local v0    # "defultLanguage":Ljava/lang/String;
    .end local v3    # "lteSummary":Ljava/lang/CharSequence;
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_4
    iget-object v8, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v1    # "isManualMode":Z
    :cond_3
    move v1, v9

    .line 621
    goto :goto_2

    .line 632
    .restart local v0    # "defultLanguage":Ljava/lang/String;
    .restart local v1    # "isManualMode":Z
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/settings/sim/SimSettings;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 634
    :cond_5
    if-nez v7, :cond_6

    .restart local v3    # "lteSummary":Ljava/lang/CharSequence;
    :goto_5
    goto :goto_3

    .end local v3    # "lteSummary":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/settings/sim/SimSettings;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 640
    .end local v0    # "defultLanguage":Ljava/lang/String;
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 526
    const/4 v0, 0x1

    .line 527
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v0
.end method

.method private isLTEMode(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1241
    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 1244
    .local v2, "type":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1251
    :goto_1
    const/4 v0, 0x0

    .line 1252
    .local v0, "isLTEMode":Z
    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    .line 1264
    :cond_0
    const/4 v0, 0x1

    .line 1268
    :goto_2
    return v0

    .line 1244
    .end local v0    # "isLTEMode":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v1

    .line 1249
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "SimSettings"

    const-string v4, "getPreferredNetworkType: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1266
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "isLTEMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private limitTextSize(Ljava/lang/String;)V
    .locals 12
    .param p1, "textString"    # Ljava/lang/String;

    .prologue
    .line 1042
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->nameText:Landroid/widget/EditText;

    if-eqz v10, :cond_4

    .line 1043
    const/4 v9, 0x0

    .line 1044
    .local v9, "wholeLen":I
    const/4 v6, 0x0

    .line 1046
    .local v6, "i":I
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 1047
    invoke-direct {p0, p1, v6}, Lcom/android/settings/sim/SimSettings;->getCharacterVisualLength(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v9, v10

    .line 1046
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1051
    .local v0, "InputNameMaxLength":I
    if-le v9, v0, :cond_4

    .line 1052
    sub-int v3, v9, v0

    .line 1054
    .local v3, "cutNum":I
    iget v10, p0, Lcom/android/settings/sim/SimSettings;->mChangeStartPos:I

    iget v11, p0, Lcom/android/settings/sim/SimSettings;->mChangeCount:I

    add-int/2addr v10, v11

    add-int/lit8 v1, v10, -0x1

    .line 1055
    .local v1, "changeEndPos":I
    const/4 v2, 0x0

    .line 1056
    .local v2, "cutLen":I
    move v6, v1

    :goto_1
    if-ltz v6, :cond_1

    .line 1057
    invoke-direct {p0, p1, v6}, Lcom/android/settings/sim/SimSettings;->getCharacterVisualLength(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v2, v10

    .line 1058
    if-lt v2, v3, :cond_5

    .line 1063
    :cond_1
    move v5, v6

    .line 1065
    .local v5, "headStrEndPos":I
    const-string v4, ""

    .line 1067
    .local v4, "headStr":Ljava/lang/String;
    const-string v7, ""

    .line 1068
    .local v7, "rearStr":Ljava/lang/String;
    if-lez v5, :cond_2

    .line 1070
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1072
    :cond_2
    iget v10, p0, Lcom/android/settings/sim/SimSettings;->mChangeStartPos:I

    iget v11, p0, Lcom/android/settings/sim/SimSettings;->mChangeCount:I

    add-int v8, v10, v11

    .line 1073
    .local v8, "rearStrStartPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 1075
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1078
    :cond_3
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->nameText:Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->nameText:Landroid/widget/EditText;

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 1083
    .end local v0    # "InputNameMaxLength":I
    .end local v1    # "changeEndPos":I
    .end local v2    # "cutLen":I
    .end local v3    # "cutNum":I
    .end local v4    # "headStr":Ljava/lang/String;
    .end local v5    # "headStrEndPos":I
    .end local v6    # "i":I
    .end local v7    # "rearStr":Ljava/lang/String;
    .end local v8    # "rearStrStartPos":I
    .end local v9    # "wholeLen":I
    :cond_4
    return-void

    .line 1056
    .restart local v0    # "InputNameMaxLength":I
    .restart local v1    # "changeEndPos":I
    .restart local v2    # "cutLen":I
    .restart local v3    # "cutNum":I
    .restart local v6    # "i":I
    .restart local v9    # "wholeLen":I
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method private listen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 368
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 369
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 370
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 371
    aget v3, v1, v5

    if-lez v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v4, v1, v5

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    aput v4, v3, v0

    .line 373
    aget v3, v1, v5

    invoke-direct {p0, v0, v3}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "subId":[I
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1149
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1153
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void
.end method

.method private needDisableDataSub2()Z
    .locals 3

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "disableDataSub2":Z
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 417
    :cond_0
    return v0
.end method

.method private saveDualSimUserSettings()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hipad_user_preferred_phone_subid"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 862
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hipad_user_preferred_sms_subid"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hipad_user_preferred_sim1_iccid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/sim/SimSettings;->getIccid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 868
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hipad_user_preferred_sim2_iccid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/sim/SimSettings;->getIccid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 869
    return-void

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hipad_user_preferred_phone_subid"

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hipad_user_preferred_sms_subid"

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private setUserPrefDataSubIdInDb(J)V
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_preferred_data_sub"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating data subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 246
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 421
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 422
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 423
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 424
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 425
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 427
    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 361
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimEnablers()V

    .line 363
    return-void
.end method

.method private updateCallValues()V
    .locals 12

    .prologue
    const v11, 0x7f090a71

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 537
    const-string v7, "sim_calls"

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 538
    .local v2, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 539
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 541
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v5

    .line 542
    .local v5, "subId":I
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 543
    .local v4, "slotId":I
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 545
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_0

    .line 546
    const v7, 0x7f090a72

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 547
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 551
    :cond_0
    if-eqz v1, :cond_3

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v2

    .line 552
    check-cast v7, Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 556
    :cond_1
    :goto_0
    const v7, 0x7f0901e0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 559
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 561
    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    :goto_2
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    if-nez v7, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 577
    return-void

    .line 553
    .end local v0    # "defultLanguage":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_1

    move-object v7, v2

    .line 554
    check-cast v7, Lcom/android/settings/notification/DropDownPreference;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 561
    .restart local v0    # "defultLanguage":Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v6, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 567
    :cond_6
    if-eqz v1, :cond_7

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    invoke-virtual {v6, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 576
    :cond_a
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_b

    move v7, v9

    goto :goto_3

    :cond_b
    move v7, v8

    goto :goto_3
.end method

.method private updateCellularDataValues()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 485
    const-string v6, "sim_cellular_data"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 486
    .local v4, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    invoke-static {v6, v9}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 488
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    const/4 v3, 0x0

    .line 489
    .local v3, "isCellularDataEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c001e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 491
    .local v2, "disableCellulardata":Z
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 492
    .local v0, "callStateIdle":Z
    if-eqz v5, :cond_0

    move-object v6, v4

    .line 493
    check-cast v6, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "defultLanguage":Ljava/lang/String;
    const-string v6, "zh"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 498
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    .end local v1    # "defultLanguage":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "SimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCellularDataValues"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->needDisableDataSub2()Z

    move-result v6

    if-nez v6, :cond_1

    .line 507
    const/4 v3, 0x1

    .line 510
    :cond_1
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_5

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    iget-boolean v6, p0, Lcom/android/settings/sim/SimSettings;->mHasCDMACard:Z

    if-nez v6, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 514
    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    if-nez v6, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0901df

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 517
    iput-boolean v7, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 520
    :cond_2
    if-ne v0, v7, :cond_3

    .line 521
    iput-boolean v8, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 523
    :cond_3
    return-void

    .line 500
    .restart local v1    # "defultLanguage":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1    # "defultLanguage":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 510
    goto :goto_1
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 1134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1135
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 1136
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 1134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 6

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "sim_cards"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 396
    .local v2, "prefScreen":Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 398
    .local v3, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 399
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 400
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 401
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 398
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    .end local v3    # "prefSize":I
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 462
    .local v1, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 464
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    const v3, 0x7f0901e1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 465
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 466
    :cond_0
    const v3, 0x7f090a72

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    move-object v3, v1

    .line 467
    check-cast v3, Lcom/android/settings/notification/DropDownPreference;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 481
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 482
    return-void

    .line 468
    :cond_2
    if-eqz v2, :cond_1

    .line 471
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 473
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v3, v1

    .line 479
    check-cast v3, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 481
    .end local v0    # "defultLanguage":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1020
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->limitTextSize(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1025
    return-void

    .line 1023
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1030
    return-void
.end method

.method public createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
    .locals 10
    .param p1, "preference"    # Lcom/android/settings/notification/DropDownPreference;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 715
    move-object v3, p1

    .line 716
    .local v3, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "keyPref":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 720
    const-string v6, "SimSettings"

    const-string v7, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    .line 725
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 729
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 730
    .local v5, "subSelectableSize":I
    if-le v5, v8, :cond_2

    const-string v6, "sim_cellular_data"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090a71

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 736
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 737
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_3

    .line 740
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v6, "zh"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 742
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    .end local v0    # "defultLanguage":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 744
    .restart local v0    # "defultLanguage":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 751
    .end local v0    # "defultLanguage":Ljava/lang/String;
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_5
    if-le v5, v8, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v9, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 752
    new-instance v6, Lcom/android/settings/sim/SimSettings$5;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/sim/SimSettings$5;-><init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto/16 :goto_0

    .line 851
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto/16 :goto_0
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 646
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 647
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 648
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 653
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 646
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 431
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operatorName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_1

    const-string v0, "Mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 439
    .end local p1    # "operatorName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 434
    .restart local p1    # "operatorName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Unicom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 436
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, "Telecom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getOperatorName2(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 444
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "mobileOperator":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "unicomOperator":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "telecomOperator":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 455
    .end local p1    # "operatorName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 450
    .restart local p1    # "operatorName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 452
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public isCDMACard(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1223
    const/4 v1, 0x0

    .line 1225
    .local v1, "result":Z
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1226
    .local v3, "subId":[I
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 1227
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1228
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 1229
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v6, "898603"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "898605"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "898611"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1231
    :cond_0
    const/4 v1, 0x1

    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move v5, v1

    .line 1237
    .end local v3    # "subId":[I
    :goto_0
    return v5

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 178
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 180
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 181
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 183
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onCreate] mSubInfoList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    sput v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    iput v5, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v5, :cond_1

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->isCDMACard(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/sim/SimSettings;->mHasCDMACard:Z

    .line 197
    :cond_1
    iget v5, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    .line 198
    iget v5, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v5, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 199
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->listen()V

    .line 201
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    iput v5, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:I

    .line 203
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 206
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "intentRadioFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mRadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    const-string v5, "sim_cellular_data"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 218
    .local v3, "simPref":Landroid/preference/Preference;
    iget-boolean v5, p0, Lcom/android/settings/sim/SimSettings;->mHasCDMACard:Z

    if-eqz v5, :cond_2

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    :cond_2
    return-void

    .line 189
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "intentRadioFilter":Landroid/content/IntentFilter;
    .end local v3    # "simPref":Landroid/preference/Preference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 226
    const-string v3, "sim_enablers"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 229
    .local v2, "simEnablers":Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_0

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 231
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 233
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->destroy()V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 237
    const-string v3, "SimSettings"

    const-string v4, "on onDestroy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mRadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 241
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 581
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 582
    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    .line 583
    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 586
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 587
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 669
    instance-of v0, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 670
    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    .line 677
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 671
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v0, p2, Lcom/android/settings/sim/MultiSimEnablerPreference;

    if-eqz v0, :cond_2

    .line 672
    check-cast p2, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->createEditDialog()V

    goto :goto_0

    .line 673
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    .line 596
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onResme] mSubInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initLTEPreference()V

    .line 599
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 600
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1035
    iput p2, p0, Lcom/android/settings/sim/SimSettings;->mChangeStartPos:I

    .line 1037
    iput p4, p0, Lcom/android/settings/sim/SimSettings;->mChangeCount:I

    .line 1038
    return-void
.end method

.method public setPrefNetwork(IILandroid/os/Message;)V
    .locals 3
    .param p1, "sub"    # I
    .param p2, "network"    # I
    .param p3, "callback"    # Landroid/os/Message;

    .prologue
    .line 1209
    if-eqz p3, :cond_0

    .line 1210
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1212
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1213
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1214
    const-string v1, "network"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    const-string v1, "callback"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1216
    const-string v1, "set_pref_network"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/sim/SimSettings;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1217
    return-void
.end method
