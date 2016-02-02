.class public Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;,
        Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    }
.end annotation


# instance fields
.field private lastFragmentId:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method private completeSetCustomApp(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method private completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 288
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "appUri":Ljava/lang/String;
    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v4}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method private getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "labelOnly"    # Z

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 298
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 299
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 302
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 305
    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1    # "friendlyName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "activityName":Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private processShortcut(Landroid/content/Intent;II)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCodeApplication"    # I
    .param p3, "requestCodeShortcut"    # I

    .prologue
    .line 137
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f09004a

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "applicationName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f0900c3

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "application2name":Ljava/lang/String;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "shortcutName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 141
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v5, "mainIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v7, "pickIntent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    invoke-direct {p0, v7, p2}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 181
    .end local v5    # "mainIntent":Landroid/content/Intent;
    .end local v7    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 147
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 148
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 149
    .local v6, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/widget/ExpandableListView;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v9}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "appListView":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v0, p0, v6, v9}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;Ljava/util/List;Landroid/content/Context;)V

    .line 151
    .local v0, "appAdapter":Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 152
    new-instance v9, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$1;

    invoke-direct {v9, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$1;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)V

    invoke-virtual {v1, v9}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 167
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 170
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v11, 0x7f0900c5

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 172
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;

    invoke-direct {v10, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$2;-><init>(Lcom/android/settings/cyanogenmod/ShortcutPickHelper;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 179
    .end local v0    # "appAdapter":Lcom/android/settings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
    .end local v1    # "appListView":Landroid/widget/ExpandableListView;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startFragmentOrActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "pickIntent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 125
    iget v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 129
    .local v0, "cFrag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v0, 0x65

    const/16 v1, 0x66

    invoke-direct {p0, p3, v0, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V
    .locals 12
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "icons"    # [Landroid/content/Intent$ShortcutIconResource;
    .param p3, "fragmentId"    # I

    .prologue
    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v8, "shortcutNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 90
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 91
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f09004a

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x7f0900c3

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v7, "shortcutIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    if-eqz p2, :cond_1

    .line 100
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/Intent$ShortcutIconResource;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 101
    .local v6, "s":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "arr$":[Landroid/content/Intent$ShortcutIconResource;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "s":Landroid/content/Intent$ShortcutIconResource;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v10, 0x1080093

    invoke-static {v9, v10}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const/high16 v10, 0x7f020000

    invoke-static {v9, v10}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 114
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 115
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, "pickIntent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    const-string v9, "android.intent.extra.TITLE"

    iget-object v10, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->mParent:Landroid/app/Activity;

    const v11, 0x7f0900c4

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 119
    iput p3, p0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->lastFragmentId:I

    .line 120
    const/16 v9, 0x65

    invoke-direct {p0, v5, v9}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method
