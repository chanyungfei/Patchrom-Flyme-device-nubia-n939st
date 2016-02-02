.class Lcom/android/settings/profiles/SetupActionsFragment$9;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Landroid/app/ConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->val$setting:Landroid/app/ConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 641
    packed-switch p2, :pswitch_data_0

    .line 646
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->val$setting:Landroid/app/ConnectionSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    .line 647
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, p2}, Landroid/app/ConnectionSettings;->setValue(I)V

    .line 649
    :goto_0
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->val$setting:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 651
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings/profiles/SetupActionsFragment;->access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V

    .line 652
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 653
    return-void

    .line 643
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$9;->val$setting:Landroid/app/ConnectionSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
