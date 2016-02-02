.class Lcom/android/settings/sim/MultiSimSoundSettings$1;
.super Ljava/lang/Object;
.source "MultiSimSoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/MultiSimSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/MultiSimSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/MultiSimSoundSettings;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resetRingtoneToDefault(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 111
    const/4 v8, 0x0

    .line 112
    .local v8, "COLUMN_ID":I
    const/4 v9, 0x1

    .line 113
    .local v9, "COLUMN_TITLE":I
    const/16 v16, 0x0

    .line 114
    .local v16, "summary":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 116
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 118
    .local v11, "defaultRingtoneFilename":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const-string v4, "_display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 132
    if-eqz v10, :cond_0

    .line 133
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 135
    .local v14, "rowId":I
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 136
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v14

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 139
    .local v12, "defaultRingtoneUri":Landroid/net/Uri;
    if-nez p2, :cond_2

    .line 140
    const-string v15, "ringtone"

    .line 144
    .local v15, "setting":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v15, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v12    # "defaultRingtoneUri":Landroid/net/Uri;
    .end local v14    # "rowId":I
    .end local v15    # "setting":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 157
    .end local v11    # "defaultRingtoneFilename":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v16

    .line 142
    .restart local v11    # "defaultRingtoneFilename":Ljava/lang/String;
    .restart local v12    # "defaultRingtoneUri":Landroid/net/Uri;
    .restart local v14    # "rowId":I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .restart local v15    # "setting":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v11    # "defaultRingtoneFilename":Ljava/lang/String;
    .end local v12    # "defaultRingtoneUri":Landroid/net/Uri;
    .end local v14    # "rowId":I
    .end local v15    # "setting":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 151
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    if-eqz v10, :cond_1

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 153
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const v12, 0x10404e5

    const/4 v11, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;
    invoke-static {v0}, Lcom/android/settings/sim/MultiSimSoundSettings;->access$000(Lcom/android/settings/sim/MultiSimSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v6, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    .line 74
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/sim/MultiSimSoundSettings;->mSubscription:I
    invoke-static {v0}, Lcom/android/settings/sim/MultiSimSoundSettings;->access$100(Lcom/android/settings/sim/MultiSimSoundSettings;)I

    move-result v0

    invoke-static {v6, v0}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, "ringtoneUri":Landroid/net/Uri;
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 80
    const v0, 0x10404e3

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/sim/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/sim/MultiSimSoundSettings;->access$200(Lcom/android/settings/sim/MultiSimSoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/sim/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/sim/MultiSimSoundSettings;->access$200(Lcom/android/settings/sim/MultiSimSoundSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v11, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v6    # "context":Landroid/content/Context;
    .end local v10    # "summary":Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 83
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v10    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const/4 v7, 0x0

    .line 85
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    if-eqz v7, :cond_3

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 95
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_4
    :goto_1
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "ringtoneUnknown":Ljava/lang/CharSequence;
    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/sim/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/sim/MultiSimSoundSettings;->mSubscription:I
    invoke-static {v0}, Lcom/android/settings/sim/MultiSimSoundSettings;->access$100(Lcom/android/settings/sim/MultiSimSoundSettings;)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/settings/sim/MultiSimSoundSettings$1;->resetRingtoneToDefault(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 101
    .local v8, "defaultRingtone":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 102
    move-object v10, v8

    goto :goto_0

    .line 92
    .end local v8    # "defaultRingtone":Ljava/lang/CharSequence;
    .end local v9    # "ringtoneUnknown":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 95
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
