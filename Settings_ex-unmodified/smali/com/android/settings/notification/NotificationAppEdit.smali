.class public Lcom/android/settings/notification/NotificationAppEdit;
.super Lcom/android/settings/PinnedHeaderListFragment;
.source "NotificationAppEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAppEdit$Backend;,
        Lcom/android/settings/notification/NotificationAppEdit$AppRow;,
        Lcom/android/settings/notification/NotificationAppEdit$Row;,
        Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;,
        Lcom/android/settings/notification/NotificationAppEdit$ViewHolder;,
        Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/NotificationAppEdit$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings/notification/NotificationAppEdit$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppEdit$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/NotificationAppEdit$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mUM:Landroid/os/UserManager;

.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppEdit;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 497
    new-instance v0, Lcom/android/settings/notification/NotificationAppEdit$1;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppEdit$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAppEdit;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/PinnedHeaderListFragment;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mRows:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSections:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/settings/notification/NotificationAppEdit$Backend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppEdit$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mBackend:Lcom/android/settings/notification/NotificationAppEdit$Backend;

    .line 563
    new-instance v0, Lcom/android/settings/notification/NotificationAppEdit$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppEdit$2;-><init>(Lcom/android/settings/notification/NotificationAppEdit;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance v0, Lcom/android/settings/notification/NotificationAppEdit$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppEdit$3;-><init>(Lcom/android/settings/notification/NotificationAppEdit;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 769
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationAppEdit;)Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationAppEdit;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationAppEdit;)Lcom/android/settings/notification/NotificationAppEdit$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mBackend:Lcom/android/settings/notification/NotificationAppEdit$Backend;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings/notification/NotificationAppEdit;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationAppEdit;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppEdit;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationAppEdit;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationAppEdit;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppEdit;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationAppEdit;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppEdit;->pd:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationAppEdit;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    return v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppEdit$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationAppEdit$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "NotificationAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 543
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 544
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 545
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 546
    .local v4, "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    if-nez v4, :cond_2

    .line 547
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 540
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 552
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_2
    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 553
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 558
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/notification/NotificationAppEdit;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 561
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_4
    return-void
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 272
    :goto_0
    return-object v1

    .line 269
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 270
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 271
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 272
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppEdit$Backend;)Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationAppEdit$Backend;

    .prologue
    .line 508
    new-instance v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppEdit$AppRow;-><init>()V

    .line 509
    .local v0, "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    .line 510
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->uid:I

    .line 512
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 518
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppEdit$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->banned:Z

    .line 519
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppEdit$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->priority:Z

    .line 520
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppEdit$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->sensitive:Z

    .line 521
    return-object v0

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    sget-boolean v1, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/notification/NotificationAppEdit;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppEdit;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 531
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 15

    .prologue
    .line 628
    sget-boolean v11, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "NotificationAppList"

    const-string v12, "Refreshing apps..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v11}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->clear()V

    .line 630
    iget-object v12, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v12

    .line 631
    const/4 v10, 0x0

    .line 632
    .local v10, "section":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 633
    .local v0, "N":I
    const/4 v2, 0x1

    .line 635
    .local v2, "first":Z
    const/4 v5, 0x0

    .line 636
    .local v5, "j":I
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v11}, Lcom/android/settings/notification/NotificationAppEdit;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    .line 637
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 638
    .local v1, "appFlags":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v6, "mTmpRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/notification/NotificationAppEdit$AppRow;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 640
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 642
    .local v9, "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 644
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 645
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 647
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iget-object v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.dialer"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 649
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->first:Z

    .line 650
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 651
    const/4 v2, 0x0

    .line 652
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 653
    add-int/lit8 v5, v5, 0x1

    .line 658
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_3

    .line 659
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 661
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iget-object v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.mms"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 663
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->first:Z

    .line 664
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 665
    const/4 v2, 0x0

    .line 666
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 667
    add-int/lit8 v5, v5, 0x1

    .line 672
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_3
    const/4 v3, 0x0

    :goto_3
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_4

    .line 673
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 675
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iget-object v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.email"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 677
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->first:Z

    .line 678
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 679
    const/4 v2, 0x0

    .line 680
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 681
    add-int/lit8 v5, v5, 0x1

    .line 686
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 687
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 688
    const/4 v3, 0x0

    :goto_5
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_5

    .line 689
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 690
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    and-int/lit8 v11, v1, 0x1

    if-eqz v11, :cond_9

    iget-object v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 693
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->first:Z

    .line 694
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 695
    const/4 v2, 0x0

    .line 696
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 697
    add-int/lit8 v5, v5, 0x1

    .line 698
    goto :goto_4

    .line 644
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 658
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 672
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 688
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 702
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_a
    const/4 v3, 0x0

    :goto_6
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_b

    .line 703
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 704
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->first:Z

    .line 705
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 706
    const/4 v2, 0x0

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 710
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_e

    .line 711
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 712
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "lock"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_c

    .line 713
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->islockscreenCk:Z

    .line 723
    :goto_8
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "statusbar"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_d

    .line 724
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->isStatusbarCK:Z

    .line 710
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 715
    :cond_c
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->islockscreenCk:Z

    goto :goto_8

    .line 749
    .end local v0    # "N":I
    .end local v1    # "appFlags":I
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v6    # "mTmpRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/notification/NotificationAppEdit$AppRow;>;"
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 726
    .restart local v0    # "N":I
    .restart local v1    # "appFlags":I
    .restart local v2    # "first":Z
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "j":I
    .restart local v6    # "mTmpRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/notification/NotificationAppEdit$AppRow;>;"
    .restart local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_d
    const/4 v11, 0x0

    :try_start_1
    iput-boolean v11, v9, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->isStatusbarCK:Z

    goto :goto_9

    .line 749
    .end local v9    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_e
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mListViewState:Landroid/os/Parcelable;

    if-eqz v11, :cond_10

    .line 755
    sget-boolean v11, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v11, :cond_f

    const-string v11, "NotificationAppList"

    const-string v12, "Restoring listView state"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getListView()Landroid/widget/ListView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/notification/NotificationAppEdit;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 757
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/notification/NotificationAppEdit;->mListViewState:Landroid/os/Parcelable;

    .line 759
    :cond_10
    sget-boolean v11, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v11, :cond_11

    const-string v11, "NotificationAppList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Refreshed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/NotificationAppEdit;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " displayed items"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_11
    return-void
.end method

.method private repositionScrollbar()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 279
    .local v2, "sbWidthPx":I
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 280
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 281
    .local v0, "eat":I
    if-gtz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-boolean v3, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "NotificationAppList"

    const-string v4, "Eating %dpx into %dpx padding for %dpx scroll, ld=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method private setupActionBar(Landroid/view/LayoutInflater;)V
    .locals 9
    .param p1, "inflator"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 132
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 133
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 134
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    const v5, 0x7f04008a

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 138
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0f013d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 139
    .local v1, "cancelBtn":Landroid/widget/Button;
    const v5, 0x7f0f013e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 140
    .local v2, "finishBtn":Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;

    invoke-direct {v5, p0, v7}, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;-><init>(Lcom/android/settings/notification/NotificationAppEdit;Lcom/android/settings/notification/NotificationAppEdit$1;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v5, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;

    invoke-direct {v5, p0, v7}, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;-><init>(Lcom/android/settings/notification/NotificationAppEdit;Lcom/android/settings/notification/NotificationAppEdit$1;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 145
    .local v3, "layout":Landroid/app/ActionBar$LayoutParams;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v0, v4, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 151
    .end local v1    # "cancelBtn":Landroid/widget/Button;
    .end local v2    # "finishBtn":Landroid/widget/Button;
    .end local v3    # "layout":Landroid/app/ActionBar$LayoutParams;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppEdit;->repositionScrollbar()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    new-instance v0, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;-><init>(Lcom/android/settings/notification/NotificationAppEdit;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mUM:Landroid/os/UserManager;

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mPM:Landroid/content/pm/PackageManager;

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090ab0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationAppEdit;->setupActionBar(Landroid/view/LayoutInflater;)V

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    const v0, 0x7f040089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onDestroyView()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mListViewState:Landroid/os/Parcelable;

    .line 235
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppEdit;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 247
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 253
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onPause()V

    .line 227
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppEdit;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppEdit;->mListViewState:Landroid/os/Parcelable;

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppEdit;->loadAppsList()V

    .line 242
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/android/settings/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppEdit;->mUM:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/NotificationAppEdit;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    .line 208
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppEdit;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 211
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppEdit;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 212
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppEdit;->setPinnedHeaderView(Landroid/view/View;)V

    .line 215
    .end local v0    # "spinner":Landroid/widget/Spinner;
    :cond_0
    return-void
.end method
