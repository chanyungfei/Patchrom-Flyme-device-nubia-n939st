.class Lcom/android/settings_ex/profiles/ProfilesSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/ProfilesSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/ProfilesSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$1;->this$0:Lcom/android/settings_ex/profiles/ProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$1;->this$0:Lcom/android/settings_ex/profiles/ProfilesSettings;

    # invokes: Lcom/android/settings_ex/profiles/ProfilesSettings;->updateProfilesEnabledState()V
    invoke-static {v1}, Lcom/android/settings_ex/profiles/ProfilesSettings;->access$000(Lcom/android/settings_ex/profiles/ProfilesSettings;)V

    .line 90
    :cond_0
    return-void
.end method