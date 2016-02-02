.class Lcom/android/settings/profiles/ProfilesSettings$3;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfilesSettings;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    # getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$200(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProfileManager;->resetAll()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    # getter for: Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$300(Lcom/android/settings/profiles/ProfilesSettings;)Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;->refreshProfiles()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    # getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$200(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    # getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings;->access$200(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 209
    return-void
.end method
