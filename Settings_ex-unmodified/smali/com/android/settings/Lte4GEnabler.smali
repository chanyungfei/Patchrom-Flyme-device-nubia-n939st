.class public Lcom/android/settings/Lte4GEnabler;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Lte4GEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;

.field private static mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialogClicked:Z

.field private mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z

    .line 161
    new-instance v0, Lcom/android/settings/Lte4GEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/Lte4GEnabler$4;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    iput-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 69
    iput-object p1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 71
    new-instance v0, Lcom/android/settings/Lte4GEnabler$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Lte4GEnabler$MyHandler;-><init>(Lcom/android/settings/Lte4GEnabler;Lcom/android/settings/Lte4GEnabler$1;)V

    sput-object v0, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/Lte4GEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/Lte4GEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/Lte4GEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->promptUser()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/Lte4GEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->getPreferredNetworkType()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Lte4GEnabler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V

    return-void
.end method

.method private callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferredNetworkType()I
    .locals 5

    .prologue
    .line 227
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 230
    .local v0, "settingsNetworkMode":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_0
    const-string v2, "Lte4GEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Lte4GEnabler"

    const-string v3, "getPreferredNetworkType: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPrefTDDDataOnly(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network_band_preferred"

    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    .local v1, "tddEnabled":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .line 157
    .end local v1    # "tddEnabled":I
    :cond_0
    :goto_0
    return v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private promptUser()V
    .locals 4

    .prologue
    .line 121
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090b3b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900d8

    new-instance v3, Lcom/android/settings/Lte4GEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/Lte4GEnabler$2;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900d7

    new-instance v3, Lcom/android/settings/Lte4GEnabler$1;

    invoke-direct {v3, p0}, Lcom/android/settings/Lte4GEnabler$1;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 140
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/Lte4GEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings/Lte4GEnabler$3;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    return-void
.end method

.method private setPrefNetwork()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 180
    .local v0, "networkType":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/Lte4GEnabler;->isPrefTDDDataOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode_default"

    invoke-static {v1, v2, v3, v0}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 184
    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork(III)V

    .line 189
    :goto_1
    return-void

    .line 177
    .end local v0    # "networkType":I
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 187
    .restart local v0    # "networkType":I
    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/android/settings/Lte4GEnabler;->setPrefNetwork(II)V

    goto :goto_1
.end method

.method private setPrefNetwork(II)V
    .locals 5
    .param p1, "sub"    # I
    .param p2, "network"    # I

    .prologue
    .line 192
    new-instance v2, Landroid/os/Messenger;

    sget-object v3, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 193
    .local v2, "msger":Landroid/os/Messenger;
    sget-object v3, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/Lte4GEnabler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 195
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "slot"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v3, "network"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v3, "callback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    const-string v3, "set_pref_network"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/Lte4GEnabler;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 202
    return-void
.end method

.method private setSwitchStatus()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "isLTEMode":Z
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->getPreferredNetworkType()I

    move-result v2

    .line 96
    .local v2, "type":I
    const/16 v4, 0x16

    if-eq v2, v4, :cond_0

    const/16 v4, 0x14

    if-eq v2, v4, :cond_0

    const/16 v4, 0x13

    if-eq v2, v4, :cond_0

    const/16 v4, 0x11

    if-eq v2, v4, :cond_0

    const/16 v4, 0xf

    if-eq v2, v4, :cond_0

    const/16 v4, 0xc

    if-eq v2, v4, :cond_0

    const/16 v4, 0xb

    if-eq v2, v4, :cond_0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    const/16 v4, 0x17

    if-ne v2, v4, :cond_2

    .line 108
    :cond_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 114
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 115
    .local v1, "simState":I
    iget-object v4, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 118
    return-void

    .line 110
    .end local v1    # "simState":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    return-void
.end method

.method public setPrefNetwork(III)V
    .locals 4
    .param p1, "sub"    # I
    .param p2, "network"    # I
    .param p3, "band"    # I

    .prologue
    .line 205
    sget-object v2, Lcom/android/settings/Lte4GEnabler;->mHandler:Lcom/android/settings/Lte4GEnabler$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/Lte4GEnabler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 208
    new-instance v2, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 211
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v2, "network"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v2, "band"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v2, "callback"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string v2, "set_pref_network"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/Lte4GEnabler;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 217
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 87
    invoke-direct {p0}, Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
