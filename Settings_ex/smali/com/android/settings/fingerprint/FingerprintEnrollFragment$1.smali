.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;
.super Landroid/os/Handler;
.source "FingerprintEnrollFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f090b7d

    const/high16 v4, -0x1000000

    const/high16 v3, 0x41800000    # 16.0f

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 363
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 259
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->vibrateShort()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    goto :goto_0

    .line 139
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 145
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 152
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 159
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 166
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 173
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 180
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 187
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b7e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#18B4ED"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 195
    :sswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 203
    :sswitch_9
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 210
    :sswitch_a
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 217
    :sswitch_b
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 224
    :sswitch_c
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 231
    :sswitch_d
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 238
    :sswitch_e
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 245
    :sswitch_f
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 252
    :sswitch_10
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b80

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#18B4ED"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b85

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnContinue:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$800(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->isPasswordQualityNone(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnRename:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$900(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnContinue:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090b9e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnRename:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$900(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mBtnContinue:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090b92

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b82

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 292
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPIdentify:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b7c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b83

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 308
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPIdentify:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mIvFPMap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b84

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 322
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b81

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 329
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->showBadImageDLG()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V

    goto/16 :goto_0

    .line 333
    :pswitch_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->sendEmptyMessage(I)Z

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->enroll(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 341
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgressSuccess:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z
    invoke-static {v0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1402(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b86

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 348
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgressSuccess:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->isLeft:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1402(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvStatusTitle:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090b84

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTvProgress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_2
        0x15 -> :sswitch_3
        0x1c -> :sswitch_4
        0x23 -> :sswitch_5
        0x2a -> :sswitch_6
        0x31 -> :sswitch_7
        0x38 -> :sswitch_8
        0x3f -> :sswitch_9
        0x46 -> :sswitch_a
        0x4b -> :sswitch_b
        0x50 -> :sswitch_c
        0x55 -> :sswitch_d
        0x5a -> :sswitch_e
        0x5f -> :sswitch_f
        0x64 -> :sswitch_10
    .end sparse-switch
.end method
