.class public Lcom/android/server/LedStatusBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedStatusBootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LedStatusBootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string v2, "LedStatusBootReceiver"

    const-string v3, "Enter LedStatusBootReceiver::onReceive."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    const-string v2, "LedStatusBootReceiver"

    const-string v3, "startService LedStatusService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/server/LedStatusService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "loadIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "loadIntent":Landroid/content/Intent;
    :goto_0
    const-string v2, "LedStatusBootReceiver"

    const-string v3, "Exit LedStatusBootReceiver::onReceive."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LedStatusBootReceiver"

    const-string v3, "Can\'t start load average service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
