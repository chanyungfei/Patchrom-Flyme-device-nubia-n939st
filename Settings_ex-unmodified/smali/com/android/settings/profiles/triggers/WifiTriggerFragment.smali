.class public Lcom/android/settings/profiles/triggers/WifiTriggerFragment;
.super Landroid/app/ListFragment;
.source "WifiTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;,
        Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;,
        Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

.field mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;",
            ">;"
        }
    .end annotation
.end field

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;)Landroid/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/triggers/WifiTriggerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/triggers/WifiTriggerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/triggers/WifiTriggerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    return-object v0
.end method

.method private initPreference(Lcom/android/settings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings/profiles/triggers/AbstractTriggerItem;
    .param p2, "state"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "icon"    # I

    .prologue
    .line 112
    const v2, 0x7f0b009d

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 114
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 115
    const v2, 0x7f0b009c

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/settings/profiles/triggers/AbstractTriggerItem;->setSummary(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settings/profiles/triggers/AbstractTriggerItem;->setTriggerState(I)V

    .line 120
    invoke-virtual {p1, p4}, Lcom/android/settings/profiles/triggers/AbstractTriggerItem;->setIcon(I)V

    .line 121
    return-void

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private reloadTriggerListItems()V
    .locals 12

    .prologue
    const v11, 0x7f020101

    const/4 v10, 0x0

    .line 195
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 197
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 199
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 201
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-direct {v0, v1}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 202
    .local v0, "accessPoint":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v5

    .line 203
    .local v5, "state":I
    invoke-direct {p0, v0, v5, v4, v11}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->initPreference(Lcom/android/settings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    .line 204
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v0    # "accessPoint":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "state":I
    :cond_0
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v8, v10}, Landroid/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 209
    .local v7, "triggers":Ljava/util/List;, "Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile$ProfileTrigger;

    .line 210
    .local v6, "trigger":Landroid/app/Profile$ProfileTrigger;
    new-instance v0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-virtual {v6}, Landroid/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v0    # "accessPoint":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    invoke-virtual {v6}, Landroid/app/Profile$ProfileTrigger;->getState()I

    move-result v8

    invoke-direct {p0, v0, v8, v4, v11}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->initPreference(Lcom/android/settings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    .line 213
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    .end local v0    # "accessPoint":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    .end local v6    # "trigger":Landroid/app/Profile$ProfileTrigger;
    .end local v7    # "triggers":Ljava/util/List;, "Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    if-eqz v8, :cond_2

    .line 217
    iget-object v8, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {v8}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_2
    return-void
.end method

.method private removeTrigger(Ljava/util/List;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;

    .line 179
    .local v1, "t":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    iget v2, v1, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    if-ne v2, p2, :cond_0

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    .end local v1    # "t":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    .line 190
    new-instance v0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;-><init>(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    .line 191
    iget-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    iput-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mProfile:Landroid/app/Profile;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no profile!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const v1, 0x7f0400c8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$1;-><init>(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    .local v0, "view":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 18
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "entries":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, "values":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v14, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v9

    if-ge v10, v1, :cond_0

    .line 137
    new-instance v13, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;-><init>(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;Lcom/android/settings/profiles/triggers/WifiTriggerFragment$1;)V

    .line 138
    .local v13, "toAdd":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    aget-object v1, v15, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    .line 139
    aget-object v1, v9, v10

    iput-object v1, v13, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;->name:Ljava/lang/String;

    .line 140
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 143
    .end local v13    # "toAdd":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    .line 144
    .local v11, "pref":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    invoke-virtual {v11}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "triggerName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "triggerId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 147
    .local v3, "triggerType":I
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    .line 148
    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    .line 150
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Ljava/lang/String;

    .line 151
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 152
    .local v5, "valueInts":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v3, v4}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v8

    .line 153
    .local v8, "currentTrigger":I
    const/4 v7, -0x1

    .line 154
    .local v7, "currentItem":I
    const/4 v10, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 155
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;

    .line 156
    .local v12, "t":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    iget-object v1, v12, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;->name:Ljava/lang/String;

    aput-object v1, v9, v10

    .line 157
    iget v1, v12, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    aput v1, v5, v10

    .line 158
    aget v1, v5, v10

    if-ne v1, v8, :cond_1

    .line 159
    move v7, v10

    .line 154
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 163
    .end local v12    # "t":Lcom/android/settings/profiles/triggers/WifiTriggerFragment$Trigger;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    new-instance v1, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment$2;-><init>(Lcom/android/settings/profiles/triggers/WifiTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 85
    return-void
.end method
