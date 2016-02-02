.class Lcom/android/settings_ex/profiles/SetupActionsFragment$5;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestLockscreenModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$5;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$5;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    # getter for: Lcom/android/settings_ex/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I
    invoke-static {}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->access$700()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$5;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings_ex/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->access$500(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$5;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 461
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 462
    return-void
.end method
