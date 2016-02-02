.class public Lcom/android/settings/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field static bufferc:[B

.field static lengthup:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UPGRADE_HISTORY:Ljava/lang/String;

.field private final UPGRADE_HISTORY_COPY:Ljava/lang/String;

.field private final UPGRADE_RESULET:Ljava/lang/String;

.field private buffer:[B

.field private length:I

.field private mContext:Landroid/content/Context;

.field m_NotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/android/settings/BootCompletedReceiver;->bufferc:[B

    .line 169
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/BootCompletedReceiver;->lengthup:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 160
    const-string v0, "BootCompletedReceiver"

    iput-object v0, p0, Lcom/android/settings/BootCompletedReceiver;->TAG:Ljava/lang/String;

    .line 161
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings/BootCompletedReceiver;->buffer:[B

    .line 164
    const-string v0, "/cache/ota/update_result.txt"

    iput-object v0, p0, Lcom/android/settings/BootCompletedReceiver;->UPGRADE_RESULET:Ljava/lang/String;

    .line 165
    const-string v0, "/data/update_history.csv"

    iput-object v0, p0, Lcom/android/settings/BootCompletedReceiver;->UPGRADE_HISTORY:Ljava/lang/String;

    .line 166
    const-string v0, "/storage/sdcard1/update_history.csv"

    iput-object v0, p0, Lcom/android/settings/BootCompletedReceiver;->UPGRADE_HISTORY_COPY:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/BootCompletedReceiver;->length:I

    return-void
.end method


# virtual methods
.method public copyFile2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)J
    .locals 16
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destDir"    # Ljava/io/File;
    .param p3, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 322
    if-eqz p3, :cond_0

    const-string v4, "ZTE_V5_Time-lapse_Photography.mp4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/BootCompletedReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f090bec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 326
    :cond_0
    const-wide/16 v10, 0x0

    .line 327
    .local v10, "copySizes":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    const-wide/16 v10, -0x1

    .line 364
    :goto_0
    return-wide v10

    .line 330
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 332
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 333
    :cond_2
    if-nez p3, :cond_3

    .line 335
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 338
    :cond_3
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 340
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 341
    :cond_4
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 342
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 343
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    .line 344
    .local v14, "size":J
    const/high16 v4, 0xa00000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 345
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/32 v4, 0xa00000

    cmp-long v4, v14, v4

    if-lez v4, :cond_5

    .line 346
    :goto_1
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 347
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 348
    invoke-virtual {v8, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 349
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 358
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "size":J
    :catch_0
    move-exception v9

    .line 359
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "size":J
    :cond_5
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 355
    :cond_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 356
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    move-wide v10, v14

    goto :goto_0

    .line 360
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "size":J
    :catch_1
    move-exception v9

    .line 361
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 182
    iput-object p1, p0, Lcom/android/settings/BootCompletedReceiver;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 187
    const-string v8, "BootCompletedReceiver"

    const-string v9, "wangjiaying into kaijiguangbo 12345 "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "persist.sys.nubia.copy"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 193
    const-string v8, "BootCompletedReceiver"

    const-string v9, "copy nubia video start "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v8, "/system/media/nubia"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v6, "srcDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/BootCompletedReceiver;->scanFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 203
    .end local v6    # "srcDir":Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_2
    const-string v8, "persist.sys.nubia.copy"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v8, "BootCompletedReceiver"

    const-string v9, "copy nubia video end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/cache/ota/update_result.txt"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    .local v4, "mRead":Ljava/io/FileInputStream;
    :try_start_3
    iget-object v8, p0, Lcom/android/settings/BootCompletedReceiver;->buffer:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/BootCompletedReceiver;->buffer:[B

    array-length v10, v10

    invoke-virtual {v4, v8, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    iput v8, p0, Lcom/android/settings/BootCompletedReceiver;->length:I

    .line 210
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/BootCompletedReceiver;->buffer:[B

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/BootCompletedReceiver;->length:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 211
    .local v7, "str":Ljava/lang/String;
    const-string v8, "BootCompletedReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wangjiaying read string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "persist.sys.sdcard.upgrade"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    iput-object v8, p0, Lcom/android/settings/BootCompletedReceiver;->m_NotificationManager:Landroid/app/NotificationManager;

    .line 215
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v8, 0x7f090bca

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 218
    const v8, 0x7f090be4

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 219
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 220
    const v8, 0x7f020032

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 221
    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/4 v10, 0x0

    invoke-static {p1, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 223
    .local v5, "noti":Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/settings/BootCompletedReceiver;->m_NotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 224
    const-string v8, "persist.sys.sdcard.upgrade"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 242
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "noti":Landroid/app/Notification;
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    const-string v8, "/data/update_history.csv"

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "mFpread":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v8, "/storage/sdcard1/update_history.csv"

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "mFpwrite":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v8, -0x1

    sget-object v9, Lcom/android/settings/BootCompletedReceiver;->bufferc:[B

    const/4 v10, 0x0

    sget-object v11, Lcom/android/settings/BootCompletedReceiver;->bufferc:[B

    array-length v11, v11

    invoke-virtual {v2, v9, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    sput v9, Lcom/android/settings/BootCompletedReceiver;->lengthup:I

    if-eq v8, v9, :cond_5

    .line 247
    sget-object v8, Lcom/android/settings/BootCompletedReceiver;->bufferc:[B

    invoke-virtual {v3, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 248
    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/android/settings/BootCompletedReceiver;->bufferc:[B

    const/4 v9, 0x0

    sget v10, Lcom/android/settings/BootCompletedReceiver;->lengthup:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 250
    .restart local v7    # "str":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wangjiaying : string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 259
    .end local v2    # "mFpread":Ljava/io/FileInputStream;
    .end local v3    # "mFpwrite":Ljava/io/FileOutputStream;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "mRead":Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    return-void

    .line 200
    :catch_1
    move-exception v1

    .line 201
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "BootCompletedReceiver"

    const-string v9, "copy nubia video failed "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 226
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "mRead":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_4
    :try_start_7
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "persist.sys.sdcard.upgrade"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 227
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    iput-object v8, p0, Lcom/android/settings/BootCompletedReceiver;->m_NotificationManager:Landroid/app/NotificationManager;

    .line 228
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    const v8, 0x7f090bca

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 231
    const v8, 0x7f090be5

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 232
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 233
    const v8, 0x7f020032

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 234
    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/4 v10, 0x0

    invoke-static {p1, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 236
    .restart local v5    # "noti":Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/settings/BootCompletedReceiver;->m_NotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 237
    const-string v8, "persist.sys.sdcard.upgrade"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 239
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "noti":Landroid/app/Notification;
    .end local v7    # "str":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 254
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "mFpread":Ljava/io/FileInputStream;
    .restart local v3    # "mFpwrite":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_9
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "wangjiaying cp successful "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 257
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3
.end method

.method public scanFile()V
    .locals 15

    .prologue
    .line 270
    const-string v8, "/system/media/nubia"

    .line 271
    .local v8, "str":Ljava/lang/String;
    const-string v9, "/storage/sdcard0/Movies"

    .line 272
    .local v9, "str2":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "dir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v5, "file2":Ljava/io/File;
    const/4 v2, 0x0

    .line 275
    .local v2, "dotDel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_3

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v0, v6

    .line 277
    .local v4, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->gc()V

    .line 278
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DONTDEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 279
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "DONTDEL cp in the last!"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    move-object v2, v4

    .line 276
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 283
    const-string v11, "BootCompletedReceiver"

    const-string v12, "JackChen:File is Directory"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v10, "tempfile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 286
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v10, v12}, Lcom/android/settings/BootCompletedReceiver;->copyFile2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)J

    .line 288
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "tempfile":Ljava/io/File;
    :cond_1
    const-string v11, "BootCompletedReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "JackChen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v4, v5, v11}, Lcom/android/settings/BootCompletedReceiver;->copyFile2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)J

    .line 297
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 298
    :catch_1
    move-exception v3

    .line 300
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    if-eqz v2, :cond_3

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v2, v5, v11}, Lcom/android/settings/BootCompletedReceiver;->copyFile2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)J

    .line 309
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 314
    :goto_2
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "CP end!"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    return-void

    .line 310
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :catch_2
    move-exception v3

    .line 312
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
