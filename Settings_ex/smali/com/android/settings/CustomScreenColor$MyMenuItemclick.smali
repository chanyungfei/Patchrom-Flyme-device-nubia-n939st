.class Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;
.super Ljava/lang/Object;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CustomScreenColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuItemclick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CustomScreenColor;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CustomScreenColor;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings_ex/CustomScreenColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CustomScreenColor;Lcom/android/settings_ex/CustomScreenColor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CustomScreenColor;
    .param p2, "x1"    # Lcom/android/settings_ex/CustomScreenColor$1;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;-><init>(Lcom/android/settings_ex/CustomScreenColor;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 675
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 689
    :goto_0
    return v1

    .line 677
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings_ex/CustomScreenColor;

    # invokes: Lcom/android/settings_ex/CustomScreenColor;->resotreBackgroundByDefault()V
    invoke-static {v0}, Lcom/android/settings_ex/CustomScreenColor;->access$300(Lcom/android/settings_ex/CustomScreenColor;)V

    goto :goto_0

    .line 680
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings_ex/CustomScreenColor;

    # invokes: Lcom/android/settings_ex/CustomScreenColor;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/android/settings_ex/CustomScreenColor;->access$400(Lcom/android/settings_ex/CustomScreenColor;)V

    goto :goto_0

    .line 683
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings_ex/CustomScreenColor;

    # invokes: Lcom/android/settings_ex/CustomScreenColor;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/android/settings_ex/CustomScreenColor;->access$400(Lcom/android/settings_ex/CustomScreenColor;)V

    goto :goto_0

    .line 686
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/android/settings_ex/CustomScreenColor;

    # invokes: Lcom/android/settings_ex/CustomScreenColor;->restoreDefaultHSCI()V
    invoke-static {v0}, Lcom/android/settings_ex/CustomScreenColor;->access$500(Lcom/android/settings_ex/CustomScreenColor;)V

    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f02f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
