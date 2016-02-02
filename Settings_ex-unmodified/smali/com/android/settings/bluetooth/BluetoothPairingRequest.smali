.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "action":Ljava/lang/String;
    const-string v22, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 49
    const-string v22, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 51
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v22, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v23, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 53
    .local v20, "type":I
    const-string v22, "codeaurora.bluetooth.device.extra.SECURE"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 54
    .local v19, "secure":Z
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v14, "pairingIntent":Landroid/content/Intent;
    const-class v22, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const-string v22, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v22, "android.bluetooth.device.extra.PAIRING_VARIANT"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v22, "codeaurora.bluetooth.device.extra.SECURE"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    const-string v22, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v23, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 64
    .local v15, "pairingKey":I
    const-string v22, "android.bluetooth.device.extra.PAIRING_KEY"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .end local v15    # "pairingKey":I
    :cond_1
    const-string v22, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v22, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 71
    .local v17, "powerManager":Landroid/os/PowerManager;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "deviceAddress":Ljava/lang/String;
    :goto_0
    const v22, 0x10000006

    const-string v23, "bright"

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 74
    .local v10, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    const-string v22, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 76
    .local v9, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    .line 77
    .local v8, "lock":Z
    if-nez v8, :cond_5

    const/16 v21, 0x1

    .line 78
    .local v21, "unlock":Z
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v22

    if-nez v22, :cond_2

    .line 80
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 81
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    :cond_2
    if-eqz v21, :cond_6

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v5, "builder":Landroid/app/Notification$Builder;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 92
    const-string v22, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 94
    .local v11, "manager":Landroid/app/NotificationManager;
    const v22, 0x1080080

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 156
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "lock":Z
    .end local v9    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .end local v10    # "mWakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v11    # "manager":Landroid/app/NotificationManager;
    .end local v14    # "pairingIntent":Landroid/content/Intent;
    .end local v17    # "powerManager":Landroid/os/PowerManager;
    .end local v19    # "secure":Z
    .end local v20    # "type":I
    .end local v21    # "unlock":Z
    :cond_3
    :goto_2
    return-void

    .line 71
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v14    # "pairingIntent":Landroid/content/Intent;
    .restart local v17    # "powerManager":Landroid/os/PowerManager;
    .restart local v19    # "secure":Z
    .restart local v20    # "type":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 77
    .restart local v7    # "deviceAddress":Ljava/lang/String;
    .restart local v8    # "lock":Z
    .restart local v9    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .restart local v10    # "mWakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_5
    const/16 v21, 0x0

    goto :goto_1

    .line 99
    .restart local v21    # "unlock":Z
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 100
    .local v18, "res":Landroid/content/res/Resources;
    new-instance v22, Landroid/app/Notification$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080080

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x7f090158

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 104
    .restart local v5    # "builder":Landroid/app/Notification$Builder;
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 107
    .local v16, "pending":Landroid/app/PendingIntent;
    const-string v22, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 109
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v12

    .line 113
    :cond_7
    :goto_3
    const v22, 0x7f090159

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x7f09015a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v12, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x1060059

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 121
    const-string v22, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 123
    .restart local v11    # "manager":Landroid/app/NotificationManager;
    const v22, 0x1080080

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 109
    .end local v11    # "manager":Landroid/app/NotificationManager;
    :cond_8
    const v22, 0x104000e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 126
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "lock":Z
    .end local v9    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .end local v10    # "mWakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "pairingIntent":Landroid/content/Intent;
    .end local v16    # "pending":Landroid/app/PendingIntent;
    .end local v17    # "powerManager":Landroid/os/PowerManager;
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "secure":Z
    .end local v20    # "type":I
    .end local v21    # "unlock":Z
    :cond_9
    const-string v22, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 127
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 129
    .restart local v14    # "pairingIntent":Landroid/content/Intent;
    const-class v22, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    const-string v22, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    const/16 v22, 0x0

    const/high16 v23, 0x20000000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 134
    .restart local v16    # "pending":Landroid/app/PendingIntent;
    if-eqz v16, :cond_a

    .line 135
    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->cancel()V

    .line 139
    :cond_a
    const-string v22, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 141
    .restart local v11    # "manager":Landroid/app/NotificationManager;
    const v22, 0x1080080

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 143
    .end local v11    # "manager":Landroid/app/NotificationManager;
    .end local v14    # "pairingIntent":Landroid/content/Intent;
    .end local v16    # "pending":Landroid/app/PendingIntent;
    :cond_b
    const-string v22, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 144
    const-string v22, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v23, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 146
    .local v4, "bondState":I
    const-string v22, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v23, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 148
    .local v13, "oldState":I
    const/16 v22, 0xb

    move/from16 v0, v22

    if-ne v13, v0, :cond_3

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 151
    const-string v22, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 153
    .restart local v11    # "manager":Landroid/app/NotificationManager;
    const v22, 0x1080080

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2
.end method
