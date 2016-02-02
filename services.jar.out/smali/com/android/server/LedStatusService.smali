.class public Lcom/android/server/LedStatusService;
.super Landroid/app/Service;
.source "LedStatusService.java"


# static fields
.field private static final CALLS_CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final MISSED_CALLS_SELECTION:Ljava/lang/String; = "type = 3 AND new = 1"

.field private static final MMSSMS_CONTENT_URI:Landroid/net/Uri;

.field private static final MMS_CONTENT_URI:Landroid/net/Uri;

.field private static MSG_BREATHLIGHT_BRIGHTNESS_CHANGE:Ljava/lang/String; = null

.field private static MSG_BREATHLIGHT_HOME_DOWN:Ljava/lang/String; = null

.field private static MSG_BREATHLIGHT_HOME_UP:Ljava/lang/String; = null

.field private static MSG_BREATHLIGHT_SWITCH_CHANGE:Ljava/lang/String; = null

.field private static MSG_LED_MISSED_CALL:Ljava/lang/String; = null

.field private static MSG_LED_THIRD_MSG:Ljava/lang/String; = null

.field private static MSG_LED_UNREAD_SMS:Ljava/lang/String; = null

.field private static final SMS_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LedStatusService"

.field private static changerBrightness:I

.field private static last_ledcolor:Ljava/lang/String;

.field private static mBatteryLevel:I

.field private static mBrightness:I

.field private static mHomedown:Z

.field private static mIsMaulChangeBrightness:Z

.field private static mIsMissedCall:Z

.field private static mIsUnreadSMS:Z

.field private static mPlugged:Z

.field private static mScreenOff:Z


# instance fields
.field private final BREATH_BLUE_COLOR:Ljava/lang/String;

.field private final BREATH_RED_COLOR:Ljava/lang/String;

.field private final GREEN_COLOR:Ljava/lang/String;

.field private final OFF_COLOR:Ljava/lang/String;

.field private final RED_COLOR:Ljava/lang/String;

.field private chargingBreath:I

.field private eventMissingBreath:I

.field private lowBatteryBreath:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private missedCallContentObserver:Landroid/database/ContentObserver;

.field private newMmsContentObserver:Landroid/database/ContentObserver;

.field private status:I

.field private thirdMsgBreath:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/android/server/LedStatusService;->last_ledcolor:Ljava/lang/String;

    .line 55
    const-string v0, "content://mms-sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/LedStatusService;->MMSSMS_CONTENT_URI:Landroid/net/Uri;

    .line 56
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/LedStatusService;->CALLS_CONTENT_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/LedStatusService;->MMS_CONTENT_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/LedStatusService;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 61
    const/16 v0, 0x64

    sput v0, Lcom/android/server/LedStatusService;->mBatteryLevel:I

    .line 62
    sput-boolean v1, Lcom/android/server/LedStatusService;->mPlugged:Z

    .line 63
    sput-boolean v1, Lcom/android/server/LedStatusService;->mScreenOff:Z

    .line 64
    sput-boolean v1, Lcom/android/server/LedStatusService;->mIsMissedCall:Z

    .line 65
    sput-boolean v1, Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z

    .line 66
    sput-boolean v1, Lcom/android/server/LedStatusService;->mHomedown:Z

    .line 68
    sput v1, Lcom/android/server/LedStatusService;->mBrightness:I

    .line 69
    const/16 v0, 0x55

    sput v0, Lcom/android/server/LedStatusService;->changerBrightness:I

    .line 70
    sput-boolean v1, Lcom/android/server/LedStatusService;->mIsMaulChangeBrightness:Z

    .line 71
    const-string v0, "com.android.breathlight_brightness_changed"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_BRIGHTNESS_CHANGE:Ljava/lang/String;

    .line 72
    const-string v0, "com.android.breathlight_switch_changed"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_SWITCH_CHANGE:Ljava/lang/String;

    .line 73
    const-string v0, "com.android.LED_UNREAD_SMS"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_LED_UNREAD_SMS:Ljava/lang/String;

    .line 74
    const-string v0, "com.android.breathlight_home_down"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_DOWN:Ljava/lang/String;

    .line 75
    const-string v0, "com.android.breathlight_home_up"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_UP:Ljava/lang/String;

    .line 76
    const-string v0, "com.android.LED_MISSED_CALL"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_LED_MISSED_CALL:Ljava/lang/String;

    .line 77
    const-string v0, "com.android.LED_THIRD_MSG"

    sput-object v0, Lcom/android/server/LedStatusService;->MSG_LED_THIRD_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    const-string v0, "Red"

    iput-object v0, p0, Lcom/android/server/LedStatusService;->RED_COLOR:Ljava/lang/String;

    .line 50
    const-string v0, "Green"

    iput-object v0, p0, Lcom/android/server/LedStatusService;->GREEN_COLOR:Ljava/lang/String;

    .line 51
    const-string v0, "BreathRed"

    iput-object v0, p0, Lcom/android/server/LedStatusService;->BREATH_RED_COLOR:Ljava/lang/String;

    .line 52
    const-string v0, "BreathBlue"

    iput-object v0, p0, Lcom/android/server/LedStatusService;->BREATH_BLUE_COLOR:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/LedStatusService;->OFF_COLOR:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/server/LedStatusService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LedStatusService$1;-><init>(Lcom/android/server/LedStatusService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LedStatusService;->newMmsContentObserver:Landroid/database/ContentObserver;

    .line 153
    new-instance v0, Lcom/android/server/LedStatusService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LedStatusService$2;-><init>(Lcom/android/server/LedStatusService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LedStatusService;->missedCallContentObserver:Landroid/database/ContentObserver;

    .line 202
    new-instance v0, Lcom/android/server/LedStatusService$3;

    invoke-direct {v0, p0}, Lcom/android/server/LedStatusService$3;-><init>(Lcom/android/server/LedStatusService;)V

    iput-object v0, p0, Lcom/android/server/LedStatusService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LedStatusService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedStatusService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_LED_UNREAD_SMS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LedStatusService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedStatusService;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/LedStatusService;->status:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/LedStatusService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedStatusService;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/LedStatusService;->status:I

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/server/LedStatusService;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/android/server/LedStatusService;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/LedStatusService;->mIsMissedCall:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/LedStatusService;->mIsMissedCall:Z

    return p0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_LED_THIRD_MSG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_SWITCH_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LedStatusService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedStatusService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->updateBrightLightSwitchStatus()V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_BRIGHTNESS_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/android/server/LedStatusService;->changerBrightness:I

    return p0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/LedStatusService;->mIsMaulChangeBrightness:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/LedStatusService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedStatusService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->readMissCall()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/server/LedStatusService;->mBrightness:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_LED_MISSED_CALL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/LedStatusService;->mPlugged:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/LedStatusService;->mPlugged:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/LedStatusService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedStatusService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->updateLedStatus()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/LedStatusService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/LedStatusService;->mScreenOff:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_DOWN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/server/LedStatusService;->mHomedown:Z

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_UP:Ljava/lang/String;

    return-object v0
.end method

.method private getUnreadMessageCount()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    .local v8, "unreadSms":I
    const/4 v7, 0x0

    .line 126
    .local v7, "unreadMms":I
    const/4 v6, 0x0

    .line 127
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/LedStatusService;->SMS_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "type = 1 AND read = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    if-eqz v6, :cond_0

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnreadMessageCount unreadSms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    sget-object v1, Lcom/android/server/LedStatusService;->MMS_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "msg_box = 1 AND read = 0 AND ( m_type = 130 OR m_type = 132 ) AND thread_id > 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 146
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnreadMessageCount unreadMms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    add-int v1, v8, v7

    return v1
.end method

.method private readMissCall()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    const/4 v7, 0x0

    .line 167
    .local v7, "missedCalls":I
    const/4 v6, 0x0

    .line 168
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/LedStatusService;->CALLS_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "type = 3 AND new = 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_0

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    const-string v1, "LedStatusService"

    const-string v2, "getMissedCallCount missedCalls=%d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return v7
.end method

.method private registerMissedCallObserver()V
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->unregisterMissedCallObserver()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/LedStatusService;->CALLS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/LedStatusService;->missedCallContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->unregisterObserver()V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/LedStatusService;->MMS_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LedStatusService;->newMmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/LedStatusService;->SMS_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LedStatusService;->newMmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/LedStatusService;->MMSSMS_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LedStatusService;->newMmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method private setBreathLedsStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ledColor"    # Ljava/lang/String;
    .param p2, "brightness"    # I

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 394
    .local v0, "breathLeadService":Landroid/os/IBreathLedsService;
    const-string v2, "breath_leds"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IBreathLedsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBreathLedsService;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 402
    :try_start_0
    const-string v2, "LedStatusService"

    const-string v3, "breathLeadService != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v2, "LedStatusService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "breathLeadService ledColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget v2, Lcom/android/server/LedStatusService;->mBrightness:I

    invoke-interface {v0, v2}, Landroid/os/IBreathLedsService;->initLedsBrightness(I)V

    .line 406
    invoke-interface {v0}, Landroid/os/IBreathLedsService;->turnOffLeds()V

    .line 407
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    invoke-interface {v0, p1}, Landroid/os/IBreathLedsService;->turnOnLeds(Ljava/lang/String;)V

    .line 410
    const-string v2, "LedStatusService"

    const-string v3, "turnOnLeds="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    :goto_1
    const-string v2, "LedStatusService"

    const-string v3, "setBreathLedsStatus end "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LedStatusService"

    const-string v3, "Exit LedStatusService::screenOffHandle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/os/IBreathLedsService;->turnOffLeds()V

    .line 413
    const-string v2, "LedStatusService"

    const-string v3, "turnOffLeds="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized unregisterMissedCallObserver()V
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LedStatusService;->missedCallContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LedStatusService;->missedCallContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "LedStatusService"

    const-string v2, "unregisterMissedCallObserver fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized unregisterObserver()V
    .locals 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LedStatusService;->newMmsContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LedStatusService;->newMmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "LedStatusService"

    const-string v2, "unregisterObserver fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateBrightLightSwitchStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "breath_light_for_charging_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LedStatusService;->chargingBreath:I

    .line 519
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "breath_light_for_low_battery_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LedStatusService;->lowBatteryBreath:I

    .line 520
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "breath_light_for_msg_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LedStatusService;->eventMissingBreath:I

    .line 521
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "breath_light_for_third_msg_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/LedStatusService;->thirdMsgBreath:I

    .line 523
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->updateLedStatus()V

    .line 525
    return-void
.end method

.method private updateLedStatus()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    .line 322
    const-string v1, "LedStatusService"

    const-string v2, "Enter LedStatusService::updateLedStatus."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v0, ""

    .line 329
    .local v0, "szLedColor":Ljava/lang/String;
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlugged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/LedStatusService;->mPlugged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/LedStatusService;->mScreenOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBatteryLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/LedStatusService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsMissedCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/LedStatusService;->mIsMissedCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsUnreadSMS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v1, p0, Lcom/android/server/LedStatusService;->chargingBreath:I

    if-ne v1, v4, :cond_5

    .line 340
    sget-boolean v1, Lcom/android/server/LedStatusService;->mPlugged:Z

    if-nez v1, :cond_4

    .line 342
    sget-boolean v1, Lcom/android/server/LedStatusService;->mScreenOff:Z

    if-eqz v1, :cond_2

    .line 344
    sget-boolean v1, Lcom/android/server/LedStatusService;->mIsMissedCall:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/server/LedStatusService;->eventMissingBreath:I

    if-ne v1, v4, :cond_1

    .line 348
    const-string v0, "BreathBlue"

    .line 379
    :goto_0
    sget v1, Lcom/android/server/LedStatusService;->mBrightness:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/LedStatusService;->setBreathLedsStatus(Ljava/lang/String;I)V

    .line 380
    const-string v1, "LedStatusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "szLedColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v1, "LedStatusService"

    const-string v2, "Exit LedStatusService::updateLedStatus."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 353
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 356
    :cond_2
    sget-boolean v1, Lcom/android/server/LedStatusService;->mHomedown:Z

    if-eqz v1, :cond_3

    .line 358
    const-string v0, "Green"

    .line 359
    sput-boolean v4, Lcom/android/server/LedStatusService;->mIsMaulChangeBrightness:Z

    .line 360
    sput v5, Lcom/android/server/LedStatusService;->mBrightness:I

    goto :goto_0

    .line 364
    :cond_3
    const-string v0, "Green"

    .line 365
    sput-boolean v4, Lcom/android/server/LedStatusService;->mIsMaulChangeBrightness:Z

    .line 366
    sget v1, Lcom/android/server/LedStatusService;->changerBrightness:I

    sput v1, Lcom/android/server/LedStatusService;->mBrightness:I

    goto :goto_0

    .line 371
    :cond_4
    const-string v0, "Green"

    .line 372
    sput v5, Lcom/android/server/LedStatusService;->mBrightness:I

    goto :goto_0

    .line 376
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 454
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 456
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 458
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    sget-object v1, Lcom/android/server/LedStatusService;->MSG_LED_UNREAD_SMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    sget-object v1, Lcom/android/server/LedStatusService;->MSG_LED_MISSED_CALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_BRIGHTNESS_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    sget-object v1, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_SWITCH_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    sget-object v1, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_DOWN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    sget-object v1, Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_UP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/android/server/LedStatusService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/LedStatusService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->registerObserver()V

    .line 474
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->registerMissedCallObserver()V

    .line 476
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->updateBrightLightSwitchStatus()V

    .line 477
    invoke-virtual {p0}, Lcom/android/server/LedStatusService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "breath_light_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/LedStatusService;->mBrightness:I

    .line 479
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 511
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->unregisterMissedCallObserver()V

    .line 512
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->unregisterObserver()V

    .line 513
    iget-object v0, p0, Lcom/android/server/LedStatusService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/LedStatusService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 488
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 490
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->readMissCall()I

    move-result v2

    if-lez v2, :cond_0

    .line 492
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/LedStatusService;->MSG_LED_MISSED_CALL:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, "mIntentLed":Landroid/content/Intent;
    const-string v2, "MISSED"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/server/LedStatusService;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    .end local v0    # "mIntentLed":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LedStatusService;->getUnreadMessageCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 499
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/LedStatusService;->MSG_LED_UNREAD_SMS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "mIntentSmsLed":Landroid/content/Intent;
    const-string v2, "UNREAD"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v1}, Lcom/android/server/LedStatusService;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    .end local v1    # "mIntentSmsLed":Landroid/content/Intent;
    :cond_1
    return-void
.end method
