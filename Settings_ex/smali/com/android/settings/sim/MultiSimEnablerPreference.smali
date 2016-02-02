.class public Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
.super Landroid/preference/Preference;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final SIM_ID:[I

.field private static mSyncLock:Ljava/lang/Object;

.field private static sAlertDialog:Landroid/app/AlertDialog;

.field private static sProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCmdInProgress:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mParentHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequest:Z

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSlotId:I

.field private final mStateChanegReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/CompoundButton;

.field private mSwitchVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->SIM_ID:[I

    .line 109
    sput-object v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 110
    sput-object v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSyncLock:Ljava/lang/Object;

    return-void

    .line 96
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "slotId"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    const v1, 0x101008f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contructor..Enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 135
    iput p4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    .line 136
    iput-object p2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 137
    iput-object p3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const-string v0, "MultiSimEnablerPreference"

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    .line 105
    iput-boolean v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    .line 106
    iput v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitchVisibility:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 440
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$2;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 460
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mStateChanegReceiver:Landroid/content/BroadcastReceiver;

    .line 499
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$5;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setWidgetLayoutResource(I)V

    .line 128
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setSwitchVisibility(I)V

    .line 129
    return-void

    .line 126
    :cond_0
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1100()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->processSetUiccDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isCurrentSubValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->updateSummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureSubscription()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 301
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const-string v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 304
    const v2, 0x7f0909ac

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    .line 331
    :goto_0
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 308
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 309
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 312
    const v2, 0x7f0909ad

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v1    # "subId":[I
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mRequest:Z

    if-nez v2, :cond_4

    .line 318
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getActivatedSubInfoCount(Landroid/content/Context;)I

    move-result v2

    if-le v2, v6, :cond_3

    .line 319
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 322
    :cond_3
    const-string v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 323
    const v2, 0x7f0909ae

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 327
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V

    goto :goto_0
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 424
    const/4 p1, 0x0

    .line 426
    :cond_0
    return-void
.end method

.method public static getActivatedSubInfoCount(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "activeSubInfoCount":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 283
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 284
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 285
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method private getNetOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "netOperatorName":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "netOperatorName2":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b007b

    const v5, 0x7f0b007c

    invoke-static {v3, v2, v4, v5}, Landroid/util/NativeTextHelper;->getInternalLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 234
    .end local v2    # "netOperatorName2":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "netOperatorName2":Ljava/lang/String;
    goto :goto_0
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid()Z
    .locals 6

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "isSubValid":Z
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_2

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 194
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 195
    iput-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 199
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 201
    const/4 v1, 0x1

    .line 205
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method private processSetUiccDone()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 351
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 352
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    .line 354
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->unregisterReceiver()V

    .line 355
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 141
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    return-void
.end method

.method private sendSubConfigurationRequest()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    .line 339
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showProgressDialog()V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setEnabled(Z)V

    .line 341
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mRequest:Z

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    goto :goto_1
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    iput-boolean p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    .line 223
    :cond_1
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 11
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const v10, 0x104000a

    const/4 v9, 0x0

    .line 358
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_0

    const-string v3, "SUB"

    .line 360
    .local v3, "title":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 361
    sget-object v4, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 362
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 365
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 399
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 400
    sget-object v4, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 401
    sget-object v4, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 402
    return-void

    .line 358
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 368
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "title":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 369
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 370
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0909ab

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->SIM_ID:[I

    iget v8, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    rsub-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "message":Ljava/lang/String;
    :goto_2
    const v4, 0x7f0909aa

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 379
    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 380
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    const v4, 0x1040009

    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 373
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0909a9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_2

    .line 377
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0909a8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_3

    .line 385
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 386
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 390
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0909b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "msg":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 393
    const/4 v4, 0x0

    invoke-virtual {v0, v10, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 390
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0909b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    const-string v1, "SUB"

    .line 407
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mRequest:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0909af

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 410
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 411
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 412
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 414
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 415
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 416
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 418
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7530

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 419
    return-void

    .line 405
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 407
    .restart local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0909b0

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 245
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 247
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v2, v6

    .line 248
    .local v2, "isActivated":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSummary: subId "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " isActivated = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " slot id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v5, "zh"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 254
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v5, :cond_2

    const-string v1, "SIM"

    .line 259
    .local v1, "displayName":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_5

    .line 260
    move-object v4, v1

    .line 261
    .local v4, "summary":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_0
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setChecked(Z)V

    .line 271
    return-void

    .end local v0    # "defultLanguage":Ljava/lang/String;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "isActivated":Z
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    move v2, v7

    .line 247
    goto :goto_0

    .line 254
    .restart local v0    # "defultLanguage":Ljava/lang/String;
    .restart local v2    # "isActivated":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 256
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v5, :cond_4

    const-string v1, "SIM"

    .restart local v1    # "displayName":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v1    # "displayName":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 265
    .restart local v1    # "displayName":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f0909a3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->hasCard()Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0909a5

    :goto_4
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "summary":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0909a6

    goto :goto_4
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->unregisterReceiver()V

    .line 430
    sget-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 431
    sget-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 432
    return-void
.end method

.method public createEditDialog()V
    .locals 15

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 543
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040082

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 547
    .local v4, "dialogLayout":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 549
    const v11, 0x7f0f0131

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 551
    .local v7, "nameText":Landroid/widget/EditText;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "defultLanguage":Ljava/lang/String;
    const-string v11, "zh"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 553
    iget-object v11, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    const v11, 0x7f0f002a

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 562
    .local v8, "numberView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    const v11, 0x7f0f0132

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 569
    .local v2, "carrierView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getNetOperatorName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v11, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 574
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 575
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const v11, 0x7f0f0133

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 576
    .local v5, "displayNumbers":Landroid/widget/Spinner;
    const-string v11, "display_numbers_type"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 577
    new-instance v11, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$6;

    invoke-direct {v11, p0, v6}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$6;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v5, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 590
    iget-object v11, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 591
    .local v10, "res":Landroid/content/res/Resources;
    const v11, 0x7f090a5c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    const v11, 0x7f0901d3

    new-instance v12, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;

    invoke-direct {v12, p0, v4, v6}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Landroid/view/View;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    const v11, 0x7f0901d0

    new-instance v12, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$8;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$8;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 621
    return-void

    .line 555
    .end local v2    # "carrierView":Landroid/widget/TextView;
    .end local v5    # "displayNumbers":Landroid/widget/Spinner;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "numberView":Landroid/widget/TextView;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v11, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 562
    .restart local v8    # "numberView":Landroid/widget/TextView;
    :cond_1
    iget-object v11, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 569
    .restart local v2    # "carrierView":Landroid/widget/TextView;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getNetOperatorName()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mStateChanegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 538
    :goto_1
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 536
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 633
    if-eqz p1, :cond_1

    const-string v0, "Mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 640
    .end local p1    # "operatorName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 635
    .restart local p1    # "operatorName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Unicom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 637
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, "Telecom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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
    .line 645
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

    .line 646
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "mobileOperator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "unicomOperator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "telecomOperator":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 656
    .end local p1    # "operatorName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 651
    .restart local p1    # "operatorName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 653
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 654
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 157
    const v1, 0x7f0f0062

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    .line 158
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mStateChanegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 292
    iput-boolean p2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mRequest:Z

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->configureSubscription()V

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSwitchVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitchVisibility:I

    .line 210
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 173
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isCurrentSubValid()Z

    move-result v0

    .line 176
    .local v0, "isSubValid":Z
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setEnabled(Z)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update() isSubValid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 179
    const v2, 0x7f090a58

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->updateSummary()V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    const v2, 0x7f090a59

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
