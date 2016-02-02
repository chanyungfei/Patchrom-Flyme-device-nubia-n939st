.class public Lcom/android/settings_ex/deviceinfo/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field public static MULTI_SIM_NAME:Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static final RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:[I

.field private mDataStateSummary:[Ljava/lang/String;

.field private mEsnNumberSummary:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIccIdSummary:[Ljava/lang/String;

.field private mImeiSVSummary:[Ljava/lang/String;

.field private mImeiSummary:[Ljava/lang/String;

.field private mLatestAreaInfoSummary:[Ljava/lang/String;

.field private mMeidNumberSummary:[Ljava/lang/String;

.field private mMinNumberSummary:[Ljava/lang/String;

.field private mNetworkSummary:[Ljava/lang/String;

.field private mNumPhones:I

.field private mNumberSummary:[Ljava/lang/String;

.field private mOperatorNameSummary:[Ljava/lang/String;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPrlVersionSummary:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingStateSummary:[Ljava/lang/String;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mServiceStateSummary:[Ljava/lang/String;

.field private mShowLatestAreaInfo:Z

.field private mSigStrengthSummary:[Ljava/lang/String;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSim:[Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v2

    const-string v1, "network_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 91
    const-string v0, "perferred_name_sub"

    sput-object v0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->MULTI_SIM_NAME:Ljava/lang/String;

    .line 132
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_state"

    aput-object v1, v0, v2

    const-string v1, "operator_name"

    aput-object v1, v0, v3

    const-string v1, "roaming_state"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "baseband_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mShowLatestAreaInfo:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataState:[I

    .line 257
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 113
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/MSimStatus;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateAreaInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/MSimStatus;)[Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/MSimStatus;)[Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateNetworkType(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/MSimStatus;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataState:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateDataState(I)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 784
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 785
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 786
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 788
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 224
    invoke-static {p0, p1}, Lcom/android/settings_ex/MultiSimSettingTab;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 228
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a58

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 518
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 519
    .local v1, "subId":I
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimStatus$3;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus$3;-><init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;II)V

    .line 539
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSimSummary(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p2, :cond_0

    const-string v0, "unknown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSim:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initMSimSummary([Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 185
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSim:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method private isDataServiceEnable(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 703
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 705
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    const/4 v1, 0x1

    .line 710
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 776
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 777
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 548
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 551
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 751
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 752
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 754
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 762
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 759
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f090494

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 4

    .prologue
    .line 740
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 741
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v3, "wifi_ip_address"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 742
    .local v2, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "ipAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    const v3, 0x7f090494

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private varargs setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "msgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    if-ne v1, v3, :cond_1

    .line 201
    aget-object v1, p2, v2

    if-nez v1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 204
    :cond_0
    aget-object v1, p2, v2

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    aget-object v1, p2, v2

    if-nez v1, :cond_2

    aget-object v1, p2, v3

    if-nez v1, :cond_2

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "summery":Ljava/lang/StringBuffer;
    aget-object v1, p2, v2

    if-eqz v1, :cond_3

    .line 211
    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_3
    aget-object v1, p2, v3

    if-eqz v1, :cond_5

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 214
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    :cond_4
    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 729
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 730
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 732
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 734
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 735
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 737
    return-void

    .line 734
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f090494

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 714
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 715
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 717
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 719
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 720
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 727
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 723
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f090494

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAreaInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "areaInfo"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 628
    const-string v0, "MSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAreaInfo areaInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sub="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mLatestAreaInfoSummary:[Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 631
    const-string v0, "latest_area_info"

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mLatestAreaInfoSummary:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 633
    :cond_0
    return-void
.end method

.method private updateDataState(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const v4, 0x7f0900fc

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "display":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->isDataServiceEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataState:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 696
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataStateSummary:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 697
    const-string v1, "data_state"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataStateSummary:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 698
    return-void

    .line 680
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    goto :goto_0

    .line 683
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    goto :goto_0

    .line 689
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateMSimSummery(I)V
    .locals 12
    .param p1, "indexOfCDMA"    # I

    .prologue
    const/4 v11, 0x0

    .line 380
    const-string v8, "MSimStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cdma index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 383
    sget-object v0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_6

    aget-object v5, v0, v4

    .line 384
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v3, v8, :cond_5

    .line 389
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v3

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, "rawNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 391
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 392
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 396
    if-ne v3, p1, :cond_4

    .line 397
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPrlVersionSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 398
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mEsnNumberSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 399
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMeidNumberSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 400
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMinNumberSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 403
    const-string v8, "min_number"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const v9, 0x7f090485

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 406
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSVSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 408
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v3

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 410
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mIccIdSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 419
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 387
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 416
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mIccIdSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    goto :goto_2

    .line 422
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPrlVersionSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 423
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mEsnNumberSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 424
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMeidNumberSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 425
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMinNumberSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 426
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mIccIdSummary:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 427
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 428
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSVSummary:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    goto :goto_3

    .line 432
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v7    # "rawNumber":Ljava/lang/String;
    :cond_5
    const-string v8, "prl_version"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPrlVersionSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 433
    const-string v8, "esn_number"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mEsnNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 434
    const-string v8, "meid_number"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMeidNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 435
    const-string v8, "min_number"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMinNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    const-string v8, "icc_id"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mIccIdSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 437
    const-string v8, "imei"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 438
    const-string v8, "imei_sv"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSVSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 439
    const-string v8, "number"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 440
    const-string v8, "latest_area_info"

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mLatestAreaInfoSummary:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 447
    const-string v8, "ro.build.display.software.id"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "basebandVersionSummery":Ljava/lang/String;
    const-string v8, "baseband_version"

    invoke-direct {p0, v8, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v1    # "basebandVersionSummery":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method private updateNetworkType(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 665
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 666
    .local v1, "subId":[I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 667
    .local v0, "netwokType":I
    if-eqz v0, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNetworkSummary:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 671
    :cond_0
    const-string v2, "network_type"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNetworkSummary:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private updateServiceState(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 578
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "display":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 580
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 582
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 595
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceStateSummary:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 596
    const-string v3, "service_state"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceStateSummary:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 598
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 599
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRoamingStateSummary:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 605
    :goto_1
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRoamingStateSummary:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    const/4 v1, 0x0

    .line 612
    .local v1, "operatorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_0

    .line 615
    const v3, 0x7f0b007b

    const v4, 0x7f0b007c

    invoke-static {p0, v1, v3, v4}, Landroid/util/NativeTextHelper;->getInternalLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 621
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mOperatorNameSummary:[Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 622
    const-string v3, "operator_name"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mOperatorNameSummary:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 624
    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v2    # "state":I
    :cond_1
    return-void

    .line 584
    .restart local v2    # "state":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRoamingStateSummary:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    goto :goto_1

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    new-instance v9, Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;-><init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;)V

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 275
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 277
    const v9, 0x7f06001c

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->addPreferencesFromResource(I)V

    .line 279
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    .line 280
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Landroid/telephony/PhoneStateListener;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 281
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mEsnNumberSummary:[Ljava/lang/String;

    .line 282
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMeidNumberSummary:[Ljava/lang/String;

    .line 283
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMinNumberSummary:[Ljava/lang/String;

    .line 284
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPrlVersionSummary:[Ljava/lang/String;

    .line 285
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSVSummary:[Ljava/lang/String;

    .line 286
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSummary:[Ljava/lang/String;

    .line 287
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mIccIdSummary:[Ljava/lang/String;

    .line 288
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumberSummary:[Ljava/lang/String;

    .line 289
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceStateSummary:[Ljava/lang/String;

    .line 290
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRoamingStateSummary:[Ljava/lang/String;

    .line 291
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mOperatorNameSummary:[Ljava/lang/String;

    .line 292
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSigStrengthSummary:[Ljava/lang/String;

    .line 293
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataStateSummary:[Ljava/lang/String;

    .line 294
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mLatestAreaInfoSummary:[Ljava/lang/String;

    .line 296
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Landroid/telephony/SignalStrength;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 297
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Landroid/telephony/ServiceState;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    .line 299
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Lcom/android/internal/telephony/Phone;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 301
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSim:[Ljava/lang/String;

    .line 303
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNetworkSummary:[Ljava/lang/String;

    .line 305
    const/4 v3, -0x1

    .line 307
    .local v3, "indexOfCDMA":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v1, v9, :cond_2

    .line 308
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSim:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 309
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    aput-object v10, v9, v1

    .line 310
    const-string v9, "CDMA"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v10, v1

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 311
    move v3, v1

    .line 318
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v10

    aput-object v10, v9, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const-string v9, "br"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 315
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mShowLatestAreaInfo:Z

    goto :goto_1

    .line 320
    :cond_2
    iget-boolean v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mShowLatestAreaInfo:Z

    if-nez v9, :cond_3

    .line 321
    const-string v9, "latest_area_info"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 324
    :cond_3
    const-string v9, "battery_level"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 325
    const-string v9, "battery_status"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 327
    const-string v9, "button_aboutphone_msim_status"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 328
    .local v7, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_4

    .line 329
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 330
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    const-string v10, "com.android.settings"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.settings.deviceinfo.MSimSubscriptionStatus"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 337
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0900dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 339
    const-string v9, "up_time"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 342
    sget-object v0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v6, :cond_5

    aget-object v5, v0, v2

    .line 343
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 347
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setWimaxStatus()V

    .line 348
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setWifiStatus()V

    .line 349
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setBtStatus()V

    .line 350
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setIpAddressStatus()V

    .line 352
    sget-object v8, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 353
    .local v8, "serial":Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 354
    const-string v9, "serial_number"

    invoke-direct {p0, v9, v8}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_3
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mEsnNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 360
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMeidNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 361
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mMinNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 362
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPrlVersionSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 363
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSVSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 364
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mImeiSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 365
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mIccIdSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 366
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumberSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 367
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceStateSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 368
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mRoamingStateSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 369
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mOperatorNameSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 370
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSigStrengthSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 371
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mDataStateSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 372
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNetworkSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 373
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mLatestAreaInfoSummary:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->initMSimSummary([Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateMSimSummery(I)V

    .line 376
    return-void

    .line 356
    :cond_6
    const-string v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 485
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 493
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 495
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 455
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 457
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    const/16 v4, 0x141

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateSignalStrength(I)V

    .line 474
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateServiceState(I)V

    .line 475
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateDataState(I)V

    .line 476
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateNetworkType(I)V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 480
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    return-void
.end method

.method updateSignalStrength(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, -0x1

    .line 638
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    if-eqz v4, :cond_1

    .line 639
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 640
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 642
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 644
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSigStrengthSummary:[Ljava/lang/String;

    const-string v5, "0"

    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 659
    :goto_0
    const-string v4, "signal_strength"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSigStrengthSummary:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->setMSimSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 661
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v3    # "state":I
    :cond_1
    return-void

    .line 646
    .restart local v0    # "r":Landroid/content/res/Resources;
    .restart local v3    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 647
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_3

    const/4 v2, 0x0

    .line 649
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 650
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_4

    .line 651
    const/4 v1, 0x0

    .line 653
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mSigStrengthSummary:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090103

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090104

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getSimSummary(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 766
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 768
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 769
    const-wide/16 v2, 0x1

    .line 772
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 773
    return-void
.end method
