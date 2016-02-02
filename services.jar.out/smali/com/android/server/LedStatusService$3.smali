.class Lcom/android/server/LedStatusService$3;
.super Landroid/content/BroadcastReceiver;
.source "LedStatusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedStatusService;


# direct methods
.method constructor <init>(Lcom/android/server/LedStatusService;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "action":Ljava/lang/String;
    const-string v3, "LedStatusService"

    const-string v6, "Enter BroadcastReceiver::onReceive."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez v0, :cond_0

    .line 211
    const-string v3, "LedStatusService"

    const-string v4, "Exit_01 BroadcastReceiver::onReceive."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter BroadcastReceiver::onReceiveaction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    # setter for: Lcom/android/server/LedStatusService;->mPlugged:Z
    invoke-static {v5}, Lcom/android/server/LedStatusService;->access$402(Z)Z

    .line 219
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_POWER_CONNECTED: mPlugged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mPlugged:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$400()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    .line 302
    :cond_1
    :goto_1
    # getter for: Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_BRIGHTNESS_CHANGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$1700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 305
    const-string v3, "BREATHLIGHT_COLOR"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 306
    .local v2, "which":I
    const-string v3, "BREATHLIGHT_LEVEL"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/LedStatusService;->changerBrightness:I
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1802(I)I

    .line 307
    # setter for: Lcom/android/server/LedStatusService;->mIsMaulChangeBrightness:Z
    invoke-static {v5}, Lcom/android/server/LedStatusService;->access$1902(Z)Z

    .line 308
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    .line 310
    const-string v3, "chenxia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/LedStatusService;->mBrightness:I
    invoke-static {}, Lcom/android/server/LedStatusService;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v2    # "which":I
    :goto_2
    const-string v3, "LedStatusService"

    const-string v4, "Exit BroadcastReceiver::onReceive."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 222
    :cond_2
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    # setter for: Lcom/android/server/LedStatusService;->mPlugged:Z
    invoke-static {v4}, Lcom/android/server/LedStatusService;->access$402(Z)Z

    .line 225
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_POWER_DISCONNECTED: mPlugged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mPlugged:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$400()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto :goto_1

    .line 228
    :cond_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    # setter for: Lcom/android/server/LedStatusService;->mScreenOff:Z
    invoke-static {v5}, Lcom/android/server/LedStatusService;->access$602(Z)Z

    .line 231
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SCREEN_OFF: mScreenOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mScreenOff:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$600()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 234
    :cond_4
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 236
    # setter for: Lcom/android/server/LedStatusService;->mScreenOff:Z
    invoke-static {v4}, Lcom/android/server/LedStatusService;->access$602(Z)Z

    .line 237
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SCREEN_ON: mScreenOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mScreenOff:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$600()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 240
    :cond_5
    # getter for: Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_DOWN:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    # setter for: Lcom/android/server/LedStatusService;->mHomedown:Z
    invoke-static {v5}, Lcom/android/server/LedStatusService;->access$802(Z)Z

    .line 243
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 246
    :cond_6
    # getter for: Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_HOME_UP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 248
    # setter for: Lcom/android/server/LedStatusService;->mHomedown:Z
    invoke-static {v4}, Lcom/android/server/LedStatusService;->access$802(Z)Z

    .line 249
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 253
    :cond_7
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 255
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/LedStatusService;->status:I
    invoke-static {v3, v6}, Lcom/android/server/LedStatusService;->access$1002(Lcom/android/server/LedStatusService;I)I

    .line 259
    const-string v3, "level"

    const/16 v6, 0x64

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/LedStatusService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1102(I)I

    .line 260
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED: mBatteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mBatteryLevel:I
    invoke-static {}, Lcom/android/server/LedStatusService;->access$1100()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 266
    :cond_8
    # getter for: Lcom/android/server/LedStatusService;->MSG_LED_UNREAD_SMS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 268
    const-string v3, "UNREAD"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1202(Z)Z

    .line 269
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.LED_UNREAD_SMS: mIsUnreadSMS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mIsUnreadSMS:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$1200()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 273
    :cond_9
    # getter for: Lcom/android/server/LedStatusService;->MSG_LED_MISSED_CALL:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 275
    const-string v3, "MISSED"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/server/LedStatusService;->mIsMissedCall:Z
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1302(Z)Z

    .line 276
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.LED_MISSED_CALL: mIsMissedCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mIsMissedCall:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$1300()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 279
    :cond_a
    # getter for: Lcom/android/server/LedStatusService;->MSG_LED_THIRD_MSG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$1400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 281
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    .line 283
    :cond_b
    # getter for: Lcom/android/server/LedStatusService;->MSG_BREATHLIGHT_SWITCH_CHANGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LedStatusService;->access$1500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 285
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateBrightLightSwitchStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1600(Lcom/android/server/LedStatusService;)V

    .line 286
    const-string v3, "LedStatusService"

    const-string v6, "com.android.breathlight_switch_changed"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 290
    :cond_c
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    const-string v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 293
    .local v1, "usbConnected":Z
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usbConnected =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # getter for: Lcom/android/server/LedStatusService;->status:I
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1000(Lcom/android/server/LedStatusService;)I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_d

    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # getter for: Lcom/android/server/LedStatusService;->status:I
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$1000(Lcom/android/server/LedStatusService;)I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_e

    :cond_d
    if-ne v1, v5, :cond_e

    move v3, v5

    :goto_3
    # setter for: Lcom/android/server/LedStatusService;->mPlugged:Z
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$402(Z)Z

    .line 297
    const-string v3, "LedStatusService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPlugged =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/LedStatusService;->mPlugged:Z
    invoke-static {}, Lcom/android/server/LedStatusService;->access$400()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v3, p0, Lcom/android/server/LedStatusService$3;->this$0:Lcom/android/server/LedStatusService;

    # invokes: Lcom/android/server/LedStatusService;->updateLedStatus()V
    invoke-static {v3}, Lcom/android/server/LedStatusService;->access$500(Lcom/android/server/LedStatusService;)V

    goto/16 :goto_1

    :cond_e
    move v3, v4

    .line 295
    goto :goto_3

    .line 314
    .end local v1    # "usbConnected":Z
    :cond_f
    # setter for: Lcom/android/server/LedStatusService;->mIsMaulChangeBrightness:Z
    invoke-static {v4}, Lcom/android/server/LedStatusService;->access$1902(Z)Z

    goto/16 :goto_2
.end method
