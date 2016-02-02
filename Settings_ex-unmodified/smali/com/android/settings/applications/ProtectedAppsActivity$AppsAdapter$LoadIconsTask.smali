.class Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;Lcom/android/settings/applications/ProtectedAppsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    .param p2, "x1"    # Lcom/android/settings/applications/ProtectedAppsActivity$1;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 404
    check-cast p1, [Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->doInBackground([Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;)Ljava/lang/Void;
    .locals 7
    .param p1, "apps"    # [Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .prologue
    .line 407
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 409
    .local v0, "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    :try_start_0
    iget-object v6, v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    # getter for: Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->access$700(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v6, v6, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$200(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 414
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    # getter for: Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->access$700(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 416
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 421
    .end local v0    # "app":Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 427
    return-void
.end method
