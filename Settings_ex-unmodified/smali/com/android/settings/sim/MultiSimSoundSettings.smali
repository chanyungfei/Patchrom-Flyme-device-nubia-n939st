.class public Lcom/android/settings/sim/MultiSimSoundSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSoundSettings.java"


# static fields
.field private static final mRingtones:[I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtones:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 60
    const-string v0, "MultiSimSoundSettings"

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->LOG_TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/android/settings/sim/MultiSimSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimSoundSettings$1;-><init>(Lcom/android/settings/sim/MultiSimSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/android/settings/sim/MultiSimSoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimSoundSettings$2;-><init>(Lcom/android/settings/sim/MultiSimSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/android/settings/sim/MultiSimSoundSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/MultiSimSoundSettings$3;-><init>(Lcom/android/settings/sim/MultiSimSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/MultiSimSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimSoundSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sim/MultiSimSoundSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimSoundSettings;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mSubscription:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/MultiSimSoundSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimSoundSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/MultiSimSoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/MultiSimSoundSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isSubActivated()Z
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/MultiSimSoundSettings;->addPreferencesFromResource(I)V

    .line 186
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/MultiSimSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/sim/MultiSimSoundSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mSubscription:I

    .line 189
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;

    iget v2, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/sim/MultiSimSoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/MultiSimSoundSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;

    invoke-direct {p0}, Lcom/android/settings/sim/MultiSimSoundSettings;->isSubActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setEnabled(Z)V

    .line 200
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 201
    return-void
.end method
