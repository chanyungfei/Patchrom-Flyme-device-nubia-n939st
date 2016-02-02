.class Lcom/android/server/lights/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 144
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 146
    .local v2, "result":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .line 149
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    return v3

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setButtonLightEnabled(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 174
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, "context":Landroid/content/Context;
    const-string v1, "android.permission.HARDWARE_TEST"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires FLASHLIGHT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mButtonBrightness:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 185
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mButtonLightTimeout:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0
.end method

.method public setFlashlightEnabled(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 154
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v3}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 155
    .local v1, "context":Landroid/content/Context;
    const-string v3, "android.permission.FLASHLIGHT"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.permission.HARDWARE_TEST"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 164
    .local v0, "bytes":[B
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/16 v3, 0x31

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 165
    const/4 v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    .line 166
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 167
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "bytes":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 164
    .restart local v0    # "bytes":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    const/16 v3, 0x30

    goto :goto_0

    .line 168
    .end local v0    # "bytes":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
