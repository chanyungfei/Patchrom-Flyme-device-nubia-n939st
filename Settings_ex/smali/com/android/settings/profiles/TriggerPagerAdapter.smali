.class public Lcom/android/settings_ex/profiles/TriggerPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "TriggerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profiles/TriggerPagerAdapter$1;,
        Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;,
        Lcom/android/settings_ex/profiles/TriggerPagerAdapter$TriggerFragments;
    }
.end annotation


# instance fields
.field private final mFragmentActivity:Landroid/app/Activity;

.field private final mFragmentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 59
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    .line 45
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    .line 61
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 3
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;-><init>(Lcom/android/settings_ex/profiles/TriggerPagerAdapter$1;)V

    .line 74
    .local v0, "mHolder":Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;->mClassName:Ljava/lang/String;

    .line 75
    iput-object p2, v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    .line 76
    iput p3, v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;->mTitleResId:I

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 79
    .local v1, "mPosition":I
    iget-object v2, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 130
    .local v0, "mWeakFragment":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Fragment;>;"
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 133
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;

    .line 118
    .local v0, "mCurrentHolder":Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;
    iget-object v2, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 120
    .local v1, "mFragment":Landroid/app/Fragment;
    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;

    iget v0, v0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter$Holder;->mTitleResId:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 104
    .local v0, "mFragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 105
    .local v1, "mWeakFragment":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Fragment;>;"
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object v0
.end method
