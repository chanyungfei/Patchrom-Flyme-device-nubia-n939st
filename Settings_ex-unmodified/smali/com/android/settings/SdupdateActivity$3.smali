.class Lcom/android/settings/SdupdateActivity$3;
.super Ljava/lang/Object;
.source "SdupdateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SdupdateActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SdupdateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SdupdateActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/SdupdateActivity;->access$300(Lcom/android/settings/SdupdateActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v7, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    .line 236
    const-string v6, "wangjiaying"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying mVer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mUnifyVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 238
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v7, v7, Lcom/android/settings/SdupdateActivity;->mMaxlength:I

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mDatalength:I
    invoke-static {v8}, Lcom/android/settings/SdupdateActivity;->access$400(Lcom/android/settings/SdupdateActivity;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/settings/SdupdateActivity;->mLength:I

    .line 240
    const-string v6, "wangjiaying"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying mCurrentTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mOldVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mNewestVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mMeidNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mVerLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mVerLength:I
    invoke-static {v8}, Lcom/android/settings/SdupdateActivity;->access$500(Lcom/android/settings/SdupdateActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mVersionNum1:Ljava/lang/String;

    .line 266
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mVersionNum2:Ljava/lang/String;

    .line 267
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mVersionNum3:Ljava/lang/String;

    .line 268
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v8, v8, 0x6

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mVersionNum4:Ljava/lang/String;

    .line 269
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVersionNum1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVersionNum2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVersionNum3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVersionNum4:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mVersionNum:Ljava/lang/String;

    .line 270
    const-string v6, "Version"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying modify mVersionNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVersionNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mRealVersionNum1:Ljava/lang/String;

    .line 278
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mRealVersionNum2:Ljava/lang/String;

    .line 279
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mRealVersionNum3:Ljava/lang/String;

    .line 280
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v8, v8, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v8, v8, 0x6

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget v9, v9, Lcom/android/settings/SdupdateActivity;->mLength:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mRealVersionNum4:Ljava/lang/String;

    .line 281
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mRealVersionNum1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mRealVersionNum2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mRealVersionNum3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mRealVersionNum4:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mRealVersionNum:Ljava/lang/String;

    .line 282
    const-string v6, "mRealVersionNum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying mRealVersionNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mRealVersionNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->mVersionNum:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/SdupdateActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->mRealVersionNum:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/SdupdateActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mActionPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/settings/SdupdateActivity;->mUpdateDir:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/SdupdateActivity;->access$602(Lcom/android/settings/SdupdateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const v8, 0x7f090bd9

    invoke-virtual {v7, v8}, Lcom/android/settings/SdupdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const v8, 0x7f090bdc

    invoke-virtual {v7, v8}, Lcom/android/settings/SdupdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 293
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 294
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 295
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mUpdateDir:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/SdupdateActivity;->access$600(Lcom/android/settings/SdupdateActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/settings/SdupdateActivity;->mUpdateFile:Ljava/io/File;
    invoke-static {v6, v7}, Lcom/android/settings/SdupdateActivity;->access$702(Lcom/android/settings/SdupdateActivity;Ljava/io/File;)Ljava/io/File;

    .line 303
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v7}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    .line 306
    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v8, "phone"

    invoke-virtual {v6, v8}, Lcom/android/settings/SdupdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    # setter for: Lcom/android/settings/SdupdateActivity;->mTel:Landroid/telephony/TelephonyManager;
    invoke-static {v7, v6}, Lcom/android/settings/SdupdateActivity;->access$802(Lcom/android/settings/SdupdateActivity;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 307
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mTel:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/settings/SdupdateActivity;->access$800(Lcom/android/settings/SdupdateActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    .line 309
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v7, "ro.build.sw_internal_version"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    .line 310
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v9, v9, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    .line 312
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v7, "ro.build.display.id"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mProduction:Ljava/lang/String;

    .line 313
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/UpdateInfo.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, "mUpInfo":Ljava/io/File;
    const-string v6, "wangjiaying"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying 001 mCurrentTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mOldVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mNewestVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mMeidNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mProduction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mProduction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mProduction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 319
    .local v1, "mBuf":[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 320
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 321
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "mBuf":[B
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.UPDATE_SYSTEM"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v4, "rebootRecovery":Landroid/content/Intent;
    const-string v6, "mfiledir"

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mUpdateDir:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/SdupdateActivity;->access$600(Lcom/android/settings/SdupdateActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v6, "upinfo"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    invoke-virtual {v6, v4}, Lcom/android/settings/SdupdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    .end local v2    # "mUpInfo":Ljava/io/File;
    .end local v4    # "rebootRecovery":Landroid/content/Intent;
    .end local v5    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 322
    .restart local v2    # "mUpInfo":Ljava/io/File;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mUpInfo":Ljava/io/File;
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    invoke-virtual {v6}, Lcom/android/settings/SdupdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090bdd

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 338
    :cond_1
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mActionPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/settings/SdupdateActivity;->mUpdateDir:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/SdupdateActivity;->access$602(Lcom/android/settings/SdupdateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const v8, 0x7f090bd9

    invoke-virtual {v7, v8}, Lcom/android/settings/SdupdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const v8, 0x7f090bdc

    invoke-virtual {v7, v8}, Lcom/android/settings/SdupdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 343
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 344
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, v6, Lcom/android/settings/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 345
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mUpdateDir:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/SdupdateActivity;->access$600(Lcom/android/settings/SdupdateActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/settings/SdupdateActivity;->mUpdateFile:Ljava/io/File;
    invoke-static {v6, v7}, Lcom/android/settings/SdupdateActivity;->access$702(Lcom/android/settings/SdupdateActivity;Ljava/io/File;)Ljava/io/File;

    .line 346
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    new-instance v7, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v7}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    .line 349
    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v8, "phone"

    invoke-virtual {v6, v8}, Lcom/android/settings/SdupdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    # setter for: Lcom/android/settings/SdupdateActivity;->mTel:Landroid/telephony/TelephonyManager;
    invoke-static {v7, v6}, Lcom/android/settings/SdupdateActivity;->access$802(Lcom/android/settings/SdupdateActivity;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 350
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mTel:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/settings/SdupdateActivity;->access$800(Lcom/android/settings/SdupdateActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    .line 352
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v7, "ro.build.sw_internal_version"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    .line 353
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v7, ""

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    .line 355
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    const-string v7, "ro.build.display.id"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/SdupdateActivity;->mProduction:Ljava/lang/String;

    .line 356
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/UpdateInfo.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v2    # "mUpInfo":Ljava/io/File;
    const-string v6, "wangjiaying"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wangjiaying 001 mCurrentTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mOldVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mNewestVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mMeidNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mProduction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v8, v8, Lcom/android/settings/SdupdateActivity;->mProduction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v7, v7, Lcom/android/settings/SdupdateActivity;->mProduction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .restart local v5    # "str":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 362
    .restart local v1    # "mBuf":[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 363
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 364
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    .end local v1    # "mBuf":[B
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.UPDATE_SYSTEM"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .restart local v4    # "rebootRecovery":Landroid/content/Intent;
    const-string v6, "mfiledir"

    iget-object v7, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mUpdateDir:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/SdupdateActivity;->access$600(Lcom/android/settings/SdupdateActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v6, "upinfo"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v6, p0, Lcom/android/settings/SdupdateActivity$3;->this$0:Lcom/android/settings/SdupdateActivity;

    invoke-virtual {v6, v4}, Lcom/android/settings/SdupdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 365
    .end local v4    # "rebootRecovery":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 366
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method
