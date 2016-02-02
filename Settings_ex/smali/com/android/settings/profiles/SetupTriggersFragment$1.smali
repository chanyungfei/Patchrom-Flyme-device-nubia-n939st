.class Lcom/android/settings_ex/profiles/SetupTriggersFragment$1;
.super Ljava/lang/Object;
.source "SetupTriggersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/SetupTriggersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/SetupTriggersFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/SetupTriggersFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings_ex/profiles/SetupTriggersFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupTriggersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "Profile"

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupTriggersFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupTriggersFragment;

    iget-object v3, v3, Lcom/android/settings_ex/profiles/SetupTriggersFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    const-string v1, "new_profile_mode"

    iget-object v3, p0, Lcom/android/settings_ex/profiles/SetupTriggersFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupTriggersFragment;

    iget-boolean v3, v3, Lcom/android/settings_ex/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupTriggersFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SubSettings;

    .line 141
    .local v0, "pa":Lcom/android/settings_ex/SubSettings;
    const-class v1, Lcom/android/settings_ex/profiles/SetupActionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09003a

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/profiles/SetupTriggersFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupTriggersFragment;

    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 144
    return-void
.end method
