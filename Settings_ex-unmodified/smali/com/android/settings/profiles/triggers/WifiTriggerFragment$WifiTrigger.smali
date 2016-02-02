.class public Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
.super Lcom/android/settings/profiles/triggers/AbstractTriggerItem;
.source "WifiTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/triggers/WifiTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTrigger"
.end annotation


# instance fields
.field public mConfig:Landroid/net/wifi/WifiConfiguration;

.field public mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/settings/profiles/triggers/AbstractTriggerItem;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 255
    invoke-direct {p0, p1}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/settings/profiles/triggers/AbstractTriggerItem;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    .line 260
    return-void
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 272
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 274
    return-void

    .line 272
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 278
    .local v0, "length":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 279
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 283
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-object v0
.end method
