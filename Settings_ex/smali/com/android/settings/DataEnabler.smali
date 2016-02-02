.class public Lcom/android/settings_ex/DataEnabler;
.super Ljava/lang/Object;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataEnabler$DataObserver;,
        Lcom/android/settings_ex/DataEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static mHandler:Lcom/android/settings_ex/DataEnabler$MyHandler;


# instance fields
.field private DataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDataObserver:Lcom/android/settings_ex/DataEnabler$DataObserver;

.field private mListening:Z

.field private mSwitch:Landroid/widget/Switch;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/DataEnabler;->mListening:Z

    .line 104
    new-instance v0, Lcom/android/settings_ex/DataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataEnabler$1;-><init>(Lcom/android/settings_ex/DataEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataEnabler;->DataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/DataEnabler;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    new-instance v0, Lcom/android/settings_ex/DataEnabler$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataEnabler$MyHandler;-><init>(Lcom/android/settings_ex/DataEnabler;Lcom/android/settings_ex/DataEnabler$1;)V

    sput-object v0, Lcom/android/settings_ex/DataEnabler;->mHandler:Lcom/android/settings_ex/DataEnabler$MyHandler;

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 46
    new-instance v0, Lcom/android/settings_ex/DataEnabler$DataObserver;

    sget-object v1, Lcom/android/settings_ex/DataEnabler;->mHandler:Lcom/android/settings_ex/DataEnabler$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataEnabler$DataObserver;-><init>(Lcom/android/settings_ex/DataEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mDataObserver:Lcom/android/settings_ex/DataEnabler$DataObserver;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataEnabler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataEnabler;->setDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$300()Lcom/android/settings_ex/DataEnabler$MyHandler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings_ex/DataEnabler;->mHandler:Lcom/android/settings_ex/DataEnabler$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataEnabler;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/DataEnabler;->setSwitchStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataEnabler;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/DataEnabler;->refreshStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataEnabler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private refreshStatus()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/settings_ex/DataEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataEnabler$2;-><init>(Lcom/android/settings_ex/DataEnabler;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 141
    return-void
.end method

.method private setDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/DataEnabler;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataEnabler;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/DataEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/settings_ex/DataEnabler;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings_ex/DataEnabler;->mListening:Z

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mDataObserver:Lcom/android/settings_ex/DataEnabler$DataObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataEnabler$DataObserver;->startObserving()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mDataObserver:Lcom/android/settings_ex/DataEnabler$DataObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataEnabler$DataObserver;->endObserving()V

    goto :goto_0
.end method

.method private setSwitchStatus()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "isDataOn":Z
    iget-object v1, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    iget-object v2, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataEnabler;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/DataEnabler;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 84
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataEnabler;->setListening(Z)V

    .line 62
    return-void
.end method

.method public hasIccCard()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    iget-object v5, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 95
    .local v1, "prfDataSlotId":I
    iget-object v5, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 96
    .local v2, "simState":I
    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    move v0, v3

    .line 98
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    .end local v0    # "active":Z
    .end local v1    # "prfDataSlotId":I
    .end local v2    # "simState":I
    :goto_1
    return v3

    .restart local v1    # "prfDataSlotId":I
    .restart local v2    # "simState":I
    :cond_0
    move v0, v4

    .line 96
    goto :goto_0

    .restart local v0    # "active":Z
    :cond_1
    move v3, v4

    .line 98
    goto :goto_1

    .line 100
    .end local v0    # "active":Z
    .end local v1    # "prfDataSlotId":I
    .end local v2    # "simState":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    goto :goto_1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/DataEnabler;->setSwitchStatus()V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/DataEnabler;->DataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataEnabler;->setListening(Z)V

    .line 54
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/DataEnabler;->setSwitchStatus()V

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/DataEnabler;->DataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
