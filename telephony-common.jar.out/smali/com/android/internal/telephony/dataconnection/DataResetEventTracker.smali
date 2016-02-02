.class public Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;
.super Ljava/lang/Object;
.source "DataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private mPreviousRAT:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p3, "listener"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 74
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mContext:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 76
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mListener:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I

    .line 79
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataResetEventTracker constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mContext:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mListener:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->notifyResetEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;
    .param p1, "x1"    # Landroid/telephony/gsm/GsmCellLocation;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[DRET]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method private notifyResetEvent()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->stopResetEventTracker()V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mListener:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mListener:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$ResetEventListener;->onResetEvent()V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 177
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->stopResetEventTracker()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 180
    return-void
.end method

.method public startResetEventTracker()V
    .locals 6

    .prologue
    .line 115
    const-string v2, "startResetEventTracker"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->stopResetEventTracker()V

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mHandler:Landroid/os/Handler;

    const v4, 0x42029

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 121
    .local v0, "currentCellLocation":Landroid/telephony/CellLocation;
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataConnection mPreviousLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 127
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_1

    .line 128
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 154
    return-void
.end method

.method public stopResetEventTracker()V
    .locals 4

    .prologue
    .line 160
    const-string v1, "stopResetTimer"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
