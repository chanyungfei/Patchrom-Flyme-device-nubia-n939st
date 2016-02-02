.class public Lcom/android/settings_ex/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateTextView:Landroid/widget/TextView;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings_ex/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$1;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 150
    new-instance v0, Lcom/android/settings_ex/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$2;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const v0, 0x7f0904c9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f0904cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const v0, 0x7f0904ca

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f0904cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    const v4, 0x7f0904ca

    const v3, 0x7f0904c9

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0f012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f0904c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public static isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0904ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 82
    .local v0, "isUicc":Z
    goto :goto_0
.end method

.method public static isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0904ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, "isUsb":Z
    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 112
    const v0, 0x7f090537

    .line 114
    .local v0, "explanationResId":I
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const v0, 0x7f0904cd

    .line 121
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const v0, 0x7f0904ce

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 138
    :cond_1
    if-nez p2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->finish()V

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 226
    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 227
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 233
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 246
    :cond_0
    return-void
.end method
