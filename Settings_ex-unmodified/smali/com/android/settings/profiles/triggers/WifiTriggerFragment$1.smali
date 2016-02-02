.class Lcom/android/settings/profiles/triggers/WifiTriggerFragment$1;
.super Ljava/lang/Object;
.source "WifiTriggerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/triggers/WifiTriggerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$1;->this$0:Lcom/android/settings/profiles/triggers/WifiTriggerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "wifiSettings":Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$1;->this$0:Lcom/android/settings/profiles/triggers/WifiTriggerFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
