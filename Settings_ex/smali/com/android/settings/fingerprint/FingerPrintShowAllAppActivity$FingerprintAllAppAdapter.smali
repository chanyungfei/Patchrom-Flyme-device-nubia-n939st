.class public Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "FingerPrintShowAllAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintAllAppAdapter"
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 227
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 228
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "appLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 256
    :goto_0
    return-object v2

    .line 248
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 256
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 253
    const-string v2, "VIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItem packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 262
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    :cond_0
    const/4 v2, 0x0

    .line 283
    :cond_1
    :goto_0
    return-object v2

    .line 272
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04006f

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 273
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 274
    .local v1, "icon":Landroid/widget/ImageView;
    const v3, 0x7f0f001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 276
    .local v0, "appLabel":Landroid/widget/CheckedTextView;
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$200(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$200(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
