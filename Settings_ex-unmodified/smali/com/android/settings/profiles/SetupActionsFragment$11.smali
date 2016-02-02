.class Lcom/android/settings/profiles/SetupActionsFragment$11;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;

.field final synthetic val$streamSettings:Landroid/app/StreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Landroid/app/StreamSettings;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->val$streamSettings:Landroid/app/StreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 691
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->val$streamSettings:Landroid/app/StreamSettings;

    invoke-virtual {v1, v0}, Landroid/app/StreamSettings;->setValue(I)V

    .line 692
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v2, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->val$streamSettings:Landroid/app/StreamSettings;

    invoke-virtual {v1, v2}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 693
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 694
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$11;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lcom/android/settings/profiles/SetupActionsFragment;->access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 696
    return-void
.end method
