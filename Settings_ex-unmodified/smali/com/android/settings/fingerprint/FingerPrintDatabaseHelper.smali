.class public Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FingerPrintDatabaseHelper.java"


# static fields
.field public static final FINGER_PRINT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fp_index"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fp_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fp_rename"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fp_associated_status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fp_associated_package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fp_associated_activity_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "finger_print.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->sInstance:Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->sInstance:Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->sInstance:Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    const-string v0, "CREATE TABLE table_finger_print (_id INTEGER PRIMARY KEY AUTOINCREMENT,fp_index INTEGER,fp_name TEXT,fp_rename INTEGER DEFAULT 0,fp_associated_status INTEGER DEFAULT 0,fp_associated_package_name TEXT,fp_associated_activity_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 70
    return-void
.end method
