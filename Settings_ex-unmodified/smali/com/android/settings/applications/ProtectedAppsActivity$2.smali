.class Lcom/android/settings/applications/ProtectedAppsActivity$2;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 435
    .local v3, "position":I
    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v6}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$000(Lcom/android/settings/applications/ProtectedAppsActivity;)Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v6, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    .line 436
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v1, "componentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    # invokes: Lcom/android/settings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    invoke-static {v6, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$400(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z

    move-result v4

    .line 440
    .local v4, "state":Z
    new-instance v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {v2, v6, v1, v4}, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 441
    .local v2, "list":Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v5, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    iget-object v7, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {v5, v6, v7}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 443
    .local v5, "task":Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-void
.end method
