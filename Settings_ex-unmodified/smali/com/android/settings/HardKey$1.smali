.class Lcom/android/settings/HardKey$1;
.super Ljava/lang/Object;
.source "HardKey.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HardKey;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HardKey;


# direct methods
.method constructor <init>(Lcom/android/settings/HardKey;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, 0x1

    .line 71
    const v0, 0x7f0f00dd

    if-ne p2, v0, :cond_1

    .line 72
    const-string v0, "persist.sys.key.lock"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->mCase1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$000(Lcom/android/settings/HardKey;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->mCase2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$100(Lcom/android/settings/HardKey;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->mNotChangeKey:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$200(Lcom/android/settings/HardKey;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$300(Lcom/android/settings/HardKey;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wangjiaying select not change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const v0, 0x7f0f00de

    if-ne p2, v0, :cond_0

    .line 78
    const-string v0, "persist.sys.key.lock"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->mCase1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$000(Lcom/android/settings/HardKey;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->mCase2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$100(Lcom/android/settings/HardKey;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$300(Lcom/android/settings/HardKey;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wangjiaying select change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/settings/HardKey$1;->this$0:Lcom/android/settings/HardKey;

    # getter for: Lcom/android/settings/HardKey;->mChangeKey:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/HardKey;->access$400(Lcom/android/settings/HardKey;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
