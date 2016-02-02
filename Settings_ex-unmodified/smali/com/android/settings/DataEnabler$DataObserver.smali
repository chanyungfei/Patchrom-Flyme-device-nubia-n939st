.class Lcom/android/settings/DataEnabler$DataObserver;
.super Landroid/database/ContentObserver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/DataEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    .line 172
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 173
    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$600(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 201
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 177
    const-string v0, "DataEnabler"

    const-string v1, "data state change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    # invokes: Lcom/android/settings/DataEnabler;->refreshStatus()V
    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$500(Lcom/android/settings/DataEnabler;)V

    .line 179
    return-void
.end method

.method public startObserving()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v2, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, v2, Lcom/android/settings/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 183
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$600(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, v2, Lcom/android/settings/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$600(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataEnabler$DataObserver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$600(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    return-void
.end method
