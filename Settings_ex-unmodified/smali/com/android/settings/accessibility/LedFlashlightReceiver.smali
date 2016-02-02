.class public Lcom/android/settings/accessibility/LedFlashlightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedFlashlightReceiver.java"


# static fields
.field private static final LIGHTE_OFF:[B

.field private static final LIGHTE_ON:[B

.field private static final LIGHT_MODE_DEFAULT:[B

.field private static final LIGHT_MODE_TORCH:[B

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v3, [B

    aput-byte v4, v0, v2

    sput-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHTE_OFF:[B

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHTE_ON:[B

    .line 53
    new-array v0, v3, [B

    const/16 v1, 0x31

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHT_MODE_TORCH:[B

    .line 56
    new-array v0, v3, [B

    aput-byte v4, v0, v2

    sput-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHT_MODE_DEFAULT:[B

    return-void

    .line 50
    nop

    :array_0
    .array-data 1
        0x31t
        0x32t
        0x37t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private acquireLEDWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v1, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 119
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 120
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "LedFlashlightReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    sget-object v1, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 122
    sget-object v1, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 124
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private releaseLEDWakeLock()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 131
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    :cond_1
    return-void
.end method

.method private setLEDFlashDataToDriver(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "driver":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v0    # "driver":Ljava/io/FileOutputStream;
    .local v1, "driver":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 104
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 110
    .end local v1    # "driver":Ljava/io/FileOutputStream;
    .restart local v0    # "driver":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 106
    .end local v0    # "driver":Ljava/io/FileOutputStream;
    .restart local v1    # "driver":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LedFlashlightReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 109
    .end local v1    # "driver":Ljava/io/FileOutputStream;
    .restart local v0    # "driver":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "LedFlashlightReceiver"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 104
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 106
    :catch_2
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LedFlashlightReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 99
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 104
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 106
    :catch_4
    move-exception v2

    .line 107
    const-string v3, "LedFlashlightReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 102
    :goto_3
    if-eqz v0, :cond_2

    .line 103
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 104
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 108
    :cond_2
    :goto_4
    throw v3

    .line 106
    :catch_5
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "LedFlashlightReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 101
    .end local v0    # "driver":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "driver":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "driver":Ljava/io/FileOutputStream;
    .restart local v0    # "driver":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 98
    .end local v0    # "driver":Ljava/io/FileOutputStream;
    .restart local v1    # "driver":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "driver":Ljava/io/FileOutputStream;
    .restart local v0    # "driver":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 96
    .end local v0    # "driver":Ljava/io/FileOutputStream;
    .restart local v1    # "driver":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "driver":Ljava/io/FileOutputStream;
    .restart local v0    # "driver":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private setLEDStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHTE_ON:[B

    .line 82
    .local v0, "data":[B
    :goto_0
    const-string v2, "/sys/class/leds/torch-light/brightness"

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "/sys/class/leds/torch-light/brightness"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->setLEDFlashDataToDriver(Ljava/lang/String;[B)V

    .line 89
    :goto_1
    return-void

    .line 80
    .end local v0    # "data":[B
    :cond_0
    sget-object v0, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHTE_OFF:[B

    goto :goto_0

    .line 85
    .restart local v0    # "data":[B
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHT_MODE_TORCH:[B

    .line 86
    .local v1, "mode":[B
    :goto_2
    const-string v2, "/sys/class/leds/flashlight/mode"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->setLEDFlashDataToDriver(Ljava/lang/String;[B)V

    .line 87
    const-string v2, "/sys/class/leds/flashlight/brightness"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->setLEDFlashDataToDriver(Ljava/lang/String;[B)V

    goto :goto_1

    .line 85
    .end local v1    # "mode":[B
    :cond_2
    sget-object v1, Lcom/android/settings/accessibility/LedFlashlightReceiver;->LIGHT_MODE_DEFAULT:[B

    goto :goto_2
.end method

.method private setLEDWakeLock(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLightsOn"    # Z

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->acquireLEDWakeLock(Landroid/content/Context;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->releaseLEDWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    if-eqz p2, :cond_0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "LedSwitch"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, "isLightsOn":Z
    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->setLEDWakeLock(Landroid/content/Context;Z)V

    .line 75
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/LedFlashlightReceiver;->setLEDStatus(Z)V

    .line 77
    .end local v0    # "isLightsOn":Z
    :cond_0
    return-void
.end method
