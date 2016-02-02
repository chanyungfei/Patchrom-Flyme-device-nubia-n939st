.class public Lcom/android/settings/fingerprint/FingerPrintUtils;
.super Ljava/lang/Object;
.source "FingerPrintUtils.java"


# direct methods
.method public static deleteFingerPrintByIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 41
    const-string v0, "fp_index=?"

    .line 42
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 46
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pM"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v1, "comName":Landroid/content/ComponentName;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 121
    .local v0, "af":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    .end local v0    # "af":Landroid/content/pm/ActivityInfo;
    .local v3, "label":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 122
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 125
    move-object v3, p1

    .line 126
    .restart local v3    # "label":Ljava/lang/String;
    const-string v4, "VIM"

    const-string v5, "getAppLabel NameNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAssociateApplicationStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fpName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "associatedStatus":Z
    const-string v3, "fp_name=?"

    .line 84
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v12

    .line 88
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v7, v6

    .line 113
    .end local v6    # "associatedStatus":Z
    .local v7, "associatedStatus":I
    :goto_0
    return v7

    .line 97
    .end local v7    # "associatedStatus":I
    .restart local v6    # "associatedStatus":Z
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v7, v6

    .line 99
    .restart local v7    # "associatedStatus":I
    goto :goto_0

    .line 103
    .end local v7    # "associatedStatus":I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string v0, "fp_associated_status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 105
    .local v10, "state":I
    if-ne v10, v11, :cond_2

    move v6, v11

    .line 106
    :goto_2
    goto :goto_1

    :cond_2
    move v6, v12

    .line 105
    goto :goto_2

    .line 110
    .end local v10    # "state":I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_3
    move v7, v6

    .line 113
    .restart local v7    # "associatedStatus":I
    goto :goto_0

    .line 107
    .end local v7    # "associatedStatus":I
    :catch_0
    move-exception v9

    .line 108
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAssociateApplicationStatus] exception! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFingerCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 26
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 27
    const/4 v6, 0x0

    .line 32
    :goto_0
    return v6

    .line 30
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 31
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getIntDataByKey(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static insertFingerPrint(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isPasswordQualityNone(Lcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1
    .param p0, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putIntDataByKey(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Value"    # I

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    return-void
.end method

.method public static updateFingerPrintByIndex(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 50
    const-string v0, "fp_index=?"

    .line 51
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static updateFingerPrintByName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 60
    const-string v0, "fp_name=?"

    .line 61
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 65
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    return-void
.end method
