.class Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 1
    .param p1, "wifiSettings"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 190
    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 201
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 220
    :cond_0
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 213
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 215
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 216
    const v1, 0x7f090302

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 206
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 196
    :cond_0
    return-void
.end method
