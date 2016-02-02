.class public Lcom/android/settings_ex/notification/NotificationCenter;
.super Lcom/android/settings_ex/PinnedHeaderListFragment;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationCenter$Backend;,
        Lcom/android/settings_ex/notification/NotificationCenter$AppRow;,
        Lcom/android/settings_ex/notification/NotificationCenter$Row;,
        Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;,
        Lcom/android/settings_ex/notification/NotificationCenter$ViewHolder;,
        Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/notification/NotificationCenter$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Empty:Landroid/widget/TextView;

.field Listrect:Landroid/widget/ListView;

.field private mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings_ex/notification/NotificationCenter$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationCenter$AppRow;",
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
            "Lcom/android/settings_ex/notification/NotificationCenter$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationCenter;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 515
    new-instance v0, Lcom/android/settings_ex/notification/NotificationCenter$4;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationCenter$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationCenter;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;-><init>()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mRows:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSortedRows:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSections:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/android/settings_ex/notification/NotificationCenter$Backend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationCenter$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mBackend:Lcom/android/settings_ex/notification/NotificationCenter$Backend;

    .line 581
    new-instance v0, Lcom/android/settings_ex/notification/NotificationCenter$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationCenter$5;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 754
    new-instance v0, Lcom/android/settings_ex/notification/NotificationCenter$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationCenter$6;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 761
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/NotificationCenter;)Lcom/android/settings_ex/notification/NotificationCenter$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mBackend:Lcom/android/settings_ex/notification/NotificationCenter$Backend;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings_ex/notification/NotificationCenter;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/NotificationCenter;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationCenter;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/NotificationCenter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/notification/NotificationCenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/NotificationCenter;)Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/NotificationCenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->loadAppsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/NotificationCenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/NotificationCenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
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
            "Lcom/android/settings_ex/notification/NotificationCenter$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationCenter$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "NotificationCenter"

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

    if-nez v5, :cond_0

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 561
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 562
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 563
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 564
    .local v4, "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    if-nez v4, :cond_1

    .line 565
    const-string v5, "NotificationCenter"

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

    .line 558
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 570
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_1
    iget-object v5, v4, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 571
    const-string v5, "NotificationCenter"

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

    .line 576
    :cond_2
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings_ex/notification/NotificationCenter;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 579
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_3
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationCenter$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationCenter$AppRow;>;"
    invoke-static {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 553
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/notification/NotificationCenter;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 554
    return-void
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 315
    :goto_0
    return-object v1

    .line 312
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 313
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 314
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 315
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationCenter$Backend;)Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings_ex/notification/NotificationCenter$Backend;

    .prologue
    .line 526
    new-instance v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;-><init>()V

    .line 527
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    .line 528
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->uid:I

    .line 530
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 536
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationCenter$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->banned:Z

    .line 537
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationCenter$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->priority:Z

    .line 538
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationCenter$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->sensitive:Z

    .line 539
    return-object v0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 308
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
    .line 543
    const-string v1, "NotificationCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/notification/NotificationCenter;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v1, Lcom/android/settings_ex/notification/NotificationCenter;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 549
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 14

    .prologue
    .line 648
    const-string v11, "NotificationCenter"

    const-string v12, "Refreshing apps..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v11}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;->clear()V

    .line 651
    iget-object v12, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v12

    .line 652
    const/4 v10, 0x0

    .line 653
    .local v10, "section":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 654
    .local v0, "N":I
    const/4 v2, 0x1

    .line 656
    .local v2, "first":Z
    const/4 v5, 0x0

    .line 657
    .local v5, "j":I
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v11}, Lcom/android/settings_ex/notification/NotificationCenter;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    .line 658
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 659
    .local v1, "appFlags":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v6, "mTmpRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/notification/NotificationCenter$AppRow;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 661
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 663
    .local v9, "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    .end local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 666
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 668
    .restart local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    iget-object v11, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.dialer"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 670
    iput-boolean v2, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->first:Z

    .line 671
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 672
    const/4 v2, 0x0

    .line 673
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 674
    add-int/lit8 v5, v5, 0x1

    .line 679
    .end local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_1
    const/4 v3, 0x0

    :goto_2
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_2

    .line 680
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 682
    .restart local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    iget-object v11, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.mms"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 684
    iput-boolean v2, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->first:Z

    .line 685
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 686
    const/4 v2, 0x0

    .line 687
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 688
    add-int/lit8 v5, v5, 0x1

    .line 693
    .end local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_2
    const/4 v3, 0x0

    :goto_3
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_3

    .line 694
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 696
    .restart local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    iget-object v11, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.email"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 698
    iput-boolean v2, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->first:Z

    .line 699
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 700
    const/4 v2, 0x0

    .line 701
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 702
    add-int/lit8 v5, v5, 0x1

    .line 707
    .end local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 708
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 709
    const/4 v3, 0x0

    :goto_5
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_4

    .line 710
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 711
    .restart local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    and-int/lit8 v11, v1, 0x1

    if-eqz v11, :cond_8

    iget-object v11, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 714
    iput-boolean v2, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->first:Z

    .line 715
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 716
    const/4 v2, 0x0

    .line 717
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 718
    add-int/lit8 v5, v5, 0x1

    .line 719
    goto :goto_4

    .line 665
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 679
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 693
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 709
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 723
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_9
    const/4 v3, 0x0

    :goto_6
    sub-int v11, v0, v5

    if-ge v3, v11, :cond_a

    .line 724
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;

    .line 725
    .restart local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    iput-boolean v2, v9, Lcom/android/settings_ex/notification/NotificationCenter$AppRow;->first:Z

    .line 726
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v11, v9}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 727
    const/4 v2, 0x0

    .line 723
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 745
    .end local v9    # "row":Lcom/android/settings_ex/notification/NotificationCenter$AppRow;
    :cond_a
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    iget-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mListViewState:Landroid/os/Parcelable;

    if-eqz v11, :cond_b

    .line 747
    const-string v11, "NotificationCenter"

    const-string v12, "Restoring listView state"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getListView()Landroid/widget/ListView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 749
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mListViewState:Landroid/os/Parcelable;

    .line 751
    :cond_b
    const-string v11, "NotificationCenter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Refreshed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mSortedRows:Ljava/util/ArrayList;

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

    .line 752
    return-void

    .line 745
    .end local v0    # "N":I
    .end local v1    # "appFlags":I
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v6    # "mTmpRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/notification/NotificationCenter$AppRow;>;"
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method private repositionScrollbar()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 322
    .local v2, "sbWidthPx":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 323
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 324
    .local v0, "eat":I
    if-gtz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v3, "NotificationCenter"

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

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
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


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->repositionScrollbar()V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Notifysw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    new-instance v0, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mUM:Landroid/os/UserManager;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mPM:Landroid/content/pm/PackageManager;

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090ab0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 128
    const v6, 0x7f04008d

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 129
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0f0145

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 130
    .local v4, "editBtn":Landroid/widget/Button;
    const v6, 0x7f0f0141

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 131
    .local v0, "Desktopsw":Landroid/widget/Switch;
    const v6, 0x7f0f0142

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 132
    .local v2, "Lockscreensw":Landroid/widget/Switch;
    const v6, 0x7f0f0143

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 134
    .local v3, "Notifysw":Landroid/widget/Switch;
    const v6, 0x7f0f0144

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    .local v1, "Includetext":Landroid/widget/TextView;
    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Empty:Landroid/widget/TextView;

    .line 136
    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    .line 137
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "desktopsw"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 138
    const-string v6, "NotificationCenter"

    const-string v7, "yaodong Desktopsw.setChecked(true)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreensw"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 147
    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "Notifysw"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    .line 154
    invoke-virtual {v3, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 157
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    :goto_2
    new-instance v6, Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;Lcom/android/settings_ex/notification/NotificationCenter$1;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v6, Lcom/android/settings_ex/notification/NotificationCenter$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/notification/NotificationCenter$1;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;)V

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    new-instance v6, Lcom/android/settings_ex/notification/NotificationCenter$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/notification/NotificationCenter$2;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;)V

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    new-instance v6, Lcom/android/settings_ex/notification/NotificationCenter$3;

    invoke-direct {v6, p0, v1, v5, v4}, Lcom/android/settings_ex/notification/NotificationCenter$3;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;)V

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    return-object v5

    .line 142
    :cond_0
    const-string v6, "NotificationCenter"

    const-string v7, "yaodong Desktopsw.setChecked(false)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v2, v9}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 163
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onDestroyView()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mListViewState:Landroid/os/Parcelable;

    .line 270
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
    .line 289
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 290
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
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
    .line 300
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onPause()V

    .line 262
    const-string v0, "NotificationCenter"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mListViewState:Landroid/os/Parcelable;

    .line 264
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 274
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onResume()V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Notifysw"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Empty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->loadAppsList()V

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter;->Empty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 241
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mUM:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ex/UserSpinnerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationCenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 245
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 246
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationCenter;->setPinnedHeaderView(Landroid/view/View;)V

    .line 249
    .end local v0    # "spinner":Landroid/widget/Spinner;
    :cond_0
    return-void
.end method
